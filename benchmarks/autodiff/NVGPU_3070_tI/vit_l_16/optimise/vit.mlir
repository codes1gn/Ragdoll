module {
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> (tensor<1x1000xf32>) {
    %0 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1024x16x16x3xf32>}> : () -> tensor<1024x16x16x3xf32>
    %1 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1024xf32>}> : () -> tensor<1024xf32>
    %2 = "tosa.const"() <{value = dense<[0, 2, 3, 1]> : tensor<4xi64>}> : () -> tensor<4xi64>
    %3 = "tosa.const"() <{value = dense<[0, 3, 1, 2]> : tensor<4xi64>}> : () -> tensor<4xi64>
    %4 = "tosa.const"() <{value = dense<[0, 2, 1]> : tensor<3xi64>}> : () -> tensor<3xi64>
    %5 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x1x1024xf32>}> : () -> tensor<1x1x1024xf32>
    %6 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x197x1024xf32>}> : () -> tensor<1x197x1024xf32>
    %7 = "tosa.const"() <{value = dense<0.00130208337> : tensor<f32>}> : () -> tensor<f32>
    %8 = "tosa.const"() <{value = dense<9.99999997E-7> : tensor<f32>}> : () -> tensor<f32>
    %9 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x1024x1024xf32>}> : () -> tensor<1x1024x1024xf32>
    %10 = "tosa.const"() <{value = dense<[0, 2, 1, 3]> : tensor<4xi64>}> : () -> tensor<4xi64>
    %11 = "tosa.const"() <{value = dense<6.400000e+01> : tensor<f32>}> : () -> tensor<f32>
    %12 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x1024x4096xf32>}> : () -> tensor<1x1024x4096xf32>
    %13 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<4096xf32>}> : () -> tensor<4096xf32>
    %14 = "tosa.const"() <{value = dense<1.000000e+00> : tensor<1x197x4096xf32>}> : () -> tensor<1x197x4096xf32>
    %15 = "tosa.const"() <{value = dense<5.000000e-01> : tensor<1x197x4096xf32>}> : () -> tensor<1x197x4096xf32>
    %16 = "tosa.const"() <{value = dense<1.57079637> : tensor<1x197x4096xf32>}> : () -> tensor<1x197x4096xf32>
    %17 = "tosa.const"() <{value = dense<4.471500e-02> : tensor<1x197x4096xf32>}> : () -> tensor<1x197x4096xf32>
    %18 = "tosa.const"() <{value = dense<3.000000e+00> : tensor<1x197x4096xf32>}> : () -> tensor<1x197x4096xf32>
    %19 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x4096x1024xf32>}> : () -> tensor<1x4096x1024xf32>
    %20 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x1024x1000xf32>}> : () -> tensor<1x1024x1000xf32>
    %21 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1000xf32>}> : () -> tensor<1000xf32>
    %22 = tosa.transpose %arg0, %2 : (tensor<1x3x224x224xf32>, tensor<4xi64>) -> tensor<1x224x224x3xf32>
    %23 = tosa.conv2d %22, %0, %1 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 16, 16>} : (tensor<1x224x224x3xf32>, tensor<1024x16x16x3xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %24 = tosa.transpose %23, %3 : (tensor<1x14x14x1024xf32>, tensor<4xi64>) -> tensor<1x1024x14x14xf32>
    %25 = tosa.reshape %24 {new_shape = array<i64: 1, 1024, 196>} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x196xf32>
    %26 = tosa.transpose %25, %4 : (tensor<1x1024x196xf32>, tensor<3xi64>) -> tensor<1x196x1024xf32>
    %27 = tensor.empty() : tensor<1x197x1024xf32>
    %inserted_slice = tensor.insert_slice %5 into %27[0, 0, 0] [1, 1, 1024] [1, 1, 1] : tensor<1x1x1024xf32> into tensor<1x197x1024xf32>
    %inserted_slice_0 = tensor.insert_slice %26 into %inserted_slice[0, 1, 0] [1, 196, 1024] [1, 1, 1] : tensor<1x196x1024xf32> into tensor<1x197x1024xf32>
    %28 = tosa.add %inserted_slice_0, %6 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %29 = tosa.reduce_sum %28 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %30 = tosa.mul %29, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %31 = tosa.sub %28, %30 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %32 = tosa.mul %31, %31 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %33 = tosa.reduce_sum %32 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %34 = tosa.mul %33, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %35 = tosa.add %34, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %36 = tosa.rsqrt %35 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %37 = tosa.mul %31, %36 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %38 = tosa.mul %37, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %39 = tosa.add %38, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %40 = tosa.matmul %39, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %41 = tosa.add %40, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %42 = tosa.reshape %41 {new_shape = array<i64: 1, 197, 16, 64>} : (tensor<1x197x1024xf32>) -> tensor<1x197x16x64xf32>
    %43 = tosa.transpose %42, %10 : (tensor<1x197x16x64xf32>, tensor<4xi64>) -> tensor<1x16x197x64xf32>
    %44 = tosa.reshape %43 {new_shape = array<i64: 16, 197, 64>} : (tensor<1x16x197x64xf32>) -> tensor<16x197x64xf32>
    %45 = tosa.transpose %44, %4 : (tensor<16x197x64xf32>, tensor<3xi64>) -> tensor<16x64x197xf32>
    %46 = tosa.matmul %44, %45 : (tensor<16x197x64xf32>, tensor<16x64x197xf32>) -> tensor<16x197x197xf32>
    %47 = tosa.rsqrt %11 : (tensor<f32>) -> tensor<f32>
    %48 = tosa.mul %46, %47 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<f32>) -> tensor<16x197x197xf32>
    %49 = tosa.exp %48 : (tensor<16x197x197xf32>) -> tensor<16x197x197xf32>
    %50 = tosa.reduce_sum %49 {axis = 2 : i32} : (tensor<16x197x197xf32>) -> tensor<16x197x1xf32>
    %51 = tosa.reciprocal %50 : (tensor<16x197x1xf32>) -> tensor<16x197x1xf32>
    %52 = tosa.mul %49, %51 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<16x197x1xf32>) -> tensor<16x197x197xf32>
    %53 = tosa.matmul %52, %44 : (tensor<16x197x197xf32>, tensor<16x197x64xf32>) -> tensor<16x197x64xf32>
    %54 = tosa.reshape %53 {new_shape = array<i64: 1, 16, 197, 64>} : (tensor<16x197x64xf32>) -> tensor<1x16x197x64xf32>
    %55 = tosa.transpose %54, %10 : (tensor<1x16x197x64xf32>, tensor<4xi64>) -> tensor<1x197x16x64xf32>
    %56 = tosa.reshape %55 {new_shape = array<i64: 1, 197, 1024>} : (tensor<1x197x16x64xf32>) -> tensor<1x197x1024xf32>
    %57 = tosa.matmul %56, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %58 = tosa.add %57, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %59 = tosa.add %58, %28 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %60 = tosa.reduce_sum %59 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %61 = tosa.mul %60, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %62 = tosa.sub %59, %61 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %63 = tosa.mul %62, %62 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %64 = tosa.reduce_sum %63 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %65 = tosa.mul %64, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %66 = tosa.add %65, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %67 = tosa.rsqrt %66 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %68 = tosa.mul %62, %67 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %69 = tosa.mul %68, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %70 = tosa.add %69, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %71 = tosa.matmul %70, %12 : (tensor<1x197x1024xf32>, tensor<1x1024x4096xf32>) -> tensor<1x197x4096xf32>
    %72 = tosa.add %71, %13 : (tensor<1x197x4096xf32>, tensor<4096xf32>) -> tensor<1x197x4096xf32>
    %73 = tosa.mul %72, %15 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %74 = tosa.rsqrt %16 : (tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %75 = tosa.pow %72, %18 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %76 = tosa.mul %75, %17 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %77 = tosa.add %72, %76 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %78 = tosa.mul %74, %77 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %79 = tosa.tanh %78 : (tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %80 = tosa.add %79, %14 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %81 = tosa.mul %73, %80 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %82 = tosa.matmul %81, %19 : (tensor<1x197x4096xf32>, tensor<1x4096x1024xf32>) -> tensor<1x197x1024xf32>
    %83 = tosa.add %82, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %84 = tosa.add %59, %83 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %85 = tosa.reduce_sum %84 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %86 = tosa.mul %85, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %87 = tosa.sub %84, %86 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %88 = tosa.mul %87, %87 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %89 = tosa.reduce_sum %88 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %90 = tosa.mul %89, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %91 = tosa.add %90, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %92 = tosa.rsqrt %91 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %93 = tosa.mul %87, %92 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %94 = tosa.mul %93, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %95 = tosa.add %94, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %96 = tosa.matmul %95, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %97 = tosa.add %96, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %98 = tosa.reshape %97 {new_shape = array<i64: 1, 197, 16, 64>} : (tensor<1x197x1024xf32>) -> tensor<1x197x16x64xf32>
    %99 = tosa.transpose %98, %10 : (tensor<1x197x16x64xf32>, tensor<4xi64>) -> tensor<1x16x197x64xf32>
    %100 = tosa.reshape %99 {new_shape = array<i64: 16, 197, 64>} : (tensor<1x16x197x64xf32>) -> tensor<16x197x64xf32>
    %101 = tosa.transpose %100, %4 : (tensor<16x197x64xf32>, tensor<3xi64>) -> tensor<16x64x197xf32>
    %102 = tosa.matmul %100, %101 : (tensor<16x197x64xf32>, tensor<16x64x197xf32>) -> tensor<16x197x197xf32>
    %103 = tosa.mul %102, %47 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<f32>) -> tensor<16x197x197xf32>
    %104 = tosa.exp %103 : (tensor<16x197x197xf32>) -> tensor<16x197x197xf32>
    %105 = tosa.reduce_sum %104 {axis = 2 : i32} : (tensor<16x197x197xf32>) -> tensor<16x197x1xf32>
    %106 = tosa.reciprocal %105 : (tensor<16x197x1xf32>) -> tensor<16x197x1xf32>
    %107 = tosa.mul %104, %106 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<16x197x1xf32>) -> tensor<16x197x197xf32>
    %108 = tosa.matmul %107, %100 : (tensor<16x197x197xf32>, tensor<16x197x64xf32>) -> tensor<16x197x64xf32>
    %109 = tosa.reshape %108 {new_shape = array<i64: 1, 16, 197, 64>} : (tensor<16x197x64xf32>) -> tensor<1x16x197x64xf32>
    %110 = tosa.transpose %109, %10 : (tensor<1x16x197x64xf32>, tensor<4xi64>) -> tensor<1x197x16x64xf32>
    %111 = tosa.reshape %110 {new_shape = array<i64: 1, 197, 1024>} : (tensor<1x197x16x64xf32>) -> tensor<1x197x1024xf32>
    %112 = tosa.matmul %111, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %113 = tosa.add %112, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %114 = tosa.add %113, %84 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %115 = tosa.reduce_sum %114 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %116 = tosa.mul %115, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %117 = tosa.sub %114, %116 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %118 = tosa.mul %117, %117 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %119 = tosa.reduce_sum %118 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %120 = tosa.mul %119, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %121 = tosa.add %120, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %122 = tosa.rsqrt %121 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %123 = tosa.mul %117, %122 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %124 = tosa.mul %123, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %125 = tosa.add %124, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %126 = tosa.matmul %125, %12 : (tensor<1x197x1024xf32>, tensor<1x1024x4096xf32>) -> tensor<1x197x4096xf32>
    %127 = tosa.add %126, %13 : (tensor<1x197x4096xf32>, tensor<4096xf32>) -> tensor<1x197x4096xf32>
    %128 = tosa.mul %127, %15 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %129 = tosa.pow %127, %18 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %130 = tosa.mul %129, %17 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %131 = tosa.add %127, %130 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %132 = tosa.mul %74, %131 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %133 = tosa.tanh %132 : (tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %134 = tosa.add %133, %14 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %135 = tosa.mul %128, %134 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %136 = tosa.matmul %135, %19 : (tensor<1x197x4096xf32>, tensor<1x4096x1024xf32>) -> tensor<1x197x1024xf32>
    %137 = tosa.add %136, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %138 = tosa.add %114, %137 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %139 = tosa.reduce_sum %138 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %140 = tosa.mul %139, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %141 = tosa.sub %138, %140 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %142 = tosa.mul %141, %141 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %143 = tosa.reduce_sum %142 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %144 = tosa.mul %143, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %145 = tosa.add %144, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %146 = tosa.rsqrt %145 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %147 = tosa.mul %141, %146 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %148 = tosa.mul %147, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %149 = tosa.add %148, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %150 = tosa.matmul %149, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %151 = tosa.add %150, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %152 = tosa.reshape %151 {new_shape = array<i64: 1, 197, 16, 64>} : (tensor<1x197x1024xf32>) -> tensor<1x197x16x64xf32>
    %153 = tosa.transpose %152, %10 : (tensor<1x197x16x64xf32>, tensor<4xi64>) -> tensor<1x16x197x64xf32>
    %154 = tosa.reshape %153 {new_shape = array<i64: 16, 197, 64>} : (tensor<1x16x197x64xf32>) -> tensor<16x197x64xf32>
    %155 = tosa.transpose %154, %4 : (tensor<16x197x64xf32>, tensor<3xi64>) -> tensor<16x64x197xf32>
    %156 = tosa.matmul %154, %155 : (tensor<16x197x64xf32>, tensor<16x64x197xf32>) -> tensor<16x197x197xf32>
    %157 = tosa.mul %156, %47 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<f32>) -> tensor<16x197x197xf32>
    %158 = tosa.exp %157 : (tensor<16x197x197xf32>) -> tensor<16x197x197xf32>
    %159 = tosa.reduce_sum %158 {axis = 2 : i32} : (tensor<16x197x197xf32>) -> tensor<16x197x1xf32>
    %160 = tosa.reciprocal %159 : (tensor<16x197x1xf32>) -> tensor<16x197x1xf32>
    %161 = tosa.mul %158, %160 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<16x197x1xf32>) -> tensor<16x197x197xf32>
    %162 = tosa.matmul %161, %154 : (tensor<16x197x197xf32>, tensor<16x197x64xf32>) -> tensor<16x197x64xf32>
    %163 = tosa.reshape %162 {new_shape = array<i64: 1, 16, 197, 64>} : (tensor<16x197x64xf32>) -> tensor<1x16x197x64xf32>
    %164 = tosa.transpose %163, %10 : (tensor<1x16x197x64xf32>, tensor<4xi64>) -> tensor<1x197x16x64xf32>
    %165 = tosa.reshape %164 {new_shape = array<i64: 1, 197, 1024>} : (tensor<1x197x16x64xf32>) -> tensor<1x197x1024xf32>
    %166 = tosa.matmul %165, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %167 = tosa.add %166, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %168 = tosa.add %167, %138 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %169 = tosa.reduce_sum %168 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %170 = tosa.mul %169, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %171 = tosa.sub %168, %170 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %172 = tosa.mul %171, %171 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %173 = tosa.reduce_sum %172 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %174 = tosa.mul %173, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %175 = tosa.add %174, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %176 = tosa.rsqrt %175 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %177 = tosa.mul %171, %176 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %178 = tosa.mul %177, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %179 = tosa.add %178, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %180 = tosa.matmul %179, %12 : (tensor<1x197x1024xf32>, tensor<1x1024x4096xf32>) -> tensor<1x197x4096xf32>
    %181 = tosa.add %180, %13 : (tensor<1x197x4096xf32>, tensor<4096xf32>) -> tensor<1x197x4096xf32>
    %182 = tosa.mul %181, %15 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %183 = tosa.pow %181, %18 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %184 = tosa.mul %183, %17 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %185 = tosa.add %181, %184 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %186 = tosa.mul %74, %185 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %187 = tosa.tanh %186 : (tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %188 = tosa.add %187, %14 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %189 = tosa.mul %182, %188 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %190 = tosa.matmul %189, %19 : (tensor<1x197x4096xf32>, tensor<1x4096x1024xf32>) -> tensor<1x197x1024xf32>
    %191 = tosa.add %190, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %192 = tosa.add %168, %191 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %193 = tosa.reduce_sum %192 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %194 = tosa.mul %193, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %195 = tosa.sub %192, %194 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %196 = tosa.mul %195, %195 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %197 = tosa.reduce_sum %196 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %198 = tosa.mul %197, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %199 = tosa.add %198, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %200 = tosa.rsqrt %199 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %201 = tosa.mul %195, %200 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %202 = tosa.mul %201, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %203 = tosa.add %202, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %204 = tosa.matmul %203, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %205 = tosa.add %204, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %206 = tosa.reshape %205 {new_shape = array<i64: 1, 197, 16, 64>} : (tensor<1x197x1024xf32>) -> tensor<1x197x16x64xf32>
    %207 = tosa.transpose %206, %10 : (tensor<1x197x16x64xf32>, tensor<4xi64>) -> tensor<1x16x197x64xf32>
    %208 = tosa.reshape %207 {new_shape = array<i64: 16, 197, 64>} : (tensor<1x16x197x64xf32>) -> tensor<16x197x64xf32>
    %209 = tosa.transpose %208, %4 : (tensor<16x197x64xf32>, tensor<3xi64>) -> tensor<16x64x197xf32>
    %210 = tosa.matmul %208, %209 : (tensor<16x197x64xf32>, tensor<16x64x197xf32>) -> tensor<16x197x197xf32>
    %211 = tosa.mul %210, %47 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<f32>) -> tensor<16x197x197xf32>
    %212 = tosa.exp %211 : (tensor<16x197x197xf32>) -> tensor<16x197x197xf32>
    %213 = tosa.reduce_sum %212 {axis = 2 : i32} : (tensor<16x197x197xf32>) -> tensor<16x197x1xf32>
    %214 = tosa.reciprocal %213 : (tensor<16x197x1xf32>) -> tensor<16x197x1xf32>
    %215 = tosa.mul %212, %214 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<16x197x1xf32>) -> tensor<16x197x197xf32>
    %216 = tosa.matmul %215, %208 : (tensor<16x197x197xf32>, tensor<16x197x64xf32>) -> tensor<16x197x64xf32>
    %217 = tosa.reshape %216 {new_shape = array<i64: 1, 16, 197, 64>} : (tensor<16x197x64xf32>) -> tensor<1x16x197x64xf32>
    %218 = tosa.transpose %217, %10 : (tensor<1x16x197x64xf32>, tensor<4xi64>) -> tensor<1x197x16x64xf32>
    %219 = tosa.reshape %218 {new_shape = array<i64: 1, 197, 1024>} : (tensor<1x197x16x64xf32>) -> tensor<1x197x1024xf32>
    %220 = tosa.matmul %219, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %221 = tosa.add %220, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %222 = tosa.add %221, %192 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %223 = tosa.reduce_sum %222 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %224 = tosa.mul %223, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %225 = tosa.sub %222, %224 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %226 = tosa.mul %225, %225 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %227 = tosa.reduce_sum %226 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %228 = tosa.mul %227, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %229 = tosa.add %228, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %230 = tosa.rsqrt %229 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %231 = tosa.mul %225, %230 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %232 = tosa.mul %231, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %233 = tosa.add %232, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %234 = tosa.matmul %233, %12 : (tensor<1x197x1024xf32>, tensor<1x1024x4096xf32>) -> tensor<1x197x4096xf32>
    %235 = tosa.add %234, %13 : (tensor<1x197x4096xf32>, tensor<4096xf32>) -> tensor<1x197x4096xf32>
    %236 = tosa.mul %235, %15 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %237 = tosa.pow %235, %18 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %238 = tosa.mul %237, %17 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %239 = tosa.add %235, %238 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %240 = tosa.mul %74, %239 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %241 = tosa.tanh %240 : (tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %242 = tosa.add %241, %14 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %243 = tosa.mul %236, %242 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %244 = tosa.matmul %243, %19 : (tensor<1x197x4096xf32>, tensor<1x4096x1024xf32>) -> tensor<1x197x1024xf32>
    %245 = tosa.add %244, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %246 = tosa.add %222, %245 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %247 = tosa.reduce_sum %246 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %248 = tosa.mul %247, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %249 = tosa.sub %246, %248 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %250 = tosa.mul %249, %249 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %251 = tosa.reduce_sum %250 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %252 = tosa.mul %251, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %253 = tosa.add %252, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %254 = tosa.rsqrt %253 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %255 = tosa.mul %249, %254 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %256 = tosa.mul %255, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %257 = tosa.add %256, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %258 = tosa.matmul %257, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %259 = tosa.add %258, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %260 = tosa.reshape %259 {new_shape = array<i64: 1, 197, 16, 64>} : (tensor<1x197x1024xf32>) -> tensor<1x197x16x64xf32>
    %261 = tosa.transpose %260, %10 : (tensor<1x197x16x64xf32>, tensor<4xi64>) -> tensor<1x16x197x64xf32>
    %262 = tosa.reshape %261 {new_shape = array<i64: 16, 197, 64>} : (tensor<1x16x197x64xf32>) -> tensor<16x197x64xf32>
    %263 = tosa.transpose %262, %4 : (tensor<16x197x64xf32>, tensor<3xi64>) -> tensor<16x64x197xf32>
    %264 = tosa.matmul %262, %263 : (tensor<16x197x64xf32>, tensor<16x64x197xf32>) -> tensor<16x197x197xf32>
    %265 = tosa.mul %264, %47 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<f32>) -> tensor<16x197x197xf32>
    %266 = tosa.exp %265 : (tensor<16x197x197xf32>) -> tensor<16x197x197xf32>
    %267 = tosa.reduce_sum %266 {axis = 2 : i32} : (tensor<16x197x197xf32>) -> tensor<16x197x1xf32>
    %268 = tosa.reciprocal %267 : (tensor<16x197x1xf32>) -> tensor<16x197x1xf32>
    %269 = tosa.mul %266, %268 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<16x197x1xf32>) -> tensor<16x197x197xf32>
    %270 = tosa.matmul %269, %262 : (tensor<16x197x197xf32>, tensor<16x197x64xf32>) -> tensor<16x197x64xf32>
    %271 = tosa.reshape %270 {new_shape = array<i64: 1, 16, 197, 64>} : (tensor<16x197x64xf32>) -> tensor<1x16x197x64xf32>
    %272 = tosa.transpose %271, %10 : (tensor<1x16x197x64xf32>, tensor<4xi64>) -> tensor<1x197x16x64xf32>
    %273 = tosa.reshape %272 {new_shape = array<i64: 1, 197, 1024>} : (tensor<1x197x16x64xf32>) -> tensor<1x197x1024xf32>
    %274 = tosa.matmul %273, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %275 = tosa.add %274, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %276 = tosa.add %275, %246 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %277 = tosa.reduce_sum %276 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %278 = tosa.mul %277, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %279 = tosa.sub %276, %278 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %280 = tosa.mul %279, %279 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %281 = tosa.reduce_sum %280 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %282 = tosa.mul %281, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %283 = tosa.add %282, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %284 = tosa.rsqrt %283 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %285 = tosa.mul %279, %284 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %286 = tosa.mul %285, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %287 = tosa.add %286, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %288 = tosa.matmul %287, %12 : (tensor<1x197x1024xf32>, tensor<1x1024x4096xf32>) -> tensor<1x197x4096xf32>
    %289 = tosa.add %288, %13 : (tensor<1x197x4096xf32>, tensor<4096xf32>) -> tensor<1x197x4096xf32>
    %290 = tosa.mul %289, %15 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %291 = tosa.pow %289, %18 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %292 = tosa.mul %291, %17 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %293 = tosa.add %289, %292 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %294 = tosa.mul %74, %293 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %295 = tosa.tanh %294 : (tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %296 = tosa.add %295, %14 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %297 = tosa.mul %290, %296 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %298 = tosa.matmul %297, %19 : (tensor<1x197x4096xf32>, tensor<1x4096x1024xf32>) -> tensor<1x197x1024xf32>
    %299 = tosa.add %298, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %300 = tosa.add %276, %299 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %301 = tosa.reduce_sum %300 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %302 = tosa.mul %301, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %303 = tosa.sub %300, %302 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %304 = tosa.mul %303, %303 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %305 = tosa.reduce_sum %304 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %306 = tosa.mul %305, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %307 = tosa.add %306, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %308 = tosa.rsqrt %307 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %309 = tosa.mul %303, %308 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %310 = tosa.mul %309, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %311 = tosa.add %310, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %312 = tosa.matmul %311, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %313 = tosa.add %312, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %314 = tosa.reshape %313 {new_shape = array<i64: 1, 197, 16, 64>} : (tensor<1x197x1024xf32>) -> tensor<1x197x16x64xf32>
    %315 = tosa.transpose %314, %10 : (tensor<1x197x16x64xf32>, tensor<4xi64>) -> tensor<1x16x197x64xf32>
    %316 = tosa.reshape %315 {new_shape = array<i64: 16, 197, 64>} : (tensor<1x16x197x64xf32>) -> tensor<16x197x64xf32>
    %317 = tosa.transpose %316, %4 : (tensor<16x197x64xf32>, tensor<3xi64>) -> tensor<16x64x197xf32>
    %318 = tosa.matmul %316, %317 : (tensor<16x197x64xf32>, tensor<16x64x197xf32>) -> tensor<16x197x197xf32>
    %319 = tosa.mul %318, %47 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<f32>) -> tensor<16x197x197xf32>
    %320 = tosa.exp %319 : (tensor<16x197x197xf32>) -> tensor<16x197x197xf32>
    %321 = tosa.reduce_sum %320 {axis = 2 : i32} : (tensor<16x197x197xf32>) -> tensor<16x197x1xf32>
    %322 = tosa.reciprocal %321 : (tensor<16x197x1xf32>) -> tensor<16x197x1xf32>
    %323 = tosa.mul %320, %322 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<16x197x1xf32>) -> tensor<16x197x197xf32>
    %324 = tosa.matmul %323, %316 : (tensor<16x197x197xf32>, tensor<16x197x64xf32>) -> tensor<16x197x64xf32>
    %325 = tosa.reshape %324 {new_shape = array<i64: 1, 16, 197, 64>} : (tensor<16x197x64xf32>) -> tensor<1x16x197x64xf32>
    %326 = tosa.transpose %325, %10 : (tensor<1x16x197x64xf32>, tensor<4xi64>) -> tensor<1x197x16x64xf32>
    %327 = tosa.reshape %326 {new_shape = array<i64: 1, 197, 1024>} : (tensor<1x197x16x64xf32>) -> tensor<1x197x1024xf32>
    %328 = tosa.matmul %327, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %329 = tosa.add %328, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %330 = tosa.add %329, %300 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %331 = tosa.reduce_sum %330 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %332 = tosa.mul %331, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %333 = tosa.sub %330, %332 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %334 = tosa.mul %333, %333 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %335 = tosa.reduce_sum %334 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %336 = tosa.mul %335, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %337 = tosa.add %336, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %338 = tosa.rsqrt %337 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %339 = tosa.mul %333, %338 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %340 = tosa.mul %339, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %341 = tosa.add %340, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %342 = tosa.matmul %341, %12 : (tensor<1x197x1024xf32>, tensor<1x1024x4096xf32>) -> tensor<1x197x4096xf32>
    %343 = tosa.add %342, %13 : (tensor<1x197x4096xf32>, tensor<4096xf32>) -> tensor<1x197x4096xf32>
    %344 = tosa.mul %343, %15 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %345 = tosa.pow %343, %18 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %346 = tosa.mul %345, %17 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %347 = tosa.add %343, %346 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %348 = tosa.mul %74, %347 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %349 = tosa.tanh %348 : (tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %350 = tosa.add %349, %14 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %351 = tosa.mul %344, %350 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %352 = tosa.matmul %351, %19 : (tensor<1x197x4096xf32>, tensor<1x4096x1024xf32>) -> tensor<1x197x1024xf32>
    %353 = tosa.add %352, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %354 = tosa.add %330, %353 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %355 = tosa.reduce_sum %354 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %356 = tosa.mul %355, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %357 = tosa.sub %354, %356 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %358 = tosa.mul %357, %357 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %359 = tosa.reduce_sum %358 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %360 = tosa.mul %359, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %361 = tosa.add %360, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %362 = tosa.rsqrt %361 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %363 = tosa.mul %357, %362 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %364 = tosa.mul %363, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %365 = tosa.add %364, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %366 = tosa.matmul %365, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %367 = tosa.add %366, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %368 = tosa.reshape %367 {new_shape = array<i64: 1, 197, 16, 64>} : (tensor<1x197x1024xf32>) -> tensor<1x197x16x64xf32>
    %369 = tosa.transpose %368, %10 : (tensor<1x197x16x64xf32>, tensor<4xi64>) -> tensor<1x16x197x64xf32>
    %370 = tosa.reshape %369 {new_shape = array<i64: 16, 197, 64>} : (tensor<1x16x197x64xf32>) -> tensor<16x197x64xf32>
    %371 = tosa.transpose %370, %4 : (tensor<16x197x64xf32>, tensor<3xi64>) -> tensor<16x64x197xf32>
    %372 = tosa.matmul %370, %371 : (tensor<16x197x64xf32>, tensor<16x64x197xf32>) -> tensor<16x197x197xf32>
    %373 = tosa.mul %372, %47 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<f32>) -> tensor<16x197x197xf32>
    %374 = tosa.exp %373 : (tensor<16x197x197xf32>) -> tensor<16x197x197xf32>
    %375 = tosa.reduce_sum %374 {axis = 2 : i32} : (tensor<16x197x197xf32>) -> tensor<16x197x1xf32>
    %376 = tosa.reciprocal %375 : (tensor<16x197x1xf32>) -> tensor<16x197x1xf32>
    %377 = tosa.mul %374, %376 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<16x197x1xf32>) -> tensor<16x197x197xf32>
    %378 = tosa.matmul %377, %370 : (tensor<16x197x197xf32>, tensor<16x197x64xf32>) -> tensor<16x197x64xf32>
    %379 = tosa.reshape %378 {new_shape = array<i64: 1, 16, 197, 64>} : (tensor<16x197x64xf32>) -> tensor<1x16x197x64xf32>
    %380 = tosa.transpose %379, %10 : (tensor<1x16x197x64xf32>, tensor<4xi64>) -> tensor<1x197x16x64xf32>
    %381 = tosa.reshape %380 {new_shape = array<i64: 1, 197, 1024>} : (tensor<1x197x16x64xf32>) -> tensor<1x197x1024xf32>
    %382 = tosa.matmul %381, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %383 = tosa.add %382, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %384 = tosa.add %383, %354 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %385 = tosa.reduce_sum %384 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %386 = tosa.mul %385, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %387 = tosa.sub %384, %386 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %388 = tosa.mul %387, %387 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %389 = tosa.reduce_sum %388 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %390 = tosa.mul %389, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %391 = tosa.add %390, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %392 = tosa.rsqrt %391 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %393 = tosa.mul %387, %392 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %394 = tosa.mul %393, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %395 = tosa.add %394, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %396 = tosa.matmul %395, %12 : (tensor<1x197x1024xf32>, tensor<1x1024x4096xf32>) -> tensor<1x197x4096xf32>
    %397 = tosa.add %396, %13 : (tensor<1x197x4096xf32>, tensor<4096xf32>) -> tensor<1x197x4096xf32>
    %398 = tosa.mul %397, %15 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %399 = tosa.pow %397, %18 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %400 = tosa.mul %399, %17 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %401 = tosa.add %397, %400 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %402 = tosa.mul %74, %401 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %403 = tosa.tanh %402 : (tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %404 = tosa.add %403, %14 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %405 = tosa.mul %398, %404 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %406 = tosa.matmul %405, %19 : (tensor<1x197x4096xf32>, tensor<1x4096x1024xf32>) -> tensor<1x197x1024xf32>
    %407 = tosa.add %406, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %408 = tosa.add %384, %407 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %409 = tosa.reduce_sum %408 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %410 = tosa.mul %409, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %411 = tosa.sub %408, %410 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %412 = tosa.mul %411, %411 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %413 = tosa.reduce_sum %412 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %414 = tosa.mul %413, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %415 = tosa.add %414, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %416 = tosa.rsqrt %415 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %417 = tosa.mul %411, %416 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %418 = tosa.mul %417, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %419 = tosa.add %418, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %420 = tosa.matmul %419, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %421 = tosa.add %420, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %422 = tosa.reshape %421 {new_shape = array<i64: 1, 197, 16, 64>} : (tensor<1x197x1024xf32>) -> tensor<1x197x16x64xf32>
    %423 = tosa.transpose %422, %10 : (tensor<1x197x16x64xf32>, tensor<4xi64>) -> tensor<1x16x197x64xf32>
    %424 = tosa.reshape %423 {new_shape = array<i64: 16, 197, 64>} : (tensor<1x16x197x64xf32>) -> tensor<16x197x64xf32>
    %425 = tosa.transpose %424, %4 : (tensor<16x197x64xf32>, tensor<3xi64>) -> tensor<16x64x197xf32>
    %426 = tosa.matmul %424, %425 : (tensor<16x197x64xf32>, tensor<16x64x197xf32>) -> tensor<16x197x197xf32>
    %427 = tosa.mul %426, %47 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<f32>) -> tensor<16x197x197xf32>
    %428 = tosa.exp %427 : (tensor<16x197x197xf32>) -> tensor<16x197x197xf32>
    %429 = tosa.reduce_sum %428 {axis = 2 : i32} : (tensor<16x197x197xf32>) -> tensor<16x197x1xf32>
    %430 = tosa.reciprocal %429 : (tensor<16x197x1xf32>) -> tensor<16x197x1xf32>
    %431 = tosa.mul %428, %430 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<16x197x1xf32>) -> tensor<16x197x197xf32>
    %432 = tosa.matmul %431, %424 : (tensor<16x197x197xf32>, tensor<16x197x64xf32>) -> tensor<16x197x64xf32>
    %433 = tosa.reshape %432 {new_shape = array<i64: 1, 16, 197, 64>} : (tensor<16x197x64xf32>) -> tensor<1x16x197x64xf32>
    %434 = tosa.transpose %433, %10 : (tensor<1x16x197x64xf32>, tensor<4xi64>) -> tensor<1x197x16x64xf32>
    %435 = tosa.reshape %434 {new_shape = array<i64: 1, 197, 1024>} : (tensor<1x197x16x64xf32>) -> tensor<1x197x1024xf32>
    %436 = tosa.matmul %435, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %437 = tosa.add %436, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %438 = tosa.add %437, %408 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %439 = tosa.reduce_sum %438 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %440 = tosa.mul %439, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %441 = tosa.sub %438, %440 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %442 = tosa.mul %441, %441 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %443 = tosa.reduce_sum %442 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %444 = tosa.mul %443, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %445 = tosa.add %444, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %446 = tosa.rsqrt %445 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %447 = tosa.mul %441, %446 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %448 = tosa.mul %447, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %449 = tosa.add %448, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %450 = tosa.matmul %449, %12 : (tensor<1x197x1024xf32>, tensor<1x1024x4096xf32>) -> tensor<1x197x4096xf32>
    %451 = tosa.add %450, %13 : (tensor<1x197x4096xf32>, tensor<4096xf32>) -> tensor<1x197x4096xf32>
    %452 = tosa.mul %451, %15 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %453 = tosa.pow %451, %18 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %454 = tosa.mul %453, %17 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %455 = tosa.add %451, %454 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %456 = tosa.mul %74, %455 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %457 = tosa.tanh %456 : (tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %458 = tosa.add %457, %14 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %459 = tosa.mul %452, %458 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %460 = tosa.matmul %459, %19 : (tensor<1x197x4096xf32>, tensor<1x4096x1024xf32>) -> tensor<1x197x1024xf32>
    %461 = tosa.add %460, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %462 = tosa.add %438, %461 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %463 = tosa.reduce_sum %462 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %464 = tosa.mul %463, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %465 = tosa.sub %462, %464 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %466 = tosa.mul %465, %465 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %467 = tosa.reduce_sum %466 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %468 = tosa.mul %467, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %469 = tosa.add %468, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %470 = tosa.rsqrt %469 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %471 = tosa.mul %465, %470 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %472 = tosa.mul %471, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %473 = tosa.add %472, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %474 = tosa.matmul %473, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %475 = tosa.add %474, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %476 = tosa.reshape %475 {new_shape = array<i64: 1, 197, 16, 64>} : (tensor<1x197x1024xf32>) -> tensor<1x197x16x64xf32>
    %477 = tosa.transpose %476, %10 : (tensor<1x197x16x64xf32>, tensor<4xi64>) -> tensor<1x16x197x64xf32>
    %478 = tosa.reshape %477 {new_shape = array<i64: 16, 197, 64>} : (tensor<1x16x197x64xf32>) -> tensor<16x197x64xf32>
    %479 = tosa.transpose %478, %4 : (tensor<16x197x64xf32>, tensor<3xi64>) -> tensor<16x64x197xf32>
    %480 = tosa.matmul %478, %479 : (tensor<16x197x64xf32>, tensor<16x64x197xf32>) -> tensor<16x197x197xf32>
    %481 = tosa.mul %480, %47 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<f32>) -> tensor<16x197x197xf32>
    %482 = tosa.exp %481 : (tensor<16x197x197xf32>) -> tensor<16x197x197xf32>
    %483 = tosa.reduce_sum %482 {axis = 2 : i32} : (tensor<16x197x197xf32>) -> tensor<16x197x1xf32>
    %484 = tosa.reciprocal %483 : (tensor<16x197x1xf32>) -> tensor<16x197x1xf32>
    %485 = tosa.mul %482, %484 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<16x197x1xf32>) -> tensor<16x197x197xf32>
    %486 = tosa.matmul %485, %478 : (tensor<16x197x197xf32>, tensor<16x197x64xf32>) -> tensor<16x197x64xf32>
    %487 = tosa.reshape %486 {new_shape = array<i64: 1, 16, 197, 64>} : (tensor<16x197x64xf32>) -> tensor<1x16x197x64xf32>
    %488 = tosa.transpose %487, %10 : (tensor<1x16x197x64xf32>, tensor<4xi64>) -> tensor<1x197x16x64xf32>
    %489 = tosa.reshape %488 {new_shape = array<i64: 1, 197, 1024>} : (tensor<1x197x16x64xf32>) -> tensor<1x197x1024xf32>
    %490 = tosa.matmul %489, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %491 = tosa.add %490, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %492 = tosa.add %491, %462 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %493 = tosa.reduce_sum %492 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %494 = tosa.mul %493, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %495 = tosa.sub %492, %494 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %496 = tosa.mul %495, %495 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %497 = tosa.reduce_sum %496 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %498 = tosa.mul %497, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %499 = tosa.add %498, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %500 = tosa.rsqrt %499 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %501 = tosa.mul %495, %500 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %502 = tosa.mul %501, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %503 = tosa.add %502, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %504 = tosa.matmul %503, %12 : (tensor<1x197x1024xf32>, tensor<1x1024x4096xf32>) -> tensor<1x197x4096xf32>
    %505 = tosa.add %504, %13 : (tensor<1x197x4096xf32>, tensor<4096xf32>) -> tensor<1x197x4096xf32>
    %506 = tosa.mul %505, %15 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %507 = tosa.pow %505, %18 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %508 = tosa.mul %507, %17 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %509 = tosa.add %505, %508 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %510 = tosa.mul %74, %509 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %511 = tosa.tanh %510 : (tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %512 = tosa.add %511, %14 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %513 = tosa.mul %506, %512 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %514 = tosa.matmul %513, %19 : (tensor<1x197x4096xf32>, tensor<1x4096x1024xf32>) -> tensor<1x197x1024xf32>
    %515 = tosa.add %514, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %516 = tosa.add %492, %515 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %517 = tosa.reduce_sum %516 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %518 = tosa.mul %517, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %519 = tosa.sub %516, %518 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %520 = tosa.mul %519, %519 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %521 = tosa.reduce_sum %520 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %522 = tosa.mul %521, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %523 = tosa.add %522, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %524 = tosa.rsqrt %523 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %525 = tosa.mul %519, %524 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %526 = tosa.mul %525, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %527 = tosa.add %526, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %528 = tosa.matmul %527, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %529 = tosa.add %528, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %530 = tosa.reshape %529 {new_shape = array<i64: 1, 197, 16, 64>} : (tensor<1x197x1024xf32>) -> tensor<1x197x16x64xf32>
    %531 = tosa.transpose %530, %10 : (tensor<1x197x16x64xf32>, tensor<4xi64>) -> tensor<1x16x197x64xf32>
    %532 = tosa.reshape %531 {new_shape = array<i64: 16, 197, 64>} : (tensor<1x16x197x64xf32>) -> tensor<16x197x64xf32>
    %533 = tosa.transpose %532, %4 : (tensor<16x197x64xf32>, tensor<3xi64>) -> tensor<16x64x197xf32>
    %534 = tosa.matmul %532, %533 : (tensor<16x197x64xf32>, tensor<16x64x197xf32>) -> tensor<16x197x197xf32>
    %535 = tosa.mul %534, %47 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<f32>) -> tensor<16x197x197xf32>
    %536 = tosa.exp %535 : (tensor<16x197x197xf32>) -> tensor<16x197x197xf32>
    %537 = tosa.reduce_sum %536 {axis = 2 : i32} : (tensor<16x197x197xf32>) -> tensor<16x197x1xf32>
    %538 = tosa.reciprocal %537 : (tensor<16x197x1xf32>) -> tensor<16x197x1xf32>
    %539 = tosa.mul %536, %538 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<16x197x1xf32>) -> tensor<16x197x197xf32>
    %540 = tosa.matmul %539, %532 : (tensor<16x197x197xf32>, tensor<16x197x64xf32>) -> tensor<16x197x64xf32>
    %541 = tosa.reshape %540 {new_shape = array<i64: 1, 16, 197, 64>} : (tensor<16x197x64xf32>) -> tensor<1x16x197x64xf32>
    %542 = tosa.transpose %541, %10 : (tensor<1x16x197x64xf32>, tensor<4xi64>) -> tensor<1x197x16x64xf32>
    %543 = tosa.reshape %542 {new_shape = array<i64: 1, 197, 1024>} : (tensor<1x197x16x64xf32>) -> tensor<1x197x1024xf32>
    %544 = tosa.matmul %543, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %545 = tosa.add %544, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %546 = tosa.add %545, %516 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %547 = tosa.reduce_sum %546 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %548 = tosa.mul %547, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %549 = tosa.sub %546, %548 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %550 = tosa.mul %549, %549 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %551 = tosa.reduce_sum %550 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %552 = tosa.mul %551, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %553 = tosa.add %552, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %554 = tosa.rsqrt %553 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %555 = tosa.mul %549, %554 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %556 = tosa.mul %555, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %557 = tosa.add %556, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %558 = tosa.matmul %557, %12 : (tensor<1x197x1024xf32>, tensor<1x1024x4096xf32>) -> tensor<1x197x4096xf32>
    %559 = tosa.add %558, %13 : (tensor<1x197x4096xf32>, tensor<4096xf32>) -> tensor<1x197x4096xf32>
    %560 = tosa.mul %559, %15 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %561 = tosa.pow %559, %18 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %562 = tosa.mul %561, %17 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %563 = tosa.add %559, %562 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %564 = tosa.mul %74, %563 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %565 = tosa.tanh %564 : (tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %566 = tosa.add %565, %14 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %567 = tosa.mul %560, %566 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %568 = tosa.matmul %567, %19 : (tensor<1x197x4096xf32>, tensor<1x4096x1024xf32>) -> tensor<1x197x1024xf32>
    %569 = tosa.add %568, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %570 = tosa.add %546, %569 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %571 = tosa.reduce_sum %570 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %572 = tosa.mul %571, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %573 = tosa.sub %570, %572 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %574 = tosa.mul %573, %573 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %575 = tosa.reduce_sum %574 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %576 = tosa.mul %575, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %577 = tosa.add %576, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %578 = tosa.rsqrt %577 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %579 = tosa.mul %573, %578 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %580 = tosa.mul %579, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %581 = tosa.add %580, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %582 = tosa.matmul %581, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %583 = tosa.add %582, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %584 = tosa.reshape %583 {new_shape = array<i64: 1, 197, 16, 64>} : (tensor<1x197x1024xf32>) -> tensor<1x197x16x64xf32>
    %585 = tosa.transpose %584, %10 : (tensor<1x197x16x64xf32>, tensor<4xi64>) -> tensor<1x16x197x64xf32>
    %586 = tosa.reshape %585 {new_shape = array<i64: 16, 197, 64>} : (tensor<1x16x197x64xf32>) -> tensor<16x197x64xf32>
    %587 = tosa.transpose %586, %4 : (tensor<16x197x64xf32>, tensor<3xi64>) -> tensor<16x64x197xf32>
    %588 = tosa.matmul %586, %587 : (tensor<16x197x64xf32>, tensor<16x64x197xf32>) -> tensor<16x197x197xf32>
    %589 = tosa.mul %588, %47 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<f32>) -> tensor<16x197x197xf32>
    %590 = tosa.exp %589 : (tensor<16x197x197xf32>) -> tensor<16x197x197xf32>
    %591 = tosa.reduce_sum %590 {axis = 2 : i32} : (tensor<16x197x197xf32>) -> tensor<16x197x1xf32>
    %592 = tosa.reciprocal %591 : (tensor<16x197x1xf32>) -> tensor<16x197x1xf32>
    %593 = tosa.mul %590, %592 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<16x197x1xf32>) -> tensor<16x197x197xf32>
    %594 = tosa.matmul %593, %586 : (tensor<16x197x197xf32>, tensor<16x197x64xf32>) -> tensor<16x197x64xf32>
    %595 = tosa.reshape %594 {new_shape = array<i64: 1, 16, 197, 64>} : (tensor<16x197x64xf32>) -> tensor<1x16x197x64xf32>
    %596 = tosa.transpose %595, %10 : (tensor<1x16x197x64xf32>, tensor<4xi64>) -> tensor<1x197x16x64xf32>
    %597 = tosa.reshape %596 {new_shape = array<i64: 1, 197, 1024>} : (tensor<1x197x16x64xf32>) -> tensor<1x197x1024xf32>
    %598 = tosa.matmul %597, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %599 = tosa.add %598, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %600 = tosa.add %599, %570 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %601 = tosa.reduce_sum %600 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %602 = tosa.mul %601, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %603 = tosa.sub %600, %602 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %604 = tosa.mul %603, %603 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %605 = tosa.reduce_sum %604 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %606 = tosa.mul %605, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %607 = tosa.add %606, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %608 = tosa.rsqrt %607 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %609 = tosa.mul %603, %608 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %610 = tosa.mul %609, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %611 = tosa.add %610, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %612 = tosa.matmul %611, %12 : (tensor<1x197x1024xf32>, tensor<1x1024x4096xf32>) -> tensor<1x197x4096xf32>
    %613 = tosa.add %612, %13 : (tensor<1x197x4096xf32>, tensor<4096xf32>) -> tensor<1x197x4096xf32>
    %614 = tosa.mul %613, %15 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %615 = tosa.pow %613, %18 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %616 = tosa.mul %615, %17 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %617 = tosa.add %613, %616 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %618 = tosa.mul %74, %617 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %619 = tosa.tanh %618 : (tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %620 = tosa.add %619, %14 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %621 = tosa.mul %614, %620 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %622 = tosa.matmul %621, %19 : (tensor<1x197x4096xf32>, tensor<1x4096x1024xf32>) -> tensor<1x197x1024xf32>
    %623 = tosa.add %622, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %624 = tosa.add %600, %623 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %625 = tosa.reduce_sum %624 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %626 = tosa.mul %625, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %627 = tosa.sub %624, %626 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %628 = tosa.mul %627, %627 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %629 = tosa.reduce_sum %628 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %630 = tosa.mul %629, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %631 = tosa.add %630, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %632 = tosa.rsqrt %631 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %633 = tosa.mul %627, %632 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %634 = tosa.mul %633, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %635 = tosa.add %634, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %636 = tosa.matmul %635, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %637 = tosa.add %636, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %1584 = tosa.reshape %637 {new_shape = array<i64: 1, 197, 16, 64>} : (tensor<1x197x1024xf32>) -> tensor<1x197x16x64xf32>
    %1585 = tosa.transpose %1584, %10 : (tensor<1x197x16x64xf32>, tensor<4xi64>) -> tensor<1x16x197x64xf32>
    %1586 = tosa.reshape %1585 {new_shape = array<i64: 16, 197, 64>} : (tensor<1x16x197x64xf32>) -> tensor<16x197x64xf32>
    %1587 = tosa.transpose %1586, %4 : (tensor<16x197x64xf32>, tensor<3xi64>) -> tensor<16x64x197xf32>
    %1588 = tosa.matmul %1586, %1587 : (tensor<16x197x64xf32>, tensor<16x64x197xf32>) -> tensor<16x197x197xf32>
    %1589 = tosa.mul %1588, %47 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<f32>) -> tensor<16x197x197xf32>
    %1590 = tosa.exp %1589 : (tensor<16x197x197xf32>) -> tensor<16x197x197xf32>
    %1591 = tosa.reduce_sum %1590 {axis = 2 : i32} : (tensor<16x197x197xf32>) -> tensor<16x197x1xf32>
    %1592 = tosa.reciprocal %1591 : (tensor<16x197x1xf32>) -> tensor<16x197x1xf32>
    %1593 = tosa.mul %1590, %1592 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<16x197x1xf32>) -> tensor<16x197x197xf32>
    %1594 = tosa.matmul %1593, %1586 : (tensor<16x197x197xf32>, tensor<16x197x64xf32>) -> tensor<16x197x64xf32>
    %1595 = tosa.reshape %1594 {new_shape = array<i64: 1, 16, 197, 64>} : (tensor<16x197x64xf32>) -> tensor<1x16x197x64xf32>
    %1596 = tosa.transpose %1595, %10 : (tensor<1x16x197x64xf32>, tensor<4xi64>) -> tensor<1x197x16x64xf32>
    %1597 = tosa.reshape %1596 {new_shape = array<i64: 1, 197, 1024>} : (tensor<1x197x16x64xf32>) -> tensor<1x197x1024xf32>
    %1598 = tosa.matmul %1597, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %1599 = tosa.add %1598, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %1600 = tosa.add %1599, %570 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %1601 = tosa.reduce_sum %1600 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %1602 = tosa.mul %1601, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1603 = tosa.sub %1600, %1602 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %1604 = tosa.mul %1603, %1603 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %1605 = tosa.reduce_sum %1604 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %1606 = tosa.mul %1605, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1607 = tosa.add %1606, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1608 = tosa.rsqrt %1607 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %1609 = tosa.mul %1603, %1608 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %1610 = tosa.mul %1609, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %1611 = tosa.add %1610, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %1612 = tosa.matmul %1611, %12 : (tensor<1x197x1024xf32>, tensor<1x1024x4096xf32>) -> tensor<1x197x4096xf32>
    %1613 = tosa.add %1612, %13 : (tensor<1x197x4096xf32>, tensor<4096xf32>) -> tensor<1x197x4096xf32>
    %1614 = tosa.mul %1613, %15 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %1615 = tosa.pow %1613, %18 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %1616 = tosa.mul %1615, %17 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %1617 = tosa.add %1613, %1616 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %1618 = tosa.mul %74, %1617 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %1619 = tosa.tanh %1618 : (tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %1620 = tosa.add %1619, %14 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %1621 = tosa.mul %1614, %1620 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %1622 = tosa.matmul %1621, %19 : (tensor<1x197x4096xf32>, tensor<1x4096x1024xf32>) -> tensor<1x197x1024xf32>
    %1623 = tosa.add %1622, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %1624 = tosa.add %1600, %1623 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %1625 = tosa.reduce_sum %1624 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %1626 = tosa.mul %1625, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1627 = tosa.sub %1624, %1626 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %1628 = tosa.mul %1627, %1627 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %1629 = tosa.reduce_sum %1628 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %1630 = tosa.mul %1629, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1631 = tosa.add %1630, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1632 = tosa.rsqrt %1631 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %1633 = tosa.mul %1627, %1632 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %1634 = tosa.mul %1633, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %1635 = tosa.add %1634, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %1636 = tosa.matmul %1635, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %1637 = tosa.add %1636, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2042 = tosa.reshape %1637 {new_shape = array<i64: 1, 197, 16, 64>} : (tensor<1x197x1024xf32>) -> tensor<1x197x16x64xf32>
    %2043 = tosa.transpose %2042, %10 : (tensor<1x197x16x64xf32>, tensor<4xi64>) -> tensor<1x16x197x64xf32>
    %2044 = tosa.reshape %2043 {new_shape = array<i64: 16, 197, 64>} : (tensor<1x16x197x64xf32>) -> tensor<16x197x64xf32>
    %2045 = tosa.transpose %2044, %4 : (tensor<16x197x64xf32>, tensor<3xi64>) -> tensor<16x64x197xf32>
    %2046 = tosa.matmul %2044, %2045 : (tensor<16x197x64xf32>, tensor<16x64x197xf32>) -> tensor<16x197x197xf32>
    %2047 = tosa.rsqrt %11 : (tensor<f32>) -> tensor<f32>
    %2048 = tosa.mul %2046, %2047 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<f32>) -> tensor<16x197x197xf32>
    %2049 = tosa.exp %2048 : (tensor<16x197x197xf32>) -> tensor<16x197x197xf32>
    %2050 = tosa.reduce_sum %2049 {axis = 2 : i32} : (tensor<16x197x197xf32>) -> tensor<16x197x1xf32>
    %2051 = tosa.reciprocal %2050 : (tensor<16x197x1xf32>) -> tensor<16x197x1xf32>
    %2052 = tosa.mul %2049, %2051 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<16x197x1xf32>) -> tensor<16x197x197xf32>
    %2053 = tosa.matmul %2052, %2044 : (tensor<16x197x197xf32>, tensor<16x197x64xf32>) -> tensor<16x197x64xf32>
    %2054 = tosa.reshape %2053 {new_shape = array<i64: 1, 16, 197, 64>} : (tensor<16x197x64xf32>) -> tensor<1x16x197x64xf32>
    %2055 = tosa.transpose %2054, %10 : (tensor<1x16x197x64xf32>, tensor<4xi64>) -> tensor<1x197x16x64xf32>
    %2056 = tosa.reshape %2055 {new_shape = array<i64: 1, 197, 1024>} : (tensor<1x197x16x64xf32>) -> tensor<1x197x1024xf32>
    %2057 = tosa.matmul %2056, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %2058 = tosa.add %2057, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2059 = tosa.add %2058, %28 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2060 = tosa.reduce_sum %2059 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2061 = tosa.mul %2060, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2062 = tosa.sub %2059, %2061 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2063 = tosa.mul %2062, %2062 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2064 = tosa.reduce_sum %2063 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2065 = tosa.mul %2064, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2066 = tosa.add %2065, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2067 = tosa.rsqrt %2066 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %2068 = tosa.mul %2062, %2067 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2069 = tosa.mul %2068, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2070 = tosa.add %2069, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2071 = tosa.matmul %2070, %12 : (tensor<1x197x1024xf32>, tensor<1x1024x4096xf32>) -> tensor<1x197x4096xf32>
    %2072 = tosa.add %2071, %13 : (tensor<1x197x4096xf32>, tensor<4096xf32>) -> tensor<1x197x4096xf32>
    %2073 = tosa.mul %2072, %15 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2074 = tosa.rsqrt %16 : (tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2075 = tosa.pow %2072, %18 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2076 = tosa.mul %2075, %17 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2077 = tosa.add %2072, %2076 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2078 = tosa.mul %2074, %2077 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2079 = tosa.tanh %2078 : (tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2080 = tosa.add %2079, %14 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2081 = tosa.mul %2073, %2080 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2082 = tosa.matmul %2081, %19 : (tensor<1x197x4096xf32>, tensor<1x4096x1024xf32>) -> tensor<1x197x1024xf32>
    %2083 = tosa.add %2082, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2084 = tosa.add %2059, %2083 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2085 = tosa.reduce_sum %2084 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2086 = tosa.mul %2085, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2087 = tosa.sub %2084, %2086 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2088 = tosa.mul %2087, %2087 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2089 = tosa.reduce_sum %2088 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2090 = tosa.mul %2089, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2091 = tosa.add %2090, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2092 = tosa.rsqrt %2091 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %2093 = tosa.mul %2087, %2092 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2094 = tosa.mul %2093, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2095 = tosa.add %2094, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2096 = tosa.matmul %2095, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %2097 = tosa.add %2096, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2098 = tosa.reshape %2097 {new_shape = array<i64: 1, 197, 16, 64>} : (tensor<1x197x1024xf32>) -> tensor<1x197x16x64xf32>
    %2099 = tosa.transpose %2098, %10 : (tensor<1x197x16x64xf32>, tensor<4xi64>) -> tensor<1x16x197x64xf32>
    %2100 = tosa.reshape %2099 {new_shape = array<i64: 16, 197, 64>} : (tensor<1x16x197x64xf32>) -> tensor<16x197x64xf32>
    %2101 = tosa.transpose %2100, %4 : (tensor<16x197x64xf32>, tensor<3xi64>) -> tensor<16x64x197xf32>
    %2102 = tosa.matmul %2100, %2101 : (tensor<16x197x64xf32>, tensor<16x64x197xf32>) -> tensor<16x197x197xf32>
    %2103 = tosa.mul %2102, %2047 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<f32>) -> tensor<16x197x197xf32>
    %2104 = tosa.exp %2103 : (tensor<16x197x197xf32>) -> tensor<16x197x197xf32>
    %2105 = tosa.reduce_sum %2104 {axis = 2 : i32} : (tensor<16x197x197xf32>) -> tensor<16x197x1xf32>
    %2106 = tosa.reciprocal %2105 : (tensor<16x197x1xf32>) -> tensor<16x197x1xf32>
    %2107 = tosa.mul %2104, %2106 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<16x197x1xf32>) -> tensor<16x197x197xf32>
    %2108 = tosa.matmul %2107, %2100 : (tensor<16x197x197xf32>, tensor<16x197x64xf32>) -> tensor<16x197x64xf32>
    %2109 = tosa.reshape %2108 {new_shape = array<i64: 1, 16, 197, 64>} : (tensor<16x197x64xf32>) -> tensor<1x16x197x64xf32>
    %2110 = tosa.transpose %2109, %10 : (tensor<1x16x197x64xf32>, tensor<4xi64>) -> tensor<1x197x16x64xf32>
    %2111 = tosa.reshape %2110 {new_shape = array<i64: 1, 197, 1024>} : (tensor<1x197x16x64xf32>) -> tensor<1x197x1024xf32>
    %2112 = tosa.matmul %2111, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %2113 = tosa.add %2112, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2114 = tosa.add %2113, %2084 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2115 = tosa.reduce_sum %2114 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2116 = tosa.mul %2115, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2117 = tosa.sub %2114, %2116 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2118 = tosa.mul %2117, %2117 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2119 = tosa.reduce_sum %2118 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2120 = tosa.mul %2119, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2121 = tosa.add %2120, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2122 = tosa.rsqrt %2121 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %2123 = tosa.mul %2117, %2122 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2124 = tosa.mul %2123, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2125 = tosa.add %2124, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2126 = tosa.matmul %2125, %12 : (tensor<1x197x1024xf32>, tensor<1x1024x4096xf32>) -> tensor<1x197x4096xf32>
    %2127 = tosa.add %2126, %13 : (tensor<1x197x4096xf32>, tensor<4096xf32>) -> tensor<1x197x4096xf32>
    %2128 = tosa.mul %2127, %15 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2129 = tosa.pow %2127, %18 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2130 = tosa.mul %2129, %17 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2131 = tosa.add %2127, %2130 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2132 = tosa.mul %2074, %2131 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2133 = tosa.tanh %2132 : (tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2134 = tosa.add %2133, %14 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2135 = tosa.mul %2128, %2134 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2136 = tosa.matmul %2135, %19 : (tensor<1x197x4096xf32>, tensor<1x4096x1024xf32>) -> tensor<1x197x1024xf32>
    %2137 = tosa.add %2136, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2138 = tosa.add %2114, %2137 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2139 = tosa.reduce_sum %2138 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2140 = tosa.mul %2139, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2141 = tosa.sub %2138, %2140 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2142 = tosa.mul %2141, %2141 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2143 = tosa.reduce_sum %2142 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2144 = tosa.mul %2143, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2145 = tosa.add %2144, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2146 = tosa.rsqrt %2145 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %2147 = tosa.mul %2141, %2146 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2148 = tosa.mul %2147, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2149 = tosa.add %2148, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2150 = tosa.matmul %2149, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %2151 = tosa.add %2150, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2152 = tosa.reshape %2151 {new_shape = array<i64: 1, 197, 16, 64>} : (tensor<1x197x1024xf32>) -> tensor<1x197x16x64xf32>
    %2153 = tosa.transpose %2152, %10 : (tensor<1x197x16x64xf32>, tensor<4xi64>) -> tensor<1x16x197x64xf32>
    %2154 = tosa.reshape %2153 {new_shape = array<i64: 16, 197, 64>} : (tensor<1x16x197x64xf32>) -> tensor<16x197x64xf32>
    %2155 = tosa.transpose %2154, %4 : (tensor<16x197x64xf32>, tensor<3xi64>) -> tensor<16x64x197xf32>
    %2156 = tosa.matmul %2154, %2155 : (tensor<16x197x64xf32>, tensor<16x64x197xf32>) -> tensor<16x197x197xf32>
    %2157 = tosa.mul %2156, %2047 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<f32>) -> tensor<16x197x197xf32>
    %2158 = tosa.exp %2157 : (tensor<16x197x197xf32>) -> tensor<16x197x197xf32>
    %2159 = tosa.reduce_sum %2158 {axis = 2 : i32} : (tensor<16x197x197xf32>) -> tensor<16x197x1xf32>
    %2160 = tosa.reciprocal %2159 : (tensor<16x197x1xf32>) -> tensor<16x197x1xf32>
    %2161 = tosa.mul %2158, %2160 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<16x197x1xf32>) -> tensor<16x197x197xf32>
    %2162 = tosa.matmul %2161, %2154 : (tensor<16x197x197xf32>, tensor<16x197x64xf32>) -> tensor<16x197x64xf32>
    %2163 = tosa.reshape %2162 {new_shape = array<i64: 1, 16, 197, 64>} : (tensor<16x197x64xf32>) -> tensor<1x16x197x64xf32>
    %2164 = tosa.transpose %2163, %10 : (tensor<1x16x197x64xf32>, tensor<4xi64>) -> tensor<1x197x16x64xf32>
    %2165 = tosa.reshape %2164 {new_shape = array<i64: 1, 197, 1024>} : (tensor<1x197x16x64xf32>) -> tensor<1x197x1024xf32>
    %2166 = tosa.matmul %2165, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %2167 = tosa.add %2166, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2168 = tosa.add %2167, %2138 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2169 = tosa.reduce_sum %2168 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2170 = tosa.mul %2169, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2171 = tosa.sub %2168, %2170 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2172 = tosa.mul %2171, %2171 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2173 = tosa.reduce_sum %2172 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2174 = tosa.mul %2173, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2175 = tosa.add %2174, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2176 = tosa.rsqrt %2175 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %2177 = tosa.mul %2171, %2176 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2178 = tosa.mul %2177, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2179 = tosa.add %2178, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2180 = tosa.matmul %2179, %12 : (tensor<1x197x1024xf32>, tensor<1x1024x4096xf32>) -> tensor<1x197x4096xf32>
    %2181 = tosa.add %2180, %13 : (tensor<1x197x4096xf32>, tensor<4096xf32>) -> tensor<1x197x4096xf32>
    %2182 = tosa.mul %2181, %15 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2183 = tosa.pow %2181, %18 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2184 = tosa.mul %2183, %17 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2185 = tosa.add %2181, %2184 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2186 = tosa.mul %2074, %2185 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2187 = tosa.tanh %2186 : (tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2188 = tosa.add %2187, %14 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2189 = tosa.mul %2182, %2188 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2190 = tosa.matmul %2189, %19 : (tensor<1x197x4096xf32>, tensor<1x4096x1024xf32>) -> tensor<1x197x1024xf32>
    %2191 = tosa.add %2190, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2192 = tosa.add %2168, %2191 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2193 = tosa.reduce_sum %2192 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2194 = tosa.mul %2193, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2195 = tosa.sub %2192, %2194 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2196 = tosa.mul %2195, %2195 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2197 = tosa.reduce_sum %2196 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2198 = tosa.mul %2197, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2199 = tosa.add %2198, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2200 = tosa.rsqrt %2199 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %2201 = tosa.mul %2195, %2200 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2202 = tosa.mul %2201, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2203 = tosa.add %2202, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2204 = tosa.matmul %2203, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %2205 = tosa.add %2204, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2206 = tosa.reshape %2205 {new_shape = array<i64: 1, 197, 16, 64>} : (tensor<1x197x1024xf32>) -> tensor<1x197x16x64xf32>
    %2207 = tosa.transpose %2206, %10 : (tensor<1x197x16x64xf32>, tensor<4xi64>) -> tensor<1x16x197x64xf32>
    %2208 = tosa.reshape %2207 {new_shape = array<i64: 16, 197, 64>} : (tensor<1x16x197x64xf32>) -> tensor<16x197x64xf32>
    %2209 = tosa.transpose %2208, %4 : (tensor<16x197x64xf32>, tensor<3xi64>) -> tensor<16x64x197xf32>
    %2210 = tosa.matmul %2208, %2209 : (tensor<16x197x64xf32>, tensor<16x64x197xf32>) -> tensor<16x197x197xf32>
    %2211 = tosa.mul %2210, %2047 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<f32>) -> tensor<16x197x197xf32>
    %2212 = tosa.exp %2211 : (tensor<16x197x197xf32>) -> tensor<16x197x197xf32>
    %2213 = tosa.reduce_sum %2212 {axis = 2 : i32} : (tensor<16x197x197xf32>) -> tensor<16x197x1xf32>
    %2214 = tosa.reciprocal %2213 : (tensor<16x197x1xf32>) -> tensor<16x197x1xf32>
    %2215 = tosa.mul %2212, %2214 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<16x197x1xf32>) -> tensor<16x197x197xf32>
    %2216 = tosa.matmul %2215, %2208 : (tensor<16x197x197xf32>, tensor<16x197x64xf32>) -> tensor<16x197x64xf32>
    %2217 = tosa.reshape %2216 {new_shape = array<i64: 1, 16, 197, 64>} : (tensor<16x197x64xf32>) -> tensor<1x16x197x64xf32>
    %2218 = tosa.transpose %2217, %10 : (tensor<1x16x197x64xf32>, tensor<4xi64>) -> tensor<1x197x16x64xf32>
    %2219 = tosa.reshape %2218 {new_shape = array<i64: 1, 197, 1024>} : (tensor<1x197x16x64xf32>) -> tensor<1x197x1024xf32>
    %2220 = tosa.matmul %2219, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %2221 = tosa.add %2220, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2222 = tosa.add %2221, %192 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2223 = tosa.reduce_sum %2222 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2224 = tosa.mul %2223, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2225 = tosa.sub %2222, %2224 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2226 = tosa.mul %2225, %2225 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2227 = tosa.reduce_sum %2226 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2228 = tosa.mul %2227, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2229 = tosa.add %2228, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2230 = tosa.rsqrt %2229 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %2231 = tosa.mul %2225, %2230 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2232 = tosa.mul %2231, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2233 = tosa.add %2232, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2234 = tosa.matmul %2233, %12 : (tensor<1x197x1024xf32>, tensor<1x1024x4096xf32>) -> tensor<1x197x4096xf32>
    %2235 = tosa.add %2234, %13 : (tensor<1x197x4096xf32>, tensor<4096xf32>) -> tensor<1x197x4096xf32>
    %2236 = tosa.mul %2235, %15 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2237 = tosa.pow %2235, %18 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2238 = tosa.mul %2237, %17 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2239 = tosa.add %2235, %2238 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2240 = tosa.mul %2074, %2239 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2241 = tosa.tanh %2240 : (tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2242 = tosa.add %2241, %14 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2243 = tosa.mul %2236, %2242 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2244 = tosa.matmul %2243, %19 : (tensor<1x197x4096xf32>, tensor<1x4096x1024xf32>) -> tensor<1x197x1024xf32>
    %2245 = tosa.add %2244, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2246 = tosa.add %2222, %2245 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2247 = tosa.reduce_sum %2246 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2248 = tosa.mul %2247, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2249 = tosa.sub %2246, %2248 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2250 = tosa.mul %2249, %2249 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2251 = tosa.reduce_sum %2250 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2252 = tosa.mul %2251, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2253 = tosa.add %2252, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2254 = tosa.rsqrt %2253 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %2255 = tosa.mul %2249, %2254 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2256 = tosa.mul %2255, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2257 = tosa.add %2256, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2258 = tosa.matmul %2257, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %2259 = tosa.add %2258, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2260 = tosa.reshape %2259 {new_shape = array<i64: 1, 197, 16, 64>} : (tensor<1x197x1024xf32>) -> tensor<1x197x16x64xf32>
    %2261 = tosa.transpose %2260, %10 : (tensor<1x197x16x64xf32>, tensor<4xi64>) -> tensor<1x16x197x64xf32>
    %2262 = tosa.reshape %2261 {new_shape = array<i64: 16, 197, 64>} : (tensor<1x16x197x64xf32>) -> tensor<16x197x64xf32>
    %2263 = tosa.transpose %2262, %4 : (tensor<16x197x64xf32>, tensor<3xi64>) -> tensor<16x64x197xf32>
    %2264 = tosa.matmul %2262, %2263 : (tensor<16x197x64xf32>, tensor<16x64x197xf32>) -> tensor<16x197x197xf32>
    %2265 = tosa.mul %2264, %2047 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<f32>) -> tensor<16x197x197xf32>
    %2266 = tosa.exp %2265 : (tensor<16x197x197xf32>) -> tensor<16x197x197xf32>
    %2267 = tosa.reduce_sum %2266 {axis = 2 : i32} : (tensor<16x197x197xf32>) -> tensor<16x197x1xf32>
    %2268 = tosa.reciprocal %2267 : (tensor<16x197x1xf32>) -> tensor<16x197x1xf32>
    %2269 = tosa.mul %2266, %2268 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<16x197x1xf32>) -> tensor<16x197x197xf32>
    %2270 = tosa.matmul %2269, %2262 : (tensor<16x197x197xf32>, tensor<16x197x64xf32>) -> tensor<16x197x64xf32>
    %2271 = tosa.reshape %2270 {new_shape = array<i64: 1, 16, 197, 64>} : (tensor<16x197x64xf32>) -> tensor<1x16x197x64xf32>
    %2272 = tosa.transpose %2271, %10 : (tensor<1x16x197x64xf32>, tensor<4xi64>) -> tensor<1x197x16x64xf32>
    %2273 = tosa.reshape %2272 {new_shape = array<i64: 1, 197, 1024>} : (tensor<1x197x16x64xf32>) -> tensor<1x197x1024xf32>
    %2274 = tosa.matmul %2273, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %2275 = tosa.add %2274, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2276 = tosa.add %2275, %2246 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2277 = tosa.reduce_sum %2276 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2278 = tosa.mul %2277, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2279 = tosa.sub %2276, %2278 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2280 = tosa.mul %2279, %2279 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2281 = tosa.reduce_sum %2280 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2282 = tosa.mul %2281, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2283 = tosa.add %2282, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2284 = tosa.rsqrt %2283 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %2285 = tosa.mul %2279, %2284 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2286 = tosa.mul %2285, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2287 = tosa.add %2286, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2288 = tosa.matmul %2287, %12 : (tensor<1x197x1024xf32>, tensor<1x1024x4096xf32>) -> tensor<1x197x4096xf32>
    %2289 = tosa.add %2288, %13 : (tensor<1x197x4096xf32>, tensor<4096xf32>) -> tensor<1x197x4096xf32>
    %2290 = tosa.mul %2289, %15 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2291 = tosa.pow %2289, %18 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2292 = tosa.mul %2291, %17 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2293 = tosa.add %2289, %2292 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2294 = tosa.mul %2074, %2293 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2295 = tosa.tanh %2294 : (tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2296 = tosa.add %2295, %14 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2297 = tosa.mul %2290, %2296 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2298 = tosa.matmul %2297, %19 : (tensor<1x197x4096xf32>, tensor<1x4096x1024xf32>) -> tensor<1x197x1024xf32>
    %2299 = tosa.add %2298, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2300 = tosa.add %2276, %2299 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2301 = tosa.reduce_sum %2300 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2302 = tosa.mul %2301, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2303 = tosa.sub %2300, %2302 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2304 = tosa.mul %2303, %2303 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2305 = tosa.reduce_sum %2304 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2306 = tosa.mul %2305, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2307 = tosa.add %2306, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2308 = tosa.rsqrt %2307 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %2309 = tosa.mul %2303, %2308 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2310 = tosa.mul %2309, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2311 = tosa.add %2310, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2312 = tosa.matmul %2311, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %2313 = tosa.add %2312, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2314 = tosa.reshape %2313 {new_shape = array<i64: 1, 197, 16, 64>} : (tensor<1x197x1024xf32>) -> tensor<1x197x16x64xf32>
    %2315 = tosa.transpose %2314, %10 : (tensor<1x197x16x64xf32>, tensor<4xi64>) -> tensor<1x16x197x64xf32>
    %2316 = tosa.reshape %2315 {new_shape = array<i64: 16, 197, 64>} : (tensor<1x16x197x64xf32>) -> tensor<16x197x64xf32>
    %2317 = tosa.transpose %2316, %4 : (tensor<16x197x64xf32>, tensor<3xi64>) -> tensor<16x64x197xf32>
    %2318 = tosa.matmul %2316, %2317 : (tensor<16x197x64xf32>, tensor<16x64x197xf32>) -> tensor<16x197x197xf32>
    %2319 = tosa.mul %2318, %2047 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<f32>) -> tensor<16x197x197xf32>
    %2320 = tosa.exp %2319 : (tensor<16x197x197xf32>) -> tensor<16x197x197xf32>
    %2321 = tosa.reduce_sum %2320 {axis = 2 : i32} : (tensor<16x197x197xf32>) -> tensor<16x197x1xf32>
    %2322 = tosa.reciprocal %2321 : (tensor<16x197x1xf32>) -> tensor<16x197x1xf32>
    %2323 = tosa.mul %2320, %2322 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<16x197x1xf32>) -> tensor<16x197x197xf32>
    %2324 = tosa.matmul %2323, %2316 : (tensor<16x197x197xf32>, tensor<16x197x64xf32>) -> tensor<16x197x64xf32>
    %2325 = tosa.reshape %2324 {new_shape = array<i64: 1, 16, 197, 64>} : (tensor<16x197x64xf32>) -> tensor<1x16x197x64xf32>
    %2326 = tosa.transpose %2325, %10 : (tensor<1x16x197x64xf32>, tensor<4xi64>) -> tensor<1x197x16x64xf32>
    %2327 = tosa.reshape %2326 {new_shape = array<i64: 1, 197, 1024>} : (tensor<1x197x16x64xf32>) -> tensor<1x197x1024xf32>
    %2328 = tosa.matmul %2327, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %2329 = tosa.add %2328, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2330 = tosa.add %2329, %2300 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2331 = tosa.reduce_sum %2330 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2332 = tosa.mul %2331, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2333 = tosa.sub %2330, %2332 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2334 = tosa.mul %2333, %2333 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2335 = tosa.reduce_sum %2334 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2336 = tosa.mul %2335, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2337 = tosa.add %2336, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2338 = tosa.rsqrt %2337 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %2339 = tosa.mul %2333, %2338 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2340 = tosa.mul %2339, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2341 = tosa.add %2340, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2342 = tosa.matmul %2341, %12 : (tensor<1x197x1024xf32>, tensor<1x1024x4096xf32>) -> tensor<1x197x4096xf32>
    %2343 = tosa.add %2342, %13 : (tensor<1x197x4096xf32>, tensor<4096xf32>) -> tensor<1x197x4096xf32>
    %2344 = tosa.mul %2343, %15 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2345 = tosa.pow %2343, %18 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2346 = tosa.mul %2345, %17 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2347 = tosa.add %2343, %2346 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2348 = tosa.mul %2074, %2347 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2349 = tosa.tanh %2348 : (tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2350 = tosa.add %2349, %14 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2351 = tosa.mul %2344, %2350 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2352 = tosa.matmul %2351, %19 : (tensor<1x197x4096xf32>, tensor<1x4096x1024xf32>) -> tensor<1x197x1024xf32>
    %2353 = tosa.add %2352, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2354 = tosa.add %2330, %2353 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2355 = tosa.reduce_sum %2354 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2356 = tosa.mul %2355, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2357 = tosa.sub %2354, %2356 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2358 = tosa.mul %2357, %2357 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2359 = tosa.reduce_sum %2358 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2360 = tosa.mul %2359, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2361 = tosa.add %2360, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2362 = tosa.rsqrt %2361 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %2363 = tosa.mul %2357, %2362 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2364 = tosa.mul %2363, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2365 = tosa.add %2364, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2366 = tosa.matmul %2365, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %2367 = tosa.add %2366, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2368 = tosa.reshape %2367 {new_shape = array<i64: 1, 197, 16, 64>} : (tensor<1x197x1024xf32>) -> tensor<1x197x16x64xf32>
    %2369 = tosa.transpose %2368, %10 : (tensor<1x197x16x64xf32>, tensor<4xi64>) -> tensor<1x16x197x64xf32>
    %2370 = tosa.reshape %2369 {new_shape = array<i64: 16, 197, 64>} : (tensor<1x16x197x64xf32>) -> tensor<16x197x64xf32>
    %2371 = tosa.transpose %2370, %4 : (tensor<16x197x64xf32>, tensor<3xi64>) -> tensor<16x64x197xf32>
    %2372 = tosa.matmul %2370, %2371 : (tensor<16x197x64xf32>, tensor<16x64x197xf32>) -> tensor<16x197x197xf32>
    %2373 = tosa.mul %2372, %2047 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<f32>) -> tensor<16x197x197xf32>
    %2374 = tosa.exp %2373 : (tensor<16x197x197xf32>) -> tensor<16x197x197xf32>
    %2375 = tosa.reduce_sum %2374 {axis = 2 : i32} : (tensor<16x197x197xf32>) -> tensor<16x197x1xf32>
    %2376 = tosa.reciprocal %2375 : (tensor<16x197x1xf32>) -> tensor<16x197x1xf32>
    %2377 = tosa.mul %2374, %2376 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<16x197x1xf32>) -> tensor<16x197x197xf32>
    %2378 = tosa.matmul %2377, %2370 : (tensor<16x197x197xf32>, tensor<16x197x64xf32>) -> tensor<16x197x64xf32>
    %2379 = tosa.reshape %2378 {new_shape = array<i64: 1, 16, 197, 64>} : (tensor<16x197x64xf32>) -> tensor<1x16x197x64xf32>
    %2380 = tosa.transpose %2379, %10 : (tensor<1x16x197x64xf32>, tensor<4xi64>) -> tensor<1x197x16x64xf32>
    %2381 = tosa.reshape %2380 {new_shape = array<i64: 1, 197, 1024>} : (tensor<1x197x16x64xf32>) -> tensor<1x197x1024xf32>
    %2382 = tosa.matmul %2381, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %2383 = tosa.add %2382, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2384 = tosa.add %2383, %2354 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2385 = tosa.reduce_sum %2384 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2386 = tosa.mul %2385, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2387 = tosa.sub %2384, %2386 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2388 = tosa.mul %2387, %2387 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2389 = tosa.reduce_sum %2388 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2390 = tosa.mul %2389, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2391 = tosa.add %2390, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2392 = tosa.rsqrt %2391 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %2393 = tosa.mul %2387, %2392 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2394 = tosa.mul %2393, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2395 = tosa.add %2394, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2396 = tosa.matmul %2395, %12 : (tensor<1x197x1024xf32>, tensor<1x1024x4096xf32>) -> tensor<1x197x4096xf32>
    %2397 = tosa.add %2396, %13 : (tensor<1x197x4096xf32>, tensor<4096xf32>) -> tensor<1x197x4096xf32>
    %2398 = tosa.mul %2397, %15 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2399 = tosa.pow %2397, %18 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2400 = tosa.mul %2399, %17 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2401 = tosa.add %2397, %2400 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2402 = tosa.mul %2074, %2401 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2403 = tosa.tanh %2402 : (tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2404 = tosa.add %2403, %14 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2405 = tosa.mul %2398, %2404 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2406 = tosa.matmul %2405, %19 : (tensor<1x197x4096xf32>, tensor<1x4096x1024xf32>) -> tensor<1x197x1024xf32>
    %2407 = tosa.add %2406, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2408 = tosa.add %2384, %2407 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2409 = tosa.reduce_sum %2408 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2410 = tosa.mul %2409, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2411 = tosa.sub %2408, %2410 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2412 = tosa.mul %2411, %2411 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2413 = tosa.reduce_sum %2412 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2414 = tosa.mul %2413, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2415 = tosa.add %2414, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2416 = tosa.rsqrt %2415 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %2417 = tosa.mul %2411, %2416 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2418 = tosa.mul %2417, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2419 = tosa.add %2418, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2420 = tosa.matmul %2419, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %2421 = tosa.add %2420, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2422 = tosa.reshape %2421 {new_shape = array<i64: 1, 197, 16, 64>} : (tensor<1x197x1024xf32>) -> tensor<1x197x16x64xf32>
    %2423 = tosa.transpose %2422, %10 : (tensor<1x197x16x64xf32>, tensor<4xi64>) -> tensor<1x16x197x64xf32>
    %2424 = tosa.reshape %2423 {new_shape = array<i64: 16, 197, 64>} : (tensor<1x16x197x64xf32>) -> tensor<16x197x64xf32>
    %2425 = tosa.transpose %2424, %4 : (tensor<16x197x64xf32>, tensor<3xi64>) -> tensor<16x64x197xf32>
    %2426 = tosa.matmul %2424, %2425 : (tensor<16x197x64xf32>, tensor<16x64x197xf32>) -> tensor<16x197x197xf32>
    %2427 = tosa.mul %2426, %2047 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<f32>) -> tensor<16x197x197xf32>
    %2428 = tosa.exp %2427 : (tensor<16x197x197xf32>) -> tensor<16x197x197xf32>
    %2429 = tosa.reduce_sum %2428 {axis = 2 : i32} : (tensor<16x197x197xf32>) -> tensor<16x197x1xf32>
    %2430 = tosa.reciprocal %2429 : (tensor<16x197x1xf32>) -> tensor<16x197x1xf32>
    %2431 = tosa.mul %2428, %2430 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<16x197x1xf32>) -> tensor<16x197x197xf32>
    %2432 = tosa.matmul %2431, %2424 : (tensor<16x197x197xf32>, tensor<16x197x64xf32>) -> tensor<16x197x64xf32>
    %2433 = tosa.reshape %2432 {new_shape = array<i64: 1, 16, 197, 64>} : (tensor<16x197x64xf32>) -> tensor<1x16x197x64xf32>
    %2434 = tosa.transpose %2433, %10 : (tensor<1x16x197x64xf32>, tensor<4xi64>) -> tensor<1x197x16x64xf32>
    %2435 = tosa.reshape %2434 {new_shape = array<i64: 1, 197, 1024>} : (tensor<1x197x16x64xf32>) -> tensor<1x197x1024xf32>
    %2436 = tosa.matmul %2435, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %2437 = tosa.add %2436, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2438 = tosa.add %2437, %2408 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2439 = tosa.reduce_sum %2438 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2440 = tosa.mul %2439, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2441 = tosa.sub %2438, %2440 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2442 = tosa.mul %2441, %2441 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2443 = tosa.reduce_sum %2442 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2444 = tosa.mul %2443, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2445 = tosa.add %2444, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2446 = tosa.rsqrt %2445 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %2447 = tosa.mul %2441, %2446 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2448 = tosa.mul %2447, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2449 = tosa.add %2448, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2450 = tosa.matmul %2449, %12 : (tensor<1x197x1024xf32>, tensor<1x1024x4096xf32>) -> tensor<1x197x4096xf32>
    %2451 = tosa.add %2450, %13 : (tensor<1x197x4096xf32>, tensor<4096xf32>) -> tensor<1x197x4096xf32>
    %2452 = tosa.mul %2451, %15 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2453 = tosa.pow %2451, %18 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2454 = tosa.mul %2453, %17 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2455 = tosa.add %2451, %2454 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2456 = tosa.mul %2074, %2455 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2457 = tosa.tanh %2456 : (tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2458 = tosa.add %2457, %14 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2459 = tosa.mul %2452, %2458 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2460 = tosa.matmul %2459, %19 : (tensor<1x197x4096xf32>, tensor<1x4096x1024xf32>) -> tensor<1x197x1024xf32>
    %2461 = tosa.add %2460, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2462 = tosa.add %2438, %2461 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2463 = tosa.reduce_sum %2462 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2464 = tosa.mul %2463, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2465 = tosa.sub %2462, %2464 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2466 = tosa.mul %2465, %2465 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2467 = tosa.reduce_sum %2466 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2468 = tosa.mul %2467, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2469 = tosa.add %2468, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2470 = tosa.rsqrt %2469 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %2471 = tosa.mul %2465, %2470 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2472 = tosa.mul %2471, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2473 = tosa.add %2472, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2474 = tosa.matmul %2473, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %2475 = tosa.add %2474, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2476 = tosa.reshape %2475 {new_shape = array<i64: 1, 197, 16, 64>} : (tensor<1x197x1024xf32>) -> tensor<1x197x16x64xf32>
    %2477 = tosa.transpose %2476, %10 : (tensor<1x197x16x64xf32>, tensor<4xi64>) -> tensor<1x16x197x64xf32>
    %2478 = tosa.reshape %2477 {new_shape = array<i64: 16, 197, 64>} : (tensor<1x16x197x64xf32>) -> tensor<16x197x64xf32>
    %2479 = tosa.transpose %2478, %4 : (tensor<16x197x64xf32>, tensor<3xi64>) -> tensor<16x64x197xf32>
    %2480 = tosa.matmul %2478, %2479 : (tensor<16x197x64xf32>, tensor<16x64x197xf32>) -> tensor<16x197x197xf32>
    %2481 = tosa.mul %2480, %2047 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<f32>) -> tensor<16x197x197xf32>
    %2482 = tosa.exp %2481 : (tensor<16x197x197xf32>) -> tensor<16x197x197xf32>
    %2483 = tosa.reduce_sum %2482 {axis = 2 : i32} : (tensor<16x197x197xf32>) -> tensor<16x197x1xf32>
    %2484 = tosa.reciprocal %2483 : (tensor<16x197x1xf32>) -> tensor<16x197x1xf32>
    %2485 = tosa.mul %2482, %2484 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<16x197x1xf32>) -> tensor<16x197x197xf32>
    %2486 = tosa.matmul %2485, %2478 : (tensor<16x197x197xf32>, tensor<16x197x64xf32>) -> tensor<16x197x64xf32>
    %2487 = tosa.reshape %2486 {new_shape = array<i64: 1, 16, 197, 64>} : (tensor<16x197x64xf32>) -> tensor<1x16x197x64xf32>
    %2488 = tosa.transpose %2487, %10 : (tensor<1x16x197x64xf32>, tensor<4xi64>) -> tensor<1x197x16x64xf32>
    %2489 = tosa.reshape %2488 {new_shape = array<i64: 1, 197, 1024>} : (tensor<1x197x16x64xf32>) -> tensor<1x197x1024xf32>
    %2490 = tosa.matmul %2489, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %2491 = tosa.add %2490, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2492 = tosa.add %2491, %2462 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2493 = tosa.reduce_sum %2492 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2494 = tosa.mul %2493, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2495 = tosa.sub %2492, %2494 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2496 = tosa.mul %2495, %2495 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2497 = tosa.reduce_sum %2496 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2498 = tosa.mul %2497, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2499 = tosa.add %2498, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2500 = tosa.rsqrt %2499 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %2501 = tosa.mul %2495, %2500 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2502 = tosa.mul %2501, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2503 = tosa.add %2502, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2504 = tosa.matmul %2503, %12 : (tensor<1x197x1024xf32>, tensor<1x1024x4096xf32>) -> tensor<1x197x4096xf32>
    %2505 = tosa.add %2504, %13 : (tensor<1x197x4096xf32>, tensor<4096xf32>) -> tensor<1x197x4096xf32>
    %2506 = tosa.mul %2505, %15 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2507 = tosa.pow %2505, %18 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2508 = tosa.mul %2507, %17 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2509 = tosa.add %2505, %2508 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2510 = tosa.mul %2074, %2509 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2511 = tosa.tanh %2510 : (tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2512 = tosa.add %2511, %14 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2513 = tosa.mul %2506, %2512 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2514 = tosa.matmul %2513, %19 : (tensor<1x197x4096xf32>, tensor<1x4096x1024xf32>) -> tensor<1x197x1024xf32>
    %2515 = tosa.add %2514, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2516 = tosa.add %2492, %2515 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2517 = tosa.reduce_sum %2516 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2518 = tosa.mul %2517, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2519 = tosa.sub %2516, %2518 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2520 = tosa.mul %2519, %2519 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2521 = tosa.reduce_sum %2520 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2522 = tosa.mul %2521, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2523 = tosa.add %2522, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2524 = tosa.rsqrt %2523 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %2525 = tosa.mul %2519, %2524 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2526 = tosa.mul %2525, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2527 = tosa.add %2526, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2528 = tosa.matmul %2527, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %2529 = tosa.add %2528, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2530 = tosa.reshape %2529 {new_shape = array<i64: 1, 197, 16, 64>} : (tensor<1x197x1024xf32>) -> tensor<1x197x16x64xf32>
    %2531 = tosa.transpose %2530, %10 : (tensor<1x197x16x64xf32>, tensor<4xi64>) -> tensor<1x16x197x64xf32>
    %2532 = tosa.reshape %2531 {new_shape = array<i64: 16, 197, 64>} : (tensor<1x16x197x64xf32>) -> tensor<16x197x64xf32>
    %2533 = tosa.transpose %2532, %4 : (tensor<16x197x64xf32>, tensor<3xi64>) -> tensor<16x64x197xf32>
    %2534 = tosa.matmul %2532, %2533 : (tensor<16x197x64xf32>, tensor<16x64x197xf32>) -> tensor<16x197x197xf32>
    %2535 = tosa.mul %2534, %2047 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<f32>) -> tensor<16x197x197xf32>
    %2536 = tosa.exp %2535 : (tensor<16x197x197xf32>) -> tensor<16x197x197xf32>
    %2537 = tosa.reduce_sum %2536 {axis = 2 : i32} : (tensor<16x197x197xf32>) -> tensor<16x197x1xf32>
    %2538 = tosa.reciprocal %2537 : (tensor<16x197x1xf32>) -> tensor<16x197x1xf32>
    %2539 = tosa.mul %2536, %2538 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<16x197x1xf32>) -> tensor<16x197x197xf32>
    %2540 = tosa.matmul %2539, %2532 : (tensor<16x197x197xf32>, tensor<16x197x64xf32>) -> tensor<16x197x64xf32>
    %2541 = tosa.reshape %2540 {new_shape = array<i64: 1, 16, 197, 64>} : (tensor<16x197x64xf32>) -> tensor<1x16x197x64xf32>
    %2542 = tosa.transpose %2541, %10 : (tensor<1x16x197x64xf32>, tensor<4xi64>) -> tensor<1x197x16x64xf32>
    %2543 = tosa.reshape %2542 {new_shape = array<i64: 1, 197, 1024>} : (tensor<1x197x16x64xf32>) -> tensor<1x197x1024xf32>
    %2544 = tosa.matmul %2543, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %2545 = tosa.add %2544, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2546 = tosa.add %2545, %2516 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2547 = tosa.reduce_sum %2546 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2548 = tosa.mul %2547, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2549 = tosa.sub %2546, %2548 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2550 = tosa.mul %2549, %2549 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2551 = tosa.reduce_sum %2550 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2552 = tosa.mul %2551, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2553 = tosa.add %2552, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2554 = tosa.rsqrt %2553 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %2555 = tosa.mul %2549, %2554 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2556 = tosa.mul %2555, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2557 = tosa.add %2556, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2558 = tosa.matmul %2557, %12 : (tensor<1x197x1024xf32>, tensor<1x1024x4096xf32>) -> tensor<1x197x4096xf32>
    %2559 = tosa.add %2558, %13 : (tensor<1x197x4096xf32>, tensor<4096xf32>) -> tensor<1x197x4096xf32>
    %2560 = tosa.mul %2559, %15 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2561 = tosa.pow %2559, %18 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2562 = tosa.mul %2561, %17 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2563 = tosa.add %2559, %2562 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2564 = tosa.mul %2074, %2563 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2565 = tosa.tanh %2564 : (tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2566 = tosa.add %2565, %14 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2567 = tosa.mul %2560, %2566 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2568 = tosa.matmul %2567, %19 : (tensor<1x197x4096xf32>, tensor<1x4096x1024xf32>) -> tensor<1x197x1024xf32>
    %2569 = tosa.add %2568, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2570 = tosa.add %2546, %2569 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2571 = tosa.reduce_sum %2570 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2572 = tosa.mul %2571, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2573 = tosa.sub %2570, %2572 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2574 = tosa.mul %2573, %2573 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2575 = tosa.reduce_sum %2574 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2576 = tosa.mul %2575, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2577 = tosa.add %2576, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2578 = tosa.rsqrt %2577 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %2579 = tosa.mul %2573, %2578 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2580 = tosa.mul %2579, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2581 = tosa.add %2580, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2582 = tosa.matmul %2581, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %2583 = tosa.add %2582, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2584 = tosa.reshape %2583 {new_shape = array<i64: 1, 197, 16, 64>} : (tensor<1x197x1024xf32>) -> tensor<1x197x16x64xf32>
    %2585 = tosa.transpose %2584, %10 : (tensor<1x197x16x64xf32>, tensor<4xi64>) -> tensor<1x16x197x64xf32>
    %2586 = tosa.reshape %2585 {new_shape = array<i64: 16, 197, 64>} : (tensor<1x16x197x64xf32>) -> tensor<16x197x64xf32>
    %2587 = tosa.transpose %2586, %4 : (tensor<16x197x64xf32>, tensor<3xi64>) -> tensor<16x64x197xf32>
    %2588 = tosa.matmul %2586, %2587 : (tensor<16x197x64xf32>, tensor<16x64x197xf32>) -> tensor<16x197x197xf32>
    %2589 = tosa.mul %2588, %2047 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<f32>) -> tensor<16x197x197xf32>
    %2590 = tosa.exp %2589 : (tensor<16x197x197xf32>) -> tensor<16x197x197xf32>
    %2591 = tosa.reduce_sum %2590 {axis = 2 : i32} : (tensor<16x197x197xf32>) -> tensor<16x197x1xf32>
    %2592 = tosa.reciprocal %2591 : (tensor<16x197x1xf32>) -> tensor<16x197x1xf32>
    %2593 = tosa.mul %2590, %2592 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<16x197x1xf32>) -> tensor<16x197x197xf32>
    %2594 = tosa.matmul %2593, %2586 : (tensor<16x197x197xf32>, tensor<16x197x64xf32>) -> tensor<16x197x64xf32>
    %2595 = tosa.reshape %2594 {new_shape = array<i64: 1, 16, 197, 64>} : (tensor<16x197x64xf32>) -> tensor<1x16x197x64xf32>
    %2596 = tosa.transpose %2595, %10 : (tensor<1x16x197x64xf32>, tensor<4xi64>) -> tensor<1x197x16x64xf32>
    %2597 = tosa.reshape %2596 {new_shape = array<i64: 1, 197, 1024>} : (tensor<1x197x16x64xf32>) -> tensor<1x197x1024xf32>
    %2598 = tosa.matmul %2597, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %2599 = tosa.add %2598, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2600 = tosa.add %2599, %2570 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2601 = tosa.reduce_sum %2600 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2602 = tosa.mul %2601, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2603 = tosa.sub %2600, %2602 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2604 = tosa.mul %2603, %2603 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2605 = tosa.reduce_sum %2604 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2606 = tosa.mul %2605, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2607 = tosa.add %2606, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2608 = tosa.rsqrt %2607 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %2609 = tosa.mul %2603, %2608 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2610 = tosa.mul %2609, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2611 = tosa.add %2610, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2612 = tosa.matmul %2611, %12 : (tensor<1x197x1024xf32>, tensor<1x1024x4096xf32>) -> tensor<1x197x4096xf32>
    %2613 = tosa.add %2612, %13 : (tensor<1x197x4096xf32>, tensor<4096xf32>) -> tensor<1x197x4096xf32>
    %2614 = tosa.mul %2613, %15 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2615 = tosa.pow %2613, %18 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2616 = tosa.mul %2615, %17 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2617 = tosa.add %2613, %2616 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2618 = tosa.mul %2074, %2617 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2619 = tosa.tanh %2618 : (tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2620 = tosa.add %2619, %14 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2621 = tosa.mul %2614, %2620 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %2622 = tosa.matmul %2621, %19 : (tensor<1x197x4096xf32>, tensor<1x4096x1024xf32>) -> tensor<1x197x1024xf32>
    %2623 = tosa.add %2622, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2624 = tosa.add %2600, %2623 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2625 = tosa.reduce_sum %2624 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2626 = tosa.mul %2625, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2627 = tosa.sub %2624, %2626 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2628 = tosa.mul %2627, %2627 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %2629 = tosa.reduce_sum %2628 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %2630 = tosa.mul %2629, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2631 = tosa.add %2630, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %2632 = tosa.rsqrt %2631 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %2633 = tosa.mul %2627, %2632 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %2634 = tosa.mul %2633, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2635 = tosa.add %2634, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %2636 = tosa.matmul %2635, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %2637 = tosa.add %2636, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %638 = tosa.reshape %2637 {new_shape = array<i64: 1, 197, 16, 64>} : (tensor<1x197x1024xf32>) -> tensor<1x197x16x64xf32>
    %639 = tosa.transpose %638, %10 : (tensor<1x197x16x64xf32>, tensor<4xi64>) -> tensor<1x16x197x64xf32>
    %640 = tosa.reshape %639 {new_shape = array<i64: 16, 197, 64>} : (tensor<1x16x197x64xf32>) -> tensor<16x197x64xf32>
    %641 = tosa.transpose %640, %4 : (tensor<16x197x64xf32>, tensor<3xi64>) -> tensor<16x64x197xf32>
    %642 = tosa.matmul %640, %641 : (tensor<16x197x64xf32>, tensor<16x64x197xf32>) -> tensor<16x197x197xf32>
    %643 = tosa.mul %642, %47 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<f32>) -> tensor<16x197x197xf32>
    %644 = tosa.exp %643 : (tensor<16x197x197xf32>) -> tensor<16x197x197xf32>
    %645 = tosa.reduce_sum %644 {axis = 2 : i32} : (tensor<16x197x197xf32>) -> tensor<16x197x1xf32>
    %646 = tosa.reciprocal %645 : (tensor<16x197x1xf32>) -> tensor<16x197x1xf32>
    %647 = tosa.mul %644, %646 {shift = 0 : i8} : (tensor<16x197x197xf32>, tensor<16x197x1xf32>) -> tensor<16x197x197xf32>
    %648 = tosa.matmul %647, %640 : (tensor<16x197x197xf32>, tensor<16x197x64xf32>) -> tensor<16x197x64xf32>
    %649 = tosa.reshape %648 {new_shape = array<i64: 1, 16, 197, 64>} : (tensor<16x197x64xf32>) -> tensor<1x16x197x64xf32>
    %650 = tosa.transpose %649, %10 : (tensor<1x16x197x64xf32>, tensor<4xi64>) -> tensor<1x197x16x64xf32>
    %651 = tosa.reshape %650 {new_shape = array<i64: 1, 197, 1024>} : (tensor<1x197x16x64xf32>) -> tensor<1x197x1024xf32>
    %652 = tosa.matmul %651, %9 : (tensor<1x197x1024xf32>, tensor<1x1024x1024xf32>) -> tensor<1x197x1024xf32>
    %653 = tosa.add %652, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %654 = tosa.add %653, %624 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %655 = tosa.reduce_sum %654 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %656 = tosa.mul %655, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %657 = tosa.sub %654, %656 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %658 = tosa.mul %657, %657 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %659 = tosa.reduce_sum %658 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %660 = tosa.mul %659, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %661 = tosa.add %660, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %662 = tosa.rsqrt %661 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %663 = tosa.mul %657, %662 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %664 = tosa.mul %663, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %665 = tosa.add %664, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %666 = tosa.matmul %665, %12 : (tensor<1x197x1024xf32>, tensor<1x1024x4096xf32>) -> tensor<1x197x4096xf32>
    %667 = tosa.add %666, %13 : (tensor<1x197x4096xf32>, tensor<4096xf32>) -> tensor<1x197x4096xf32>
    %668 = tosa.mul %667, %15 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %669 = tosa.pow %667, %18 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %670 = tosa.mul %669, %17 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %671 = tosa.add %667, %670 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %672 = tosa.mul %74, %671 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %673 = tosa.tanh %672 : (tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %674 = tosa.add %673, %14 : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %675 = tosa.mul %668, %674 {shift = 0 : i8} : (tensor<1x197x4096xf32>, tensor<1x197x4096xf32>) -> tensor<1x197x4096xf32>
    %676 = tosa.matmul %675, %19 : (tensor<1x197x4096xf32>, tensor<1x4096x1024xf32>) -> tensor<1x197x1024xf32>
    %677 = tosa.add %676, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %678 = tosa.add %654, %677 : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %679 = tosa.reduce_sum %678 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %680 = tosa.mul %679, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %681 = tosa.sub %678, %680 : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %682 = tosa.mul %681, %681 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1024xf32>) -> tensor<1x197x1024xf32>
    %683 = tosa.reduce_sum %682 {axis = 2 : i32} : (tensor<1x197x1024xf32>) -> tensor<1x197x1xf32>
    %684 = tosa.mul %683, %7 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %685 = tosa.add %684, %8 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %686 = tosa.rsqrt %685 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %687 = tosa.mul %681, %686 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1x197x1xf32>) -> tensor<1x197x1024xf32>
    %688 = tosa.mul %687, %1 {shift = 0 : i8} : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %689 = tosa.add %688, %1 : (tensor<1x197x1024xf32>, tensor<1024xf32>) -> tensor<1x197x1024xf32>
    %extracted_slice = tensor.extract_slice %689[0, 0, 0] [1, 1, 1024] [1, 1, 1] : tensor<1x197x1024xf32> to tensor<1x1x1024xf32>
    %690 = tosa.matmul %extracted_slice, %20 : (tensor<1x1x1024xf32>, tensor<1x1024x1000xf32>) -> tensor<1x1x1000xf32>
    %691 = tosa.add %690, %21 : (tensor<1x1x1000xf32>, tensor<1000xf32>) -> tensor<1x1x1000xf32>
    %692 = tosa.reshape %691 {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    return %692 : tensor<1x1000xf32>
  }
}

