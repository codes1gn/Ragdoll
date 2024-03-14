#map = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d3, d0, d2)>
#map3 = affine_map<(d0, d1, d2, d3) -> (d3, d0, d1)>
#map4 = affine_map<(d0) -> (d0)>
module {
  func.func @gmm_objective(%arg0: tensor<5xf32>, %arg1: tensor<5x128xf32>, %arg2: tensor<5x8256xf32>, %arg3: tensor<1000x128xf32>, %arg4: tensor<f32>, %arg5: tensor<f32>) -> tensor<f32> {
    %0 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %cst = arith.constant dense<1.290000e+02> : tensor<f32>
    %cst_0 = arith.constant dense<1.280000e+02> : tensor<f32>
    %cst_1 = arith.constant dense<2.000000e+00> : tensor<f32>
    %cst_2 = arith.constant dense<5.000000e+00> : tensor<f32>
    %cst_3 = arith.constant dense<5.000000e-01> : tensor<128xf32>
    %cst_4 = arith.constant dense<1.000000e+00> : tensor<128xf32>
    %cst_5 = arith.constant dense<676.520386> : tensor<128xf32>
    %cst_6 = arith.constant dense<-1259.13916> : tensor<128xf32>
    %cst_7 = arith.constant dense<2.000000e+00> : tensor<128xf32>
    %cst_8 = arith.constant dense<771.323425> : tensor<128xf32>
    %cst_9 = arith.constant dense<3.000000e+00> : tensor<128xf32>
    %cst_10 = arith.constant dense<-176.615036> : tensor<128xf32>
    %cst_11 = arith.constant dense<4.000000e+00> : tensor<128xf32>
    %cst_12 = arith.constant dense<12.5073433> : tensor<128xf32>
    %cst_13 = arith.constant dense<5.000000e+00> : tensor<128xf32>
    %cst_14 = arith.constant dense<-0.138571098> : tensor<128xf32>
    %cst_15 = arith.constant dense<6.000000e+00> : tensor<128xf32>
    %cst_16 = arith.constant dense<9.98436917E-6> : tensor<128xf32>
    %cst_17 = arith.constant dense<7.000000e+00> : tensor<128xf32>
    %cst_18 = arith.constant dense<1.50563267E-7> : tensor<128xf32>
    %cst_19 = arith.constant dense<8.000000e+00> : tensor<128xf32>
    %cst_20 = arith.constant dense<7.500000e+00> : tensor<128xf32>
    %cst_21 = arith.constant dense<2.01490307> : tensor<128xf32>
    %cst_22 = arith.constant dense<0.918938517> : tensor<128xf32>
    %cst_23 = arith.constant dense<3.14159274> : tensor<128xf32>
    %cst_24 = arith.constant dense<1.14472985> : tensor<128xf32>
    %cst_25 = arith.constant 0x7F800000 : f32
    %cst_26 = arith.constant dense<0x7F800000> : tensor<128xf32>
    %cst_27 = arith.constant dense<4652.18213> : tensor<f32>
    %cst_28 = arith.constant dense<"0x000000000000003F0000803F0000C03F0000004000002040000040400000604000008040000090400000A0400000B0400000C0400000D0400000E0400000F0400000004100000841000010410000184100002041000028410000304100003841000040410000484100005041000058410000604100006841000070410000784100008041000084410000884100008C4100009041000094410000984100009C410000A0410000A4410000A8410000AC410000B0410000B4410000B8410000BC410000C0410000C4410000C8410000CC410000D0410000D4410000D8410000DC410000E0410000E4410000E8410000EC410000F0410000F4410000F8410000FC41000000420000024200000442000006420000084200000A4200000C4200000E42000010420000124200001442000016420000184200001A4200001C4200001E42000020420000224200002442000026420000284200002A4200002C4200002E42000030420000324200003442000036420000384200003A4200003C4200003E42000040420000424200004442000046420000484200004A4200004C4200004E42000050420000524200005442000056420000584200005A4200005C4200005E42000060420000624200006442000066420000684200006A4200006C4200006E42000070420000724200007442000076420000784200007A4200007C4200007E42"> : tensor<128xf32>
    %cst_29 = arith.constant dense<[1, 0, 2]> : tensor<3xi32>
    %cst_30 = arith.constant 0.000000e+00 : f32
    %cst_31 = arith.constant dense<[0, 2, 1]> : tensor<3xi32>
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c127 = arith.constant 127 : index
    %cst_32 = arith.constant dense<1.000000e+03> : tensor<1xf32>
    %cst_33 = arith.constant dense<-117624.133> : tensor<f32>
    %cst_34 = arith.constant dense<5.000000e-01> : tensor<f32>
    %extracted_slice = tensor.extract_slice %arg2[0, 0] [5, 128] [1, 1] : tensor<5x8256xf32> to tensor<5x128xf32>
    %1 = "tosa.exp"(%extracted_slice) : (tensor<5x128xf32>) -> tensor<5x128xf32>
    %2 = "tosa.reduce_sum"(%extracted_slice) {axis = 1 : i64} : (tensor<5x128xf32>) -> tensor<5x1xf32>
    %extracted_slice_35 = tensor.extract_slice %arg2[0, 128] [5, 8128] [1, 1] : tensor<5x8256xf32> to tensor<5x8128xf32>
    %3 = tensor.empty() : tensor<5x127x127xf32>
    %4 = linalg.generic {indexing_maps = [#map], iterator_types = ["parallel", "parallel", "parallel"]} outs(%3 : tensor<5x127x127xf32>) {
    ^bb0(%out: f32):
      %137 = linalg.index 0 : index
      %138 = linalg.index 1 : index
      %139 = linalg.index 2 : index
      %140 = arith.cmpi sgt, %138, %139 : index
      %141 = scf.if %140 -> (f32) {
        scf.yield %cst_30 : f32
      } else {
        %142 = arith.muli %138, %c127 : index
        %143 = arith.addi %142, %139 : index
        %144 = arith.addi %138, %c1 : index
        %145 = arith.muli %144, %138 : index
        %146 = arith.divsi %145, %c2 : index
        %147 = arith.subi %143, %146 : index
        %extracted = tensor.extract %extracted_slice_35[%137, %147] : tensor<5x8128xf32>
        scf.yield %extracted : f32
      }
      linalg.yield %141 : f32
    } -> tensor<5x127x127xf32>
    %padded = tensor.pad %4 low[0, 0, 1] high[0, 1, 0] {
    ^bb0(%arg6: index, %arg7: index, %arg8: index):
      tensor.yield %cst_30 : f32
    } : tensor<5x127x127xf32> to tensor<5x128x128xf32>
    %5 = "tosa.transpose"(%padded, %cst_31) : (tensor<5x128x128xf32>, tensor<3xi32>) -> tensor<5x128x128xf32>
    %6 = "tosa.reshape"(%arg3) {new_shape = array<i64: 1000, 1, 128>} : (tensor<1000x128xf32>) -> tensor<1000x1x128xf32>
    %7 = "tosa.reshape"(%arg1) {new_shape = array<i64: 1, 5, 128>} : (tensor<5x128xf32>) -> tensor<1x5x128xf32>
    %8 = "tosa.sub"(%6, %7) : (tensor<1000x1x128xf32>, tensor<1x5x128xf32>) -> tensor<1000x5x128xf32>
    %9 = tensor.empty() : tensor<1000x5x128xf32>
    %10 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%5, %8 : tensor<5x128x128xf32>, tensor<1000x5x128xf32>) outs(%9 : tensor<1000x5x128xf32>) {
    ^bb0(%in: f32, %in_36: f32, %out: f32):
      %137 = arith.mulf %in, %in_36 : f32
      %138 = arith.addf %137, %out : f32
      linalg.yield %138 : f32
    } -> tensor<1000x5x128xf32>
    %11 = "tosa.reshape"(%1) {new_shape = array<i64: 1, 5, 128>} : (tensor<5x128xf32>) -> tensor<1x5x128xf32>
    %12 = "tosa.mul"(%11, %8) {shift = 0 : i32} : (tensor<1x5x128xf32>, tensor<1000x5x128xf32>) -> tensor<1000x5x128xf32>
    %13 = "tosa.add"(%12, %10) : (tensor<1000x5x128xf32>, tensor<1000x5x128xf32>) -> tensor<1000x5x128xf32>
    %14 = "tosa.mul"(%13, %13) {shift = 0 : i32} : (tensor<1000x5x128xf32>, tensor<1000x5x128xf32>) -> tensor<1000x5x128xf32>
    %15 = "tosa.reduce_sum"(%14) {axis = 2 : i64} : (tensor<1000x5x128xf32>) -> tensor<1000x5x1xf32>
    %16 = "tosa.reshape"(%arg0) {new_shape = array<i64: 1, 5, 1>} : (tensor<5xf32>) -> tensor<1x5x1xf32>
    %17 = "tosa.reshape"(%2) {new_shape = array<i64: 1, 5, 1>} : (tensor<5x1xf32>) -> tensor<1x5x1xf32>
    %18 = "tosa.add"(%16, %17) : (tensor<1x5x1xf32>, tensor<1x5x1xf32>) -> tensor<1x5x1xf32>
    %19 = "tosa.mul"(%15, %cst_34) {shift = 0 : i32} : (tensor<1000x5x1xf32>, tensor<f32>) -> tensor<1000x5x1xf32>
    %20 = "tosa.sub"(%18, %19) : (tensor<1x5x1xf32>, tensor<1000x5x1xf32>) -> tensor<1000x5x1xf32>
    %21 = "tosa.reduce_max"(%20) {axis = 1 : i64} : (tensor<1000x5x1xf32>) -> tensor<1000x1x1xf32>
    %22 = "tosa.reshape"(%21) {new_shape = array<i64: 1, 1000, 1>} : (tensor<1000x1x1xf32>) -> tensor<1x1000x1xf32>
    %23 = "tosa.transpose"(%20, %cst_29) : (tensor<1000x5x1xf32>, tensor<3xi32>) -> tensor<5x1000x1xf32>
    %24 = "tosa.sub"(%23, %22) : (tensor<5x1000x1xf32>, tensor<1x1000x1xf32>) -> tensor<5x1000x1xf32>
    %25 = "tosa.exp"(%24) : (tensor<5x1000x1xf32>) -> tensor<5x1000x1xf32>
    %26 = "tosa.reduce_sum"(%25) {axis = 0 : i64} : (tensor<5x1000x1xf32>) -> tensor<1x1000x1xf32>
    %27 = "tosa.log"(%26) : (tensor<1x1000x1xf32>) -> tensor<1x1000x1xf32>
    %28 = "tosa.add"(%27, %22) : (tensor<1x1000x1xf32>, tensor<1x1000x1xf32>) -> tensor<1x1000x1xf32>
    %29 = "tosa.reshape"(%28) {new_shape = array<i64: 1000>} : (tensor<1x1000x1xf32>) -> tensor<1000xf32>
    %30 = "tosa.reduce_sum"(%29) {axis = 0 : i64} : (tensor<1000xf32>) -> tensor<1xf32>
    %31 = "tosa.add"(%30, %cst_33) : (tensor<1xf32>, tensor<f32>) -> tensor<1xf32>
    %32 = "tosa.reduce_max"(%arg0) {axis = 0 : i64} : (tensor<5xf32>) -> tensor<1xf32>
    %33 = "tosa.sub"(%arg0, %32) : (tensor<5xf32>, tensor<1xf32>) -> tensor<5xf32>
    %34 = "tosa.exp"(%33) : (tensor<5xf32>) -> tensor<5xf32>
    %35 = "tosa.reduce_sum"(%34) {axis = 0 : i64} : (tensor<5xf32>) -> tensor<1xf32>
    %36 = "tosa.log"(%35) : (tensor<1xf32>) -> tensor<1xf32>
    %37 = "tosa.add"(%36, %32) : (tensor<1xf32>, tensor<1xf32>) -> tensor<1xf32>
    %38 = "tosa.mul"(%37, %cst_32) {shift = 0 : i32} : (tensor<1xf32>, tensor<1xf32>) -> tensor<1xf32>
    %39 = "tosa.add"(%arg5, %cst) : (tensor<f32>, tensor<f32>) -> tensor<f32>
    %40 = "tosa.mul"(%arg4, %arg4) {shift = 0 : i32} : (tensor<f32>, tensor<f32>) -> tensor<f32>
    %41 = "tosa.mul"(%40, %cst_34) {shift = 0 : i32} : (tensor<f32>, tensor<f32>) -> tensor<f32>
    %42 = "tosa.mul"(%1, %1) {shift = 0 : i32} : (tensor<5x128xf32>, tensor<5x128xf32>) -> tensor<5x128xf32>
    %43 = "tosa.reduce_sum"(%42) {axis = 1 : i64} : (tensor<5x128xf32>) -> tensor<5x1xf32>
    %44 = "tosa.mul"(%extracted_slice_35, %extracted_slice_35) {shift = 0 : i32} : (tensor<5x8128xf32>, tensor<5x8128xf32>) -> tensor<5x8128xf32>
    %45 = "tosa.reduce_sum"(%44) {axis = 1 : i64} : (tensor<5x8128xf32>) -> tensor<5x1xf32>
    %46 = "tosa.mul"(%arg5, %2) {shift = 0 : i32} : (tensor<f32>, tensor<5x1xf32>) -> tensor<5x1xf32>
    %47 = "tosa.add"(%43, %45) : (tensor<5x1xf32>, tensor<5x1xf32>) -> tensor<5x1xf32>
    %48 = "tosa.mul"(%41, %47) {shift = 0 : i32} : (tensor<f32>, tensor<5x1xf32>) -> tensor<5x1xf32>
    %49 = "tosa.sub"(%48, %46) : (tensor<5x1xf32>, tensor<5x1xf32>) -> tensor<5x1xf32>
    %50 = "tosa.reduce_sum"(%49) {axis = 0 : i64} : (tensor<5x1xf32>) -> tensor<1x1xf32>
    %51 = "tosa.mul"(%39, %cst_0) {shift = 0 : i32} : (tensor<f32>, tensor<f32>) -> tensor<f32>
    %52 = "tosa.rsqrt"(%cst_1) : (tensor<f32>) -> tensor<f32>
    %53 = "tosa.mul"(%arg4, %52) {shift = 0 : i32} : (tensor<f32>, tensor<f32>) -> tensor<f32>
    %54 = "tosa.log"(%53) : (tensor<f32>) -> tensor<f32>
    %55 = "tosa.mul"(%51, %54) {shift = 0 : i32} : (tensor<f32>, tensor<f32>) -> tensor<f32>
    %56 = "tosa.mul"(%39, %cst_34) {shift = 0 : i32} : (tensor<f32>, tensor<f32>) -> tensor<f32>
    %57 = "tosa.sub"(%56, %cst_28) : (tensor<f32>, tensor<128xf32>) -> tensor<128xf32>
    %58 = tensor.empty() : tensor<128xi1>
    %59 = "tosa.greater"(%cst_3, %57) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xi1>
    %60 = tensor.empty() : tensor<128xf32>
    %61 = "tosa.negate"(%57) : (tensor<128xf32>) -> tensor<128xf32>
    %62 = "tosa.sub"(%57, %cst_4) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %63 = "tosa.select"(%59, %61, %62) : (tensor<128xi1>, tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %64 = "tosa.add"(%63, %cst_4) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %65 = "tosa.reciprocal"(%64) : (tensor<128xf32>) -> tensor<128xf32>
    %66 = "tosa.mul"(%65, %cst_5) {shift = 0 : i32} : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %67 = "tosa.add"(%66, %cst_4) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %68 = "tosa.add"(%63, %cst_7) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %69 = "tosa.reciprocal"(%68) : (tensor<128xf32>) -> tensor<128xf32>
    %70 = "tosa.mul"(%69, %cst_6) {shift = 0 : i32} : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %71 = "tosa.add"(%67, %70) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %72 = "tosa.add"(%63, %cst_9) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %73 = "tosa.reciprocal"(%72) : (tensor<128xf32>) -> tensor<128xf32>
    %74 = "tosa.mul"(%73, %cst_8) {shift = 0 : i32} : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %75 = "tosa.add"(%71, %74) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %76 = "tosa.add"(%63, %cst_11) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %77 = "tosa.reciprocal"(%76) : (tensor<128xf32>) -> tensor<128xf32>
    %78 = "tosa.mul"(%77, %cst_10) {shift = 0 : i32} : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %79 = "tosa.add"(%75, %78) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %80 = "tosa.add"(%63, %cst_13) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %81 = "tosa.reciprocal"(%80) : (tensor<128xf32>) -> tensor<128xf32>
    %82 = "tosa.mul"(%81, %cst_12) {shift = 0 : i32} : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %83 = "tosa.add"(%79, %82) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %84 = "tosa.add"(%63, %cst_15) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %85 = "tosa.reciprocal"(%84) : (tensor<128xf32>) -> tensor<128xf32>
    %86 = "tosa.mul"(%85, %cst_14) {shift = 0 : i32} : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %87 = "tosa.add"(%83, %86) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %88 = "tosa.add"(%63, %cst_17) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %89 = "tosa.reciprocal"(%88) : (tensor<128xf32>) -> tensor<128xf32>
    %90 = "tosa.mul"(%89, %cst_16) {shift = 0 : i32} : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %91 = "tosa.add"(%87, %90) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %92 = "tosa.add"(%63, %cst_19) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %93 = "tosa.reciprocal"(%92) : (tensor<128xf32>) -> tensor<128xf32>
    %94 = "tosa.mul"(%93, %cst_18) {shift = 0 : i32} : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %95 = "tosa.add"(%91, %94) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %96 = "tosa.add"(%63, %cst_20) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %97 = "tosa.reciprocal"(%cst_20) : (tensor<128xf32>) -> tensor<128xf32>
    %98 = "tosa.mul"(%63, %97) {shift = 0 : i32} : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %99 = "tosa.add"(%98, %0) : (tensor<128xf32>, tensor<f32>) -> tensor<128xf32>
    %100 = "tosa.log"(%99) : (tensor<128xf32>) -> tensor<128xf32>
    %101 = "tosa.add"(%100, %cst_21) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %102 = "tosa.reciprocal"(%101) : (tensor<128xf32>) -> tensor<128xf32>
    %103 = "tosa.mul"(%96, %102) {shift = 0 : i32} : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %104 = "tosa.add"(%63, %cst_3) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %105 = "tosa.sub"(%104, %103) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %106 = "tosa.mul"(%105, %101) {shift = 0 : i32} : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %107 = "tosa.log"(%95) : (tensor<128xf32>) -> tensor<128xf32>
    %108 = "tosa.add"(%106, %cst_22) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %109 = "tosa.add"(%108, %107) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %110 = "tosa.abs"(%57) : (tensor<128xf32>) -> tensor<128xf32>
    %111 = "tosa.floor"(%110) : (tensor<128xf32>) -> tensor<128xf32>
    %112 = "tosa.sub"(%110, %111) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %113 = "tosa.greater"(%112, %cst_3) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xi1>
    %114 = "tosa.sub"(%cst_4, %112) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %115 = "tosa.select"(%113, %114, %112) : (tensor<128xi1>, tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %116 = "tosa.mul"(%115, %cst_23) {shift = 0 : i32} : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %117 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = ["parallel"]} ins(%116 : tensor<128xf32>) outs(%60 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %137 = math.sin %in : f32
      linalg.yield %137 : f32
    } -> tensor<128xf32>
    %118 = "tosa.log"(%117) : (tensor<128xf32>) -> tensor<128xf32>
    %119 = "tosa.sub"(%cst_24, %118) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %120 = "tosa.sub"(%119, %109) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %121 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = ["parallel"]} ins(%118 : tensor<128xf32>) outs(%58 : tensor<128xi1>) {
    ^bb0(%in: f32, %out: i1):
      %137 = math.absf %in : f32
      %138 = arith.cmpf one, %137, %cst_25 : f32
      linalg.yield %138 : i1
    } -> tensor<128xi1>
    %122 = "tosa.negate"(%118) : (tensor<128xf32>) -> tensor<128xf32>
    %123 = "tosa.select"(%121, %120, %122) : (tensor<128xi1>, tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %124 = "tosa.select"(%59, %123, %109) : (tensor<128xi1>, tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %125 = "tosa.equal"(%110, %cst_26) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xi1>
    %126 = "tosa.select"(%125, %cst_26, %124) : (tensor<128xi1>, tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %127 = "tosa.reduce_sum"(%126) {axis = 0 : i64} : (tensor<128xf32>) -> tensor<1xf32>
    %128 = "tosa.add"(%127, %cst_27) : (tensor<1xf32>, tensor<f32>) -> tensor<1xf32>
    %129 = "tosa.reshape"(%128) {new_shape = array<i64>} : (tensor<1xf32>) -> tensor<f32>
    %130 = "tosa.sub"(%55, %129) : (tensor<f32>, tensor<f32>) -> tensor<f32>
    %131 = "tosa.mul"(%130, %cst_2) {shift = 0 : i32} : (tensor<f32>, tensor<f32>) -> tensor<f32>
    %132 = "tosa.sub"(%50, %131) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %133 = "tosa.reshape"(%132) {new_shape = array<i64>} : (tensor<1x1xf32>) -> tensor<f32>
    %134 = "tosa.sub"(%31, %38) : (tensor<1xf32>, tensor<1xf32>) -> tensor<1xf32>
    %135 = "tosa.add"(%134, %133) : (tensor<1xf32>, tensor<f32>) -> tensor<1xf32>
    %136 = "tosa.reshape"(%135) {new_shape = array<i64>} : (tensor<1xf32>) -> tensor<f32>
    return %136 : tensor<f32>
  }
  
  func.func @backward(%alphas : tensor<5xf32>,
                      %means : tensor<5x128xf32>,
                      %icf : tensor<5x8256xf32>,
                      %x : tensor<1000x128xf32>,
                      %wishart_gamma : tensor<f32>,
                      %wishart_m : tensor<f32>,
                      %dresult : tensor<f32>) -> (tensor<5xf32>, tensor<5x128xf32>, tensor<5x8256xf32>, tensor<1000x128xf32>, tensor<f32>, tensor<f32>) {
    %dalphas, %dmeans, %dicf, %dx, %dwishart_gamma, %dwishart_m = "nabla.vjp"(%alphas, %means, %icf, %x, %wishart_gamma, %wishart_m, %dresult) { func = @gmm_objective }
    : (tensor<5xf32>, tensor<5x128xf32>, tensor<5x8256xf32>, tensor<1000x128xf32>, tensor<f32>, tensor<f32>, tensor<f32>) -> (tensor<5xf32>, tensor<5x128xf32>, tensor<5x8256xf32>, tensor<1000x128xf32>, tensor<f32>, tensor<f32>)
    return %dalphas, %dmeans, %dicf, %dx, %dwishart_gamma, %dwishart_m : tensor<5xf32>, tensor<5x128xf32>, tensor<5x8256xf32>, tensor<1000x128xf32>, tensor<f32>, tensor<f32>
  }
}

