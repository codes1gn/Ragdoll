module {
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> (tensor<1x1000xf32>, tensor<1x128x1x1xf32>, tensor<1x992x7x7xf32>, tensor<1x992x7x7xf32>, tensor<1x992x1x1xf32>, tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>, tensor<1x960x7x7xf32>, tensor<1x960x7x7xf32>, tensor<1x960x1x1xf32>, tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>, tensor<1x928x7x7xf32>, tensor<1x928x7x7xf32>, tensor<1x928x1x1xf32>, tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>, tensor<1x896x7x7xf32>, tensor<1x896x7x7xf32>, tensor<1x896x1x1xf32>, tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>, tensor<1x864x7x7xf32>, tensor<1x864x7x7xf32>, tensor<1x864x1x1xf32>, tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>, tensor<1x832x7x7xf32>, tensor<1x832x7x7xf32>, tensor<1x832x1x1xf32>, tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>, tensor<1x800x7x7xf32>, tensor<1x800x7x7xf32>, tensor<1x800x1x1xf32>, tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>, tensor<1x768x7x7xf32>, tensor<1x768x7x7xf32>, tensor<1x768x1x1xf32>, tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>, tensor<1x736x7x7xf32>, tensor<1x736x7x7xf32>, tensor<1x736x1x1xf32>, tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>, tensor<1x704x7x7xf32>, tensor<1x704x7x7xf32>, tensor<1x704x1x1xf32>, tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>, tensor<1x672x7x7xf32>, tensor<1x672x7x7xf32>, tensor<1x672x1x1xf32>, tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>, tensor<1x640x7x7xf32>, tensor<1x640x7x7xf32>, tensor<1x640x1x1xf32>, tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>, tensor<1x608x7x7xf32>, tensor<1x608x7x7xf32>, tensor<1x608x1x1xf32>, tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>, tensor<1x576x7x7xf32>, tensor<1x576x7x7xf32>, tensor<1x576x1x1xf32>, tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>, tensor<1x544x7x7xf32>, tensor<1x544x7x7xf32>, tensor<1x544x1x1xf32>, tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>, tensor<1x14x14x512xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x992x14x14xf32>, tensor<1x992x14x14xf32>, tensor<1x992x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x960x14x14xf32>, tensor<1x960x14x14xf32>, tensor<1x960x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x928x14x14xf32>, tensor<1x928x14x14xf32>, tensor<1x928x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x896x14x14xf32>, tensor<1x896x14x14xf32>, tensor<1x896x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x864x14x14xf32>, tensor<1x864x14x14xf32>, tensor<1x864x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x832x14x14xf32>, tensor<1x832x14x14xf32>, tensor<1x832x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x800x14x14xf32>, tensor<1x800x14x14xf32>, tensor<1x800x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>, tensor<1x768x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x736x14x14xf32>, tensor<1x736x14x14xf32>, tensor<1x736x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x704x14x14xf32>, tensor<1x704x14x14xf32>, tensor<1x704x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x672x14x14xf32>, tensor<1x672x14x14xf32>, tensor<1x672x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x640x14x14xf32>, tensor<1x640x14x14xf32>, tensor<1x640x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x608x14x14xf32>, tensor<1x608x14x14xf32>, tensor<1x608x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x576x14x14xf32>, tensor<1x576x14x14xf32>, tensor<1x576x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x544x14x14xf32>, tensor<1x544x14x14xf32>, tensor<1x544x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x480x14x14xf32>, tensor<1x480x14x14xf32>, tensor<1x480x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x448x14x14xf32>, tensor<1x448x14x14xf32>, tensor<1x448x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x416x14x14xf32>, tensor<1x416x14x14xf32>, tensor<1x416x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x384x14x14xf32>, tensor<1x384x14x14xf32>, tensor<1x384x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x352x14x14xf32>, tensor<1x352x14x14xf32>, tensor<1x352x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x320x14x14xf32>, tensor<1x320x14x14xf32>, tensor<1x320x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x288x14x14xf32>, tensor<1x288x14x14xf32>, tensor<1x288x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>, tensor<1x28x28x256xf32>, tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>, tensor<1x480x28x28xf32>, tensor<1x480x28x28xf32>, tensor<1x480x1x1xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>, tensor<1x448x28x28xf32>, tensor<1x448x28x28xf32>, tensor<1x448x1x1xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>, tensor<1x416x28x28xf32>, tensor<1x416x28x28xf32>, tensor<1x416x1x1xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>, tensor<1x384x28x28xf32>, tensor<1x384x28x28xf32>, tensor<1x384x1x1xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>, tensor<1x352x28x28xf32>, tensor<1x352x28x28xf32>, tensor<1x352x1x1xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>, tensor<1x320x28x28xf32>, tensor<1x320x28x28xf32>, tensor<1x320x1x1xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>, tensor<1x288x28x28xf32>, tensor<1x288x28x28xf32>, tensor<1x288x1x1xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>, tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>, tensor<1x224x28x28xf32>, tensor<1x224x28x28xf32>, tensor<1x224x1x1xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>, tensor<1x192x28x28xf32>, tensor<1x192x28x28xf32>, tensor<1x192x1x1xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>, tensor<1x160x28x28xf32>, tensor<1x160x28x28xf32>, tensor<1x160x1x1xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) {
    %0 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x1024x1x1xf32>}> : () -> tensor<1x1024x1x1xf32>
    %1 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x992x1x1xf32>}> : () -> tensor<1x992x1x1xf32>
    %2 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x960x1x1xf32>}> : () -> tensor<1x960x1x1xf32>
    %3 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x928x1x1xf32>}> : () -> tensor<1x928x1x1xf32>
    %4 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x896x1x1xf32>}> : () -> tensor<1x896x1x1xf32>
    %5 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x864x1x1xf32>}> : () -> tensor<1x864x1x1xf32>
    %6 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x832x1x1xf32>}> : () -> tensor<1x832x1x1xf32>
    %7 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x800x1x1xf32>}> : () -> tensor<1x800x1x1xf32>
    %8 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x768x1x1xf32>}> : () -> tensor<1x768x1x1xf32>
    %9 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x736x1x1xf32>}> : () -> tensor<1x736x1x1xf32>
    %10 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x704x1x1xf32>}> : () -> tensor<1x704x1x1xf32>
    %11 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x672x1x1xf32>}> : () -> tensor<1x672x1x1xf32>
    %12 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x640x1x1xf32>}> : () -> tensor<1x640x1x1xf32>
    %13 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x608x1x1xf32>}> : () -> tensor<1x608x1x1xf32>
    %14 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x576x1x1xf32>}> : () -> tensor<1x576x1x1xf32>
    %15 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x544x1x1xf32>}> : () -> tensor<1x544x1x1xf32>
    %16 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x512x1x1xf32>}> : () -> tensor<1x512x1x1xf32>
    %17 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x480x1x1xf32>}> : () -> tensor<1x480x1x1xf32>
    %18 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x448x1x1xf32>}> : () -> tensor<1x448x1x1xf32>
    %19 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x416x1x1xf32>}> : () -> tensor<1x416x1x1xf32>
    %20 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x384x1x1xf32>}> : () -> tensor<1x384x1x1xf32>
    %21 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x352x1x1xf32>}> : () -> tensor<1x352x1x1xf32>
    %22 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x320x1x1xf32>}> : () -> tensor<1x320x1x1xf32>
    %23 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x288x1x1xf32>}> : () -> tensor<1x288x1x1xf32>
    %24 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x256x1x1xf32>}> : () -> tensor<1x256x1x1xf32>
    %25 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x224x1x1xf32>}> : () -> tensor<1x224x1x1xf32>
    %26 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x192x1x1xf32>}> : () -> tensor<1x192x1x1xf32>
    %27 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x160x1x1xf32>}> : () -> tensor<1x160x1x1xf32>
    %28 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x96x1x1xf32>}> : () -> tensor<1x96x1x1xf32>
    %29 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x128x1x1xf32>}> : () -> tensor<1x128x1x1xf32>
    %30 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1x64x1x1xf32>}> : () -> tensor<1x64x1x1xf32>
    %cst = arith.constant dense<0.000000e+00> : tensor<1x96x56x56xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1x128x56x56xf32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<1x160x56x56xf32>
    %cst_2 = arith.constant dense<0.000000e+00> : tensor<1x192x56x56xf32>
    %cst_3 = arith.constant dense<0.000000e+00> : tensor<1x224x56x56xf32>
    %cst_4 = arith.constant dense<0.000000e+00> : tensor<1x256x56x56xf32>
    %cst_5 = arith.constant dense<0.000000e+00> : tensor<1x160x28x28xf32>
    %cst_6 = arith.constant dense<0.000000e+00> : tensor<1x192x28x28xf32>
    %cst_7 = arith.constant dense<0.000000e+00> : tensor<1x224x28x28xf32>
    %cst_8 = arith.constant dense<0.000000e+00> : tensor<1x256x28x28xf32>
    %cst_9 = arith.constant dense<0.000000e+00> : tensor<1x288x28x28xf32>
    %cst_10 = arith.constant dense<0.000000e+00> : tensor<1x320x28x28xf32>
    %cst_11 = arith.constant dense<0.000000e+00> : tensor<1x352x28x28xf32>
    %cst_12 = arith.constant dense<0.000000e+00> : tensor<1x384x28x28xf32>
    %cst_13 = arith.constant dense<0.000000e+00> : tensor<1x416x28x28xf32>
    %cst_14 = arith.constant dense<0.000000e+00> : tensor<1x448x28x28xf32>
    %cst_15 = arith.constant dense<0.000000e+00> : tensor<1x480x28x28xf32>
    %cst_16 = arith.constant dense<0.000000e+00> : tensor<1x512x28x28xf32>
    %cst_17 = arith.constant dense<0.000000e+00> : tensor<1x288x14x14xf32>
    %cst_18 = arith.constant dense<0.000000e+00> : tensor<1x320x14x14xf32>
    %cst_19 = arith.constant dense<0.000000e+00> : tensor<1x352x14x14xf32>
    %cst_20 = arith.constant dense<0.000000e+00> : tensor<1x384x14x14xf32>
    %cst_21 = arith.constant dense<0.000000e+00> : tensor<1x416x14x14xf32>
    %cst_22 = arith.constant dense<0.000000e+00> : tensor<1x448x14x14xf32>
    %cst_23 = arith.constant dense<0.000000e+00> : tensor<1x480x14x14xf32>
    %cst_24 = arith.constant dense<0.000000e+00> : tensor<1x512x14x14xf32>
    %cst_25 = arith.constant dense<0.000000e+00> : tensor<1x544x14x14xf32>
    %cst_26 = arith.constant dense<0.000000e+00> : tensor<1x576x14x14xf32>
    %cst_27 = arith.constant dense<0.000000e+00> : tensor<1x608x14x14xf32>
    %cst_28 = arith.constant dense<0.000000e+00> : tensor<1x640x14x14xf32>
    %cst_29 = arith.constant dense<0.000000e+00> : tensor<1x672x14x14xf32>
    %cst_30 = arith.constant dense<0.000000e+00> : tensor<1x704x14x14xf32>
    %cst_31 = arith.constant dense<0.000000e+00> : tensor<1x736x14x14xf32>
    %cst_32 = arith.constant dense<0.000000e+00> : tensor<1x768x14x14xf32>
    %cst_33 = arith.constant dense<0.000000e+00> : tensor<1x800x14x14xf32>
    %cst_34 = arith.constant dense<0.000000e+00> : tensor<1x832x14x14xf32>
    %cst_35 = arith.constant dense<0.000000e+00> : tensor<1x864x14x14xf32>
    %cst_36 = arith.constant dense<0.000000e+00> : tensor<1x896x14x14xf32>
    %cst_37 = arith.constant dense<0.000000e+00> : tensor<1x928x14x14xf32>
    %cst_38 = arith.constant dense<0.000000e+00> : tensor<1x960x14x14xf32>
    %cst_39 = arith.constant dense<0.000000e+00> : tensor<1x992x14x14xf32>
    %cst_40 = arith.constant dense<0.000000e+00> : tensor<1x1024x14x14xf32>
    %cst_41 = arith.constant dense<0.000000e+00> : tensor<1x544x7x7xf32>
    %cst_42 = arith.constant dense<0.000000e+00> : tensor<1x576x7x7xf32>
    %cst_43 = arith.constant dense<0.000000e+00> : tensor<1x608x7x7xf32>
    %cst_44 = arith.constant dense<0.000000e+00> : tensor<1x640x7x7xf32>
    %cst_45 = arith.constant dense<0.000000e+00> : tensor<1x672x7x7xf32>
    %cst_46 = arith.constant dense<0.000000e+00> : tensor<1x704x7x7xf32>
    %cst_47 = arith.constant dense<0.000000e+00> : tensor<1x736x7x7xf32>
    %cst_48 = arith.constant dense<0.000000e+00> : tensor<1x768x7x7xf32>
    %cst_49 = arith.constant dense<0.000000e+00> : tensor<1x800x7x7xf32>
    %cst_50 = arith.constant dense<0.000000e+00> : tensor<1x832x7x7xf32>
    %cst_51 = arith.constant dense<0.000000e+00> : tensor<1x864x7x7xf32>
    %cst_52 = arith.constant dense<0.000000e+00> : tensor<1x896x7x7xf32>
    %cst_53 = arith.constant dense<0.000000e+00> : tensor<1x928x7x7xf32>
    %cst_54 = arith.constant dense<0.000000e+00> : tensor<1x960x7x7xf32>
    %cst_55 = arith.constant dense<0.000000e+00> : tensor<1x992x7x7xf32>
    %cst_56 = arith.constant dense<0.000000e+00> : tensor<1x1024x7x7xf32>
    %31 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<64x7x7x3xf32>}> : () -> tensor<64x7x7x3xf32>
    %32 = "tosa.const"() <{value = dense<[0, 2, 3, 1]> : tensor<4xi64>}> : () -> tensor<4xi64>
    %33 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<64xf32>}> : () -> tensor<64xf32>
    %34 = "tosa.const"() <{value = dense<[0, 3, 1, 2]> : tensor<4xi64>}> : () -> tensor<4xi64>
    %35 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x64x1x1xf32>}> : () -> tensor<1x64x1x1xf32>
    %36 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x64xf32>}> : () -> tensor<128x1x1x64xf32>
    %37 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<128xf32>}> : () -> tensor<128xf32>
    %38 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x128x1x1xf32>}> : () -> tensor<1x128x1x1xf32>
    %39 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<32x3x3x128xf32>}> : () -> tensor<32x3x3x128xf32>
    %40 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<32xf32>}> : () -> tensor<32xf32>
    %41 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x96x1x1xf32>}> : () -> tensor<1x96x1x1xf32>
    %42 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x96xf32>}> : () -> tensor<128x1x1x96xf32>
    %43 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x128xf32>}> : () -> tensor<128x1x1x128xf32>
    %44 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x160x1x1xf32>}> : () -> tensor<1x160x1x1xf32>
    %45 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x160xf32>}> : () -> tensor<128x1x1x160xf32>
    %46 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x192x1x1xf32>}> : () -> tensor<1x192x1x1xf32>
    %47 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x192xf32>}> : () -> tensor<128x1x1x192xf32>
    %48 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x224x1x1xf32>}> : () -> tensor<1x224x1x1xf32>
    %49 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x224xf32>}> : () -> tensor<128x1x1x224xf32>
    %50 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x256x1x1xf32>}> : () -> tensor<1x256x1x1xf32>
    %51 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x256xf32>}> : () -> tensor<128x1x1x256xf32>
    %52 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x288x1x1xf32>}> : () -> tensor<1x288x1x1xf32>
    %53 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x288xf32>}> : () -> tensor<128x1x1x288xf32>
    %54 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x320x1x1xf32>}> : () -> tensor<1x320x1x1xf32>
    %55 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x320xf32>}> : () -> tensor<128x1x1x320xf32>
    %56 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x352x1x1xf32>}> : () -> tensor<1x352x1x1xf32>
    %57 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x352xf32>}> : () -> tensor<128x1x1x352xf32>
    %58 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x384x1x1xf32>}> : () -> tensor<1x384x1x1xf32>
    %59 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x384xf32>}> : () -> tensor<128x1x1x384xf32>
    %60 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x416x1x1xf32>}> : () -> tensor<1x416x1x1xf32>
    %61 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x416xf32>}> : () -> tensor<128x1x1x416xf32>
    %62 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x448x1x1xf32>}> : () -> tensor<1x448x1x1xf32>
    %63 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x448xf32>}> : () -> tensor<128x1x1x448xf32>
    %64 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x480x1x1xf32>}> : () -> tensor<1x480x1x1xf32>
    %65 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x480xf32>}> : () -> tensor<128x1x1x480xf32>
    %66 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x512x1x1xf32>}> : () -> tensor<1x512x1x1xf32>
    %67 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<256x1x1x512xf32>}> : () -> tensor<256x1x1x512xf32>
    %68 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<256xf32>}> : () -> tensor<256xf32>
    %69 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x512xf32>}> : () -> tensor<128x1x1x512xf32>
    %70 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x544x1x1xf32>}> : () -> tensor<1x544x1x1xf32>
    %71 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x544xf32>}> : () -> tensor<128x1x1x544xf32>
    %72 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x576x1x1xf32>}> : () -> tensor<1x576x1x1xf32>
    %73 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x576xf32>}> : () -> tensor<128x1x1x576xf32>
    %74 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x608x1x1xf32>}> : () -> tensor<1x608x1x1xf32>
    %75 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x608xf32>}> : () -> tensor<128x1x1x608xf32>
    %76 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x640x1x1xf32>}> : () -> tensor<1x640x1x1xf32>
    %77 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x640xf32>}> : () -> tensor<128x1x1x640xf32>
    %78 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x672x1x1xf32>}> : () -> tensor<1x672x1x1xf32>
    %79 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x672xf32>}> : () -> tensor<128x1x1x672xf32>
    %80 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x704x1x1xf32>}> : () -> tensor<1x704x1x1xf32>
    %81 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x704xf32>}> : () -> tensor<128x1x1x704xf32>
    %82 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x736x1x1xf32>}> : () -> tensor<1x736x1x1xf32>
    %83 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x736xf32>}> : () -> tensor<128x1x1x736xf32>
    %84 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x768x1x1xf32>}> : () -> tensor<1x768x1x1xf32>
    %85 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x768xf32>}> : () -> tensor<128x1x1x768xf32>
    %86 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x800x1x1xf32>}> : () -> tensor<1x800x1x1xf32>
    %87 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x800xf32>}> : () -> tensor<128x1x1x800xf32>
    %88 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x832x1x1xf32>}> : () -> tensor<1x832x1x1xf32>
    %89 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x832xf32>}> : () -> tensor<128x1x1x832xf32>
    %90 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x864x1x1xf32>}> : () -> tensor<1x864x1x1xf32>
    %91 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x864xf32>}> : () -> tensor<128x1x1x864xf32>
    %92 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x896x1x1xf32>}> : () -> tensor<1x896x1x1xf32>
    %93 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x896xf32>}> : () -> tensor<128x1x1x896xf32>
    %94 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x928x1x1xf32>}> : () -> tensor<1x928x1x1xf32>
    %95 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x928xf32>}> : () -> tensor<128x1x1x928xf32>
    %96 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x960x1x1xf32>}> : () -> tensor<1x960x1x1xf32>
    %97 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x960xf32>}> : () -> tensor<128x1x1x960xf32>
    %98 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x992x1x1xf32>}> : () -> tensor<1x992x1x1xf32>
    %99 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x992xf32>}> : () -> tensor<128x1x1x992xf32>
    %100 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x1024x1x1xf32>}> : () -> tensor<1x1024x1x1xf32>
    %101 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<512x1x1x1024xf32>}> : () -> tensor<512x1x1x1024xf32>
    %102 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<512xf32>}> : () -> tensor<512xf32>
    %103 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x1024x1000xf32>}> : () -> tensor<1x1024x1000xf32>
    %104 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1000xf32>}> : () -> tensor<1000xf32>
    %105 = tosa.transpose %arg0, %32 : (tensor<1x3x224x224xf32>, tensor<4xi64>) -> tensor<1x224x224x3xf32>
    %106 = tosa.conv2d %105, %31, %33 {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 3, 3>, stride = array<i64: 2, 2>} : (tensor<1x224x224x3xf32>, tensor<64x7x7x3xf32>, tensor<64xf32>) -> tensor<1x112x112x64xf32>
    %107 = tosa.transpose %106, %34 : (tensor<1x112x112x64xf32>, tensor<4xi64>) -> tensor<1x64x112x112xf32>
    %108 = tosa.sub %107, %35 : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %109 = tosa.rsqrt %30 : (tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %110 = tosa.mul %108, %109 {shift = 0 : i8} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %111 = tosa.mul %110, %35 {shift = 0 : i8} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %112 = tosa.add %111, %35 : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %113 = tosa.clamp %112 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %114 = tosa.transpose %113, %32 : (tensor<1x64x112x112xf32>, tensor<4xi64>) -> tensor<1x112x112x64xf32>
    %115 = tosa.max_pool2d %114 {kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>) -> tensor<1x56x56x64xf32>
    %116 = tosa.transpose %115, %34 : (tensor<1x56x56x64xf32>, tensor<4xi64>) -> tensor<1x64x56x56xf32>
    %117 = tosa.sub %116, %35 : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %118 = tosa.mul %117, %109 {shift = 0 : i8} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %119 = tosa.mul %118, %35 {shift = 0 : i8} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %120 = tosa.add %119, %35 : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %121 = tosa.clamp %120 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %122 = tosa.transpose %121, %32 : (tensor<1x64x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x64xf32>
    %123 = tosa.conv2d %122, %36, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<128x1x1x64xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %124 = tosa.transpose %123, %34 : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %125 = tosa.sub %124, %38 : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %126 = tosa.rsqrt %29 : (tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %127 = tosa.mul %125, %126 {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %128 = tosa.mul %127, %38 {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %129 = tosa.add %128, %38 : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %130 = tosa.clamp %129 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %131 = tosa.transpose %130, %32 : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %132 = tosa.conv2d %131, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x56x56x32xf32>
    %133 = tosa.transpose %132, %34 : (tensor<1x56x56x32xf32>, tensor<4xi64>) -> tensor<1x32x56x56xf32>
    %inserted_slice = tensor.insert_slice %116 into %cst[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x96x56x56xf32>
    %inserted_slice_57 = tensor.insert_slice %133 into %inserted_slice[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x96x56x56xf32>
    %134 = tosa.sub %inserted_slice_57, %41 : (tensor<1x96x56x56xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x56x56xf32>
    %135 = tosa.rsqrt %28 : (tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %136 = tosa.mul %134, %135 {shift = 0 : i8} : (tensor<1x96x56x56xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x56x56xf32>
    %137 = tosa.mul %136, %41 {shift = 0 : i8} : (tensor<1x96x56x56xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x56x56xf32>
    %138 = tosa.add %137, %41 : (tensor<1x96x56x56xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x56x56xf32>
    %139 = tosa.clamp %138 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x56x56xf32>) -> tensor<1x96x56x56xf32>
    %140 = tosa.transpose %139, %32 : (tensor<1x96x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x96xf32>
    %141 = tosa.conv2d %140, %42, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x96xf32>, tensor<128x1x1x96xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %142 = tosa.transpose %141, %34 : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %143 = tosa.sub %142, %38 : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %144 = tosa.mul %143, %126 {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %145 = tosa.mul %144, %38 {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %146 = tosa.add %145, %38 : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %147 = tosa.clamp %146 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %148 = tosa.transpose %147, %32 : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %149 = tosa.conv2d %148, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x56x56x32xf32>
    %150 = tosa.transpose %149, %34 : (tensor<1x56x56x32xf32>, tensor<4xi64>) -> tensor<1x32x56x56xf32>
    %inserted_slice_58 = tensor.insert_slice %116 into %cst_0[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x128x56x56xf32>
    %inserted_slice_59 = tensor.insert_slice %133 into %inserted_slice_58[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x128x56x56xf32>
    %inserted_slice_60 = tensor.insert_slice %150 into %inserted_slice_59[0, 96, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x128x56x56xf32>
    %151 = tosa.sub %inserted_slice_60, %38 : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %152 = tosa.mul %151, %126 {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %153 = tosa.mul %152, %38 {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %154 = tosa.add %153, %38 : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %155 = tosa.clamp %154 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %156 = tosa.transpose %155, %32 : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %157 = tosa.conv2d %156, %43, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<128x1x1x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %158 = tosa.transpose %157, %34 : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %159 = tosa.sub %158, %38 : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %160 = tosa.mul %159, %126 {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %161 = tosa.mul %160, %38 {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %162 = tosa.add %161, %38 : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %163 = tosa.clamp %162 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %164 = tosa.transpose %163, %32 : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %165 = tosa.conv2d %164, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x56x56x32xf32>
    %166 = tosa.transpose %165, %34 : (tensor<1x56x56x32xf32>, tensor<4xi64>) -> tensor<1x32x56x56xf32>
    %inserted_slice_61 = tensor.insert_slice %116 into %cst_1[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x160x56x56xf32>
    %inserted_slice_62 = tensor.insert_slice %133 into %inserted_slice_61[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x160x56x56xf32>
    %inserted_slice_63 = tensor.insert_slice %150 into %inserted_slice_62[0, 96, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x160x56x56xf32>
    %inserted_slice_64 = tensor.insert_slice %166 into %inserted_slice_63[0, 128, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x160x56x56xf32>
    %167 = tosa.sub %inserted_slice_64, %44 : (tensor<1x160x56x56xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x56x56xf32>
    %168 = tosa.rsqrt %27 : (tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    %169 = tosa.mul %167, %168 {shift = 0 : i8} : (tensor<1x160x56x56xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x56x56xf32>
    %170 = tosa.mul %169, %44 {shift = 0 : i8} : (tensor<1x160x56x56xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x56x56xf32>
    %171 = tosa.add %170, %44 : (tensor<1x160x56x56xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x56x56xf32>
    %172 = tosa.clamp %171 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x56x56xf32>) -> tensor<1x160x56x56xf32>
    %173 = tosa.transpose %172, %32 : (tensor<1x160x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x160xf32>
    %174 = tosa.conv2d %173, %45, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x160xf32>, tensor<128x1x1x160xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %175 = tosa.transpose %174, %34 : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %176 = tosa.sub %175, %38 : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %177 = tosa.mul %176, %126 {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %178 = tosa.mul %177, %38 {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %179 = tosa.add %178, %38 : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %180 = tosa.clamp %179 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %181 = tosa.transpose %180, %32 : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %182 = tosa.conv2d %181, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x56x56x32xf32>
    %183 = tosa.transpose %182, %34 : (tensor<1x56x56x32xf32>, tensor<4xi64>) -> tensor<1x32x56x56xf32>
    %inserted_slice_65 = tensor.insert_slice %116 into %cst_2[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x192x56x56xf32>
    %inserted_slice_66 = tensor.insert_slice %133 into %inserted_slice_65[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x192x56x56xf32>
    %inserted_slice_67 = tensor.insert_slice %150 into %inserted_slice_66[0, 96, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x192x56x56xf32>
    %inserted_slice_68 = tensor.insert_slice %166 into %inserted_slice_67[0, 128, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x192x56x56xf32>
    %inserted_slice_69 = tensor.insert_slice %183 into %inserted_slice_68[0, 160, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x192x56x56xf32>
    %184 = tosa.sub %inserted_slice_69, %46 : (tensor<1x192x56x56xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x56x56xf32>
    %185 = tosa.rsqrt %26 : (tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %186 = tosa.mul %184, %185 {shift = 0 : i8} : (tensor<1x192x56x56xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x56x56xf32>
    %187 = tosa.mul %186, %46 {shift = 0 : i8} : (tensor<1x192x56x56xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x56x56xf32>
    %188 = tosa.add %187, %46 : (tensor<1x192x56x56xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x56x56xf32>
    %189 = tosa.clamp %188 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x56x56xf32>) -> tensor<1x192x56x56xf32>
    %190 = tosa.transpose %189, %32 : (tensor<1x192x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x192xf32>
    %191 = tosa.conv2d %190, %47, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x192xf32>, tensor<128x1x1x192xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %192 = tosa.transpose %191, %34 : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %193 = tosa.sub %192, %38 : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %194 = tosa.mul %193, %126 {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %195 = tosa.mul %194, %38 {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %196 = tosa.add %195, %38 : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %197 = tosa.clamp %196 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %198 = tosa.transpose %197, %32 : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %199 = tosa.conv2d %198, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x56x56x32xf32>
    %200 = tosa.transpose %199, %34 : (tensor<1x56x56x32xf32>, tensor<4xi64>) -> tensor<1x32x56x56xf32>
    %inserted_slice_70 = tensor.insert_slice %116 into %cst_3[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x224x56x56xf32>
    %inserted_slice_71 = tensor.insert_slice %133 into %inserted_slice_70[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x224x56x56xf32>
    %inserted_slice_72 = tensor.insert_slice %150 into %inserted_slice_71[0, 96, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x224x56x56xf32>
    %inserted_slice_73 = tensor.insert_slice %166 into %inserted_slice_72[0, 128, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x224x56x56xf32>
    %inserted_slice_74 = tensor.insert_slice %183 into %inserted_slice_73[0, 160, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x224x56x56xf32>
    %inserted_slice_75 = tensor.insert_slice %200 into %inserted_slice_74[0, 192, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x224x56x56xf32>
    %201 = tosa.sub %inserted_slice_75, %48 : (tensor<1x224x56x56xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x56x56xf32>
    %202 = tosa.rsqrt %25 : (tensor<1x224x1x1xf32>) -> tensor<1x224x1x1xf32>
    %203 = tosa.mul %201, %202 {shift = 0 : i8} : (tensor<1x224x56x56xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x56x56xf32>
    %204 = tosa.mul %203, %48 {shift = 0 : i8} : (tensor<1x224x56x56xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x56x56xf32>
    %205 = tosa.add %204, %48 : (tensor<1x224x56x56xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x56x56xf32>
    %206 = tosa.clamp %205 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x224x56x56xf32>) -> tensor<1x224x56x56xf32>
    %207 = tosa.transpose %206, %32 : (tensor<1x224x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x224xf32>
    %208 = tosa.conv2d %207, %49, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x224xf32>, tensor<128x1x1x224xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %209 = tosa.transpose %208, %34 : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %210 = tosa.sub %209, %38 : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %211 = tosa.mul %210, %126 {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %212 = tosa.mul %211, %38 {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %213 = tosa.add %212, %38 : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %214 = tosa.clamp %213 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %215 = tosa.transpose %214, %32 : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %216 = tosa.conv2d %215, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x56x56x32xf32>
    %217 = tosa.transpose %216, %34 : (tensor<1x56x56x32xf32>, tensor<4xi64>) -> tensor<1x32x56x56xf32>
    %inserted_slice_76 = tensor.insert_slice %116 into %cst_4[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x256x56x56xf32>
    %inserted_slice_77 = tensor.insert_slice %133 into %inserted_slice_76[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x256x56x56xf32>
    %inserted_slice_78 = tensor.insert_slice %150 into %inserted_slice_77[0, 96, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x256x56x56xf32>
    %inserted_slice_79 = tensor.insert_slice %166 into %inserted_slice_78[0, 128, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x256x56x56xf32>
    %inserted_slice_80 = tensor.insert_slice %183 into %inserted_slice_79[0, 160, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x256x56x56xf32>
    %inserted_slice_81 = tensor.insert_slice %200 into %inserted_slice_80[0, 192, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x256x56x56xf32>
    %inserted_slice_82 = tensor.insert_slice %217 into %inserted_slice_81[0, 224, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x256x56x56xf32>
    %218 = tosa.sub %inserted_slice_82, %50 : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %219 = tosa.rsqrt %24 : (tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %220 = tosa.mul %218, %219 {shift = 0 : i8} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %221 = tosa.mul %220, %50 {shift = 0 : i8} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %222 = tosa.add %221, %50 : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %223 = tosa.clamp %222 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %224 = tosa.transpose %223, %32 : (tensor<1x256x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x256xf32>
    %225 = tosa.conv2d %224, %51, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %226 = tosa.avg_pool2d %225 {acc_type = f32, kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x56x56x128xf32>) -> tensor<1x28x28x128xf32>
    %227 = tosa.transpose %226, %34 : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %228 = tosa.sub %227, %38 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %229 = tosa.mul %228, %126 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %230 = tosa.mul %229, %38 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %231 = tosa.add %230, %38 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %232 = tosa.clamp %231 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %233 = tosa.transpose %232, %32 : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %234 = tosa.conv2d %233, %43, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x1x1x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %235 = tosa.transpose %234, %34 : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %236 = tosa.sub %235, %38 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %237 = tosa.mul %236, %126 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %238 = tosa.mul %237, %38 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %239 = tosa.add %238, %38 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %240 = tosa.clamp %239 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %241 = tosa.transpose %240, %32 : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %242 = tosa.conv2d %241, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %243 = tosa.transpose %242, %34 : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_83 = tensor.insert_slice %227 into %cst_5[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x160x28x28xf32>
    %inserted_slice_84 = tensor.insert_slice %243 into %inserted_slice_83[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x160x28x28xf32>
    %244 = tosa.sub %inserted_slice_84, %44 : (tensor<1x160x28x28xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x28x28xf32>
    %245 = tosa.mul %244, %168 {shift = 0 : i8} : (tensor<1x160x28x28xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x28x28xf32>
    %246 = tosa.mul %245, %44 {shift = 0 : i8} : (tensor<1x160x28x28xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x28x28xf32>
    %247 = tosa.add %246, %44 : (tensor<1x160x28x28xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x28x28xf32>
    %248 = tosa.clamp %247 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x28x28xf32>) -> tensor<1x160x28x28xf32>
    %249 = tosa.transpose %248, %32 : (tensor<1x160x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x160xf32>
    %250 = tosa.conv2d %249, %45, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x160xf32>, tensor<128x1x1x160xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %251 = tosa.transpose %250, %34 : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %252 = tosa.sub %251, %38 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %253 = tosa.mul %252, %126 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %254 = tosa.mul %253, %38 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %255 = tosa.add %254, %38 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %256 = tosa.clamp %255 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %257 = tosa.transpose %256, %32 : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %258 = tosa.conv2d %257, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %259 = tosa.transpose %258, %34 : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_85 = tensor.insert_slice %227 into %cst_6[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x192x28x28xf32>
    %inserted_slice_86 = tensor.insert_slice %243 into %inserted_slice_85[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x192x28x28xf32>
    %inserted_slice_87 = tensor.insert_slice %259 into %inserted_slice_86[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x192x28x28xf32>
    %260 = tosa.sub %inserted_slice_87, %46 : (tensor<1x192x28x28xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x28x28xf32>
    %261 = tosa.mul %260, %185 {shift = 0 : i8} : (tensor<1x192x28x28xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x28x28xf32>
    %262 = tosa.mul %261, %46 {shift = 0 : i8} : (tensor<1x192x28x28xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x28x28xf32>
    %263 = tosa.add %262, %46 : (tensor<1x192x28x28xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x28x28xf32>
    %264 = tosa.clamp %263 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x28x28xf32>) -> tensor<1x192x28x28xf32>
    %265 = tosa.transpose %264, %32 : (tensor<1x192x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x192xf32>
    %266 = tosa.conv2d %265, %47, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x192xf32>, tensor<128x1x1x192xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %267 = tosa.transpose %266, %34 : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %268 = tosa.sub %267, %38 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %269 = tosa.mul %268, %126 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %270 = tosa.mul %269, %38 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %271 = tosa.add %270, %38 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %272 = tosa.clamp %271 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %273 = tosa.transpose %272, %32 : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %274 = tosa.conv2d %273, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %275 = tosa.transpose %274, %34 : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_88 = tensor.insert_slice %227 into %cst_7[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x224x28x28xf32>
    %inserted_slice_89 = tensor.insert_slice %243 into %inserted_slice_88[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x224x28x28xf32>
    %inserted_slice_90 = tensor.insert_slice %259 into %inserted_slice_89[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x224x28x28xf32>
    %inserted_slice_91 = tensor.insert_slice %275 into %inserted_slice_90[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x224x28x28xf32>
    %276 = tosa.sub %inserted_slice_91, %48 : (tensor<1x224x28x28xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x28x28xf32>
    %277 = tosa.mul %276, %202 {shift = 0 : i8} : (tensor<1x224x28x28xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x28x28xf32>
    %278 = tosa.mul %277, %48 {shift = 0 : i8} : (tensor<1x224x28x28xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x28x28xf32>
    %279 = tosa.add %278, %48 : (tensor<1x224x28x28xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x28x28xf32>
    %280 = tosa.clamp %279 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x224x28x28xf32>) -> tensor<1x224x28x28xf32>
    %281 = tosa.transpose %280, %32 : (tensor<1x224x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x224xf32>
    %282 = tosa.conv2d %281, %49, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x224xf32>, tensor<128x1x1x224xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %283 = tosa.transpose %282, %34 : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %284 = tosa.sub %283, %38 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %285 = tosa.mul %284, %126 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %286 = tosa.mul %285, %38 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %287 = tosa.add %286, %38 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %288 = tosa.clamp %287 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %289 = tosa.transpose %288, %32 : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %290 = tosa.conv2d %289, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %291 = tosa.transpose %290, %34 : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_92 = tensor.insert_slice %227 into %cst_8[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x256x28x28xf32>
    %inserted_slice_93 = tensor.insert_slice %243 into %inserted_slice_92[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x256x28x28xf32>
    %inserted_slice_94 = tensor.insert_slice %259 into %inserted_slice_93[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x256x28x28xf32>
    %inserted_slice_95 = tensor.insert_slice %275 into %inserted_slice_94[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x256x28x28xf32>
    %inserted_slice_96 = tensor.insert_slice %291 into %inserted_slice_95[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x256x28x28xf32>
    %292 = tosa.sub %inserted_slice_96, %50 : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %293 = tosa.mul %292, %219 {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %294 = tosa.mul %293, %50 {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %295 = tosa.add %294, %50 : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %296 = tosa.clamp %295 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %297 = tosa.transpose %296, %32 : (tensor<1x256x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x256xf32>
    %298 = tosa.conv2d %297, %51, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %299 = tosa.transpose %298, %34 : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %300 = tosa.sub %299, %38 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %301 = tosa.mul %300, %126 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %302 = tosa.mul %301, %38 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %303 = tosa.add %302, %38 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %304 = tosa.clamp %303 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %305 = tosa.transpose %304, %32 : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %306 = tosa.conv2d %305, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %307 = tosa.transpose %306, %34 : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_97 = tensor.insert_slice %227 into %cst_9[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x288x28x28xf32>
    %inserted_slice_98 = tensor.insert_slice %243 into %inserted_slice_97[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x288x28x28xf32>
    %inserted_slice_99 = tensor.insert_slice %259 into %inserted_slice_98[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x288x28x28xf32>
    %inserted_slice_100 = tensor.insert_slice %275 into %inserted_slice_99[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x288x28x28xf32>
    %inserted_slice_101 = tensor.insert_slice %291 into %inserted_slice_100[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x288x28x28xf32>
    %inserted_slice_102 = tensor.insert_slice %307 into %inserted_slice_101[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x288x28x28xf32>
    %308 = tosa.sub %inserted_slice_102, %52 : (tensor<1x288x28x28xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x28x28xf32>
    %309 = tosa.rsqrt %23 : (tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %310 = tosa.mul %308, %309 {shift = 0 : i8} : (tensor<1x288x28x28xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x28x28xf32>
    %311 = tosa.mul %310, %52 {shift = 0 : i8} : (tensor<1x288x28x28xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x28x28xf32>
    %312 = tosa.add %311, %52 : (tensor<1x288x28x28xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x28x28xf32>
    %313 = tosa.clamp %312 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x288x28x28xf32>) -> tensor<1x288x28x28xf32>
    %314 = tosa.transpose %313, %32 : (tensor<1x288x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x288xf32>
    %315 = tosa.conv2d %314, %53, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x288xf32>, tensor<128x1x1x288xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %316 = tosa.transpose %315, %34 : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %317 = tosa.sub %316, %38 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %318 = tosa.mul %317, %126 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %319 = tosa.mul %318, %38 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %320 = tosa.add %319, %38 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %321 = tosa.clamp %320 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %322 = tosa.transpose %321, %32 : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %323 = tosa.conv2d %322, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %324 = tosa.transpose %323, %34 : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_103 = tensor.insert_slice %227 into %cst_10[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x320x28x28xf32>
    %inserted_slice_104 = tensor.insert_slice %243 into %inserted_slice_103[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x320x28x28xf32>
    %inserted_slice_105 = tensor.insert_slice %259 into %inserted_slice_104[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x320x28x28xf32>
    %inserted_slice_106 = tensor.insert_slice %275 into %inserted_slice_105[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x320x28x28xf32>
    %inserted_slice_107 = tensor.insert_slice %291 into %inserted_slice_106[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x320x28x28xf32>
    %inserted_slice_108 = tensor.insert_slice %307 into %inserted_slice_107[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x320x28x28xf32>
    %inserted_slice_109 = tensor.insert_slice %324 into %inserted_slice_108[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x320x28x28xf32>
    %325 = tosa.sub %inserted_slice_109, %54 : (tensor<1x320x28x28xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x28x28xf32>
    %326 = tosa.rsqrt %22 : (tensor<1x320x1x1xf32>) -> tensor<1x320x1x1xf32>
    %327 = tosa.mul %325, %326 {shift = 0 : i8} : (tensor<1x320x28x28xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x28x28xf32>
    %328 = tosa.mul %327, %54 {shift = 0 : i8} : (tensor<1x320x28x28xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x28x28xf32>
    %329 = tosa.add %328, %54 : (tensor<1x320x28x28xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x28x28xf32>
    %330 = tosa.clamp %329 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x320x28x28xf32>) -> tensor<1x320x28x28xf32>
    %331 = tosa.transpose %330, %32 : (tensor<1x320x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x320xf32>
    %332 = tosa.conv2d %331, %55, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x320xf32>, tensor<128x1x1x320xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %333 = tosa.transpose %332, %34 : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %334 = tosa.sub %333, %38 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %335 = tosa.mul %334, %126 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %336 = tosa.mul %335, %38 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %337 = tosa.add %336, %38 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %338 = tosa.clamp %337 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %339 = tosa.transpose %338, %32 : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %340 = tosa.conv2d %339, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %341 = tosa.transpose %340, %34 : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_110 = tensor.insert_slice %227 into %cst_11[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x352x28x28xf32>
    %inserted_slice_111 = tensor.insert_slice %243 into %inserted_slice_110[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x352x28x28xf32>
    %inserted_slice_112 = tensor.insert_slice %259 into %inserted_slice_111[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x352x28x28xf32>
    %inserted_slice_113 = tensor.insert_slice %275 into %inserted_slice_112[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x352x28x28xf32>
    %inserted_slice_114 = tensor.insert_slice %291 into %inserted_slice_113[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x352x28x28xf32>
    %inserted_slice_115 = tensor.insert_slice %307 into %inserted_slice_114[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x352x28x28xf32>
    %inserted_slice_116 = tensor.insert_slice %324 into %inserted_slice_115[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x352x28x28xf32>
    %inserted_slice_117 = tensor.insert_slice %341 into %inserted_slice_116[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x352x28x28xf32>
    %342 = tosa.sub %inserted_slice_117, %56 : (tensor<1x352x28x28xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x28x28xf32>
    %343 = tosa.rsqrt %21 : (tensor<1x352x1x1xf32>) -> tensor<1x352x1x1xf32>
    %344 = tosa.mul %342, %343 {shift = 0 : i8} : (tensor<1x352x28x28xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x28x28xf32>
    %345 = tosa.mul %344, %56 {shift = 0 : i8} : (tensor<1x352x28x28xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x28x28xf32>
    %346 = tosa.add %345, %56 : (tensor<1x352x28x28xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x28x28xf32>
    %347 = tosa.clamp %346 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x352x28x28xf32>) -> tensor<1x352x28x28xf32>
    %348 = tosa.transpose %347, %32 : (tensor<1x352x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x352xf32>
    %349 = tosa.conv2d %348, %57, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x352xf32>, tensor<128x1x1x352xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %350 = tosa.transpose %349, %34 : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %351 = tosa.sub %350, %38 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %352 = tosa.mul %351, %126 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %353 = tosa.mul %352, %38 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %354 = tosa.add %353, %38 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %355 = tosa.clamp %354 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %356 = tosa.transpose %355, %32 : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %357 = tosa.conv2d %356, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %358 = tosa.transpose %357, %34 : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_118 = tensor.insert_slice %227 into %cst_12[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_119 = tensor.insert_slice %243 into %inserted_slice_118[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_120 = tensor.insert_slice %259 into %inserted_slice_119[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_121 = tensor.insert_slice %275 into %inserted_slice_120[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_122 = tensor.insert_slice %291 into %inserted_slice_121[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_123 = tensor.insert_slice %307 into %inserted_slice_122[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_124 = tensor.insert_slice %324 into %inserted_slice_123[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_125 = tensor.insert_slice %341 into %inserted_slice_124[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_126 = tensor.insert_slice %358 into %inserted_slice_125[0, 352, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %359 = tosa.sub %inserted_slice_126, %58 : (tensor<1x384x28x28xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x28x28xf32>
    %360 = tosa.rsqrt %20 : (tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    %361 = tosa.mul %359, %360 {shift = 0 : i8} : (tensor<1x384x28x28xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x28x28xf32>
    %362 = tosa.mul %361, %58 {shift = 0 : i8} : (tensor<1x384x28x28xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x28x28xf32>
    %363 = tosa.add %362, %58 : (tensor<1x384x28x28xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x28x28xf32>
    %364 = tosa.clamp %363 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x28x28xf32>) -> tensor<1x384x28x28xf32>
    %365 = tosa.transpose %364, %32 : (tensor<1x384x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x384xf32>
    %366 = tosa.conv2d %365, %59, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x384xf32>, tensor<128x1x1x384xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %367 = tosa.transpose %366, %34 : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %368 = tosa.sub %367, %38 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %369 = tosa.mul %368, %126 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %370 = tosa.mul %369, %38 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %371 = tosa.add %370, %38 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %372 = tosa.clamp %371 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %373 = tosa.transpose %372, %32 : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %374 = tosa.conv2d %373, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %375 = tosa.transpose %374, %34 : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_127 = tensor.insert_slice %227 into %cst_13[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_128 = tensor.insert_slice %243 into %inserted_slice_127[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_129 = tensor.insert_slice %259 into %inserted_slice_128[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_130 = tensor.insert_slice %275 into %inserted_slice_129[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_131 = tensor.insert_slice %291 into %inserted_slice_130[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_132 = tensor.insert_slice %307 into %inserted_slice_131[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_133 = tensor.insert_slice %324 into %inserted_slice_132[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_134 = tensor.insert_slice %341 into %inserted_slice_133[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_135 = tensor.insert_slice %358 into %inserted_slice_134[0, 352, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_136 = tensor.insert_slice %375 into %inserted_slice_135[0, 384, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %376 = tosa.sub %inserted_slice_136, %60 : (tensor<1x416x28x28xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x28x28xf32>
    %377 = tosa.rsqrt %19 : (tensor<1x416x1x1xf32>) -> tensor<1x416x1x1xf32>
    %378 = tosa.mul %376, %377 {shift = 0 : i8} : (tensor<1x416x28x28xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x28x28xf32>
    %379 = tosa.mul %378, %60 {shift = 0 : i8} : (tensor<1x416x28x28xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x28x28xf32>
    %380 = tosa.add %379, %60 : (tensor<1x416x28x28xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x28x28xf32>
    %381 = tosa.clamp %380 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x416x28x28xf32>) -> tensor<1x416x28x28xf32>
    %382 = tosa.transpose %381, %32 : (tensor<1x416x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x416xf32>
    %383 = tosa.conv2d %382, %61, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x416xf32>, tensor<128x1x1x416xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %384 = tosa.transpose %383, %34 : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %385 = tosa.sub %384, %38 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %386 = tosa.mul %385, %126 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %387 = tosa.mul %386, %38 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %388 = tosa.add %387, %38 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %389 = tosa.clamp %388 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %390 = tosa.transpose %389, %32 : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %391 = tosa.conv2d %390, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %392 = tosa.transpose %391, %34 : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_137 = tensor.insert_slice %227 into %cst_14[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_138 = tensor.insert_slice %243 into %inserted_slice_137[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_139 = tensor.insert_slice %259 into %inserted_slice_138[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_140 = tensor.insert_slice %275 into %inserted_slice_139[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_141 = tensor.insert_slice %291 into %inserted_slice_140[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_142 = tensor.insert_slice %307 into %inserted_slice_141[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_143 = tensor.insert_slice %324 into %inserted_slice_142[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_144 = tensor.insert_slice %341 into %inserted_slice_143[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_145 = tensor.insert_slice %358 into %inserted_slice_144[0, 352, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_146 = tensor.insert_slice %375 into %inserted_slice_145[0, 384, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_147 = tensor.insert_slice %392 into %inserted_slice_146[0, 416, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %393 = tosa.sub %inserted_slice_147, %62 : (tensor<1x448x28x28xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x28x28xf32>
    %394 = tosa.rsqrt %18 : (tensor<1x448x1x1xf32>) -> tensor<1x448x1x1xf32>
    %395 = tosa.mul %393, %394 {shift = 0 : i8} : (tensor<1x448x28x28xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x28x28xf32>
    %396 = tosa.mul %395, %62 {shift = 0 : i8} : (tensor<1x448x28x28xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x28x28xf32>
    %397 = tosa.add %396, %62 : (tensor<1x448x28x28xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x28x28xf32>
    %398 = tosa.clamp %397 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x448x28x28xf32>) -> tensor<1x448x28x28xf32>
    %399 = tosa.transpose %398, %32 : (tensor<1x448x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x448xf32>
    %400 = tosa.conv2d %399, %63, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x448xf32>, tensor<128x1x1x448xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %401 = tosa.transpose %400, %34 : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %402 = tosa.sub %401, %38 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %403 = tosa.mul %402, %126 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %404 = tosa.mul %403, %38 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %405 = tosa.add %404, %38 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %406 = tosa.clamp %405 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %407 = tosa.transpose %406, %32 : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %408 = tosa.conv2d %407, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %409 = tosa.transpose %408, %34 : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_148 = tensor.insert_slice %227 into %cst_15[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_149 = tensor.insert_slice %243 into %inserted_slice_148[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_150 = tensor.insert_slice %259 into %inserted_slice_149[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_151 = tensor.insert_slice %275 into %inserted_slice_150[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_152 = tensor.insert_slice %291 into %inserted_slice_151[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_153 = tensor.insert_slice %307 into %inserted_slice_152[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_154 = tensor.insert_slice %324 into %inserted_slice_153[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_155 = tensor.insert_slice %341 into %inserted_slice_154[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_156 = tensor.insert_slice %358 into %inserted_slice_155[0, 352, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_157 = tensor.insert_slice %375 into %inserted_slice_156[0, 384, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_158 = tensor.insert_slice %392 into %inserted_slice_157[0, 416, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_159 = tensor.insert_slice %409 into %inserted_slice_158[0, 448, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %410 = tosa.sub %inserted_slice_159, %64 : (tensor<1x480x28x28xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x28x28xf32>
    %411 = tosa.rsqrt %17 : (tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %412 = tosa.mul %410, %411 {shift = 0 : i8} : (tensor<1x480x28x28xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x28x28xf32>
    %413 = tosa.mul %412, %64 {shift = 0 : i8} : (tensor<1x480x28x28xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x28x28xf32>
    %414 = tosa.add %413, %64 : (tensor<1x480x28x28xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x28x28xf32>
    %415 = tosa.clamp %414 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x480x28x28xf32>) -> tensor<1x480x28x28xf32>
    %416 = tosa.transpose %415, %32 : (tensor<1x480x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x480xf32>
    %417 = tosa.conv2d %416, %65, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x480xf32>, tensor<128x1x1x480xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %418 = tosa.transpose %417, %34 : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %419 = tosa.sub %418, %38 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %420 = tosa.mul %419, %126 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %421 = tosa.mul %420, %38 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %422 = tosa.add %421, %38 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %423 = tosa.clamp %422 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %424 = tosa.transpose %423, %32 : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %425 = tosa.conv2d %424, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %426 = tosa.transpose %425, %34 : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_160 = tensor.insert_slice %227 into %cst_16[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_161 = tensor.insert_slice %243 into %inserted_slice_160[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_162 = tensor.insert_slice %259 into %inserted_slice_161[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_163 = tensor.insert_slice %275 into %inserted_slice_162[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_164 = tensor.insert_slice %291 into %inserted_slice_163[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_165 = tensor.insert_slice %307 into %inserted_slice_164[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_166 = tensor.insert_slice %324 into %inserted_slice_165[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_167 = tensor.insert_slice %341 into %inserted_slice_166[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_168 = tensor.insert_slice %358 into %inserted_slice_167[0, 352, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_169 = tensor.insert_slice %375 into %inserted_slice_168[0, 384, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_170 = tensor.insert_slice %392 into %inserted_slice_169[0, 416, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_171 = tensor.insert_slice %409 into %inserted_slice_170[0, 448, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_172 = tensor.insert_slice %426 into %inserted_slice_171[0, 480, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %427 = tosa.sub %inserted_slice_172, %66 : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %428 = tosa.rsqrt %16 : (tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %429 = tosa.mul %427, %428 {shift = 0 : i8} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %430 = tosa.mul %429, %66 {shift = 0 : i8} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %431 = tosa.add %430, %66 : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %432 = tosa.clamp %431 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %433 = tosa.transpose %432, %32 : (tensor<1x512x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x512xf32>
    %434 = tosa.conv2d %433, %67, %68 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %435 = tosa.avg_pool2d %434 {acc_type = f32, kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x28x28x256xf32>) -> tensor<1x14x14x256xf32>
    %436 = tosa.transpose %435, %34 : (tensor<1x14x14x256xf32>, tensor<4xi64>) -> tensor<1x256x14x14xf32>
    %437 = tosa.sub %436, %50 : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %438 = tosa.mul %437, %219 {shift = 0 : i8} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %439 = tosa.mul %438, %50 {shift = 0 : i8} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %440 = tosa.add %439, %50 : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %441 = tosa.clamp %440 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %442 = tosa.transpose %441, %32 : (tensor<1x256x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x256xf32>
    %443 = tosa.conv2d %442, %51, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %444 = tosa.transpose %443, %34 : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %445 = tosa.sub %444, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %446 = tosa.mul %445, %126 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %447 = tosa.mul %446, %38 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %448 = tosa.add %447, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %449 = tosa.clamp %448 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %450 = tosa.transpose %449, %32 : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %451 = tosa.conv2d %450, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %452 = tosa.transpose %451, %34 : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_173 = tensor.insert_slice %436 into %cst_17[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x288x14x14xf32>
    %inserted_slice_174 = tensor.insert_slice %452 into %inserted_slice_173[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x288x14x14xf32>
    %453 = tosa.sub %inserted_slice_174, %52 : (tensor<1x288x14x14xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x14x14xf32>
    %454 = tosa.mul %453, %309 {shift = 0 : i8} : (tensor<1x288x14x14xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x14x14xf32>
    %455 = tosa.mul %454, %52 {shift = 0 : i8} : (tensor<1x288x14x14xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x14x14xf32>
    %456 = tosa.add %455, %52 : (tensor<1x288x14x14xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x14x14xf32>
    %457 = tosa.clamp %456 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x288x14x14xf32>) -> tensor<1x288x14x14xf32>
    %458 = tosa.transpose %457, %32 : (tensor<1x288x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x288xf32>
    %459 = tosa.conv2d %458, %53, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x288xf32>, tensor<128x1x1x288xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %460 = tosa.transpose %459, %34 : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %461 = tosa.sub %460, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %462 = tosa.mul %461, %126 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %463 = tosa.mul %462, %38 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %464 = tosa.add %463, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %465 = tosa.clamp %464 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %466 = tosa.transpose %465, %32 : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %467 = tosa.conv2d %466, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %468 = tosa.transpose %467, %34 : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_175 = tensor.insert_slice %436 into %cst_18[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x320x14x14xf32>
    %inserted_slice_176 = tensor.insert_slice %452 into %inserted_slice_175[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x320x14x14xf32>
    %inserted_slice_177 = tensor.insert_slice %468 into %inserted_slice_176[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x320x14x14xf32>
    %469 = tosa.sub %inserted_slice_177, %54 : (tensor<1x320x14x14xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x14x14xf32>
    %470 = tosa.mul %469, %326 {shift = 0 : i8} : (tensor<1x320x14x14xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x14x14xf32>
    %471 = tosa.mul %470, %54 {shift = 0 : i8} : (tensor<1x320x14x14xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x14x14xf32>
    %472 = tosa.add %471, %54 : (tensor<1x320x14x14xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x14x14xf32>
    %473 = tosa.clamp %472 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x320x14x14xf32>) -> tensor<1x320x14x14xf32>
    %474 = tosa.transpose %473, %32 : (tensor<1x320x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x320xf32>
    %475 = tosa.conv2d %474, %55, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x320xf32>, tensor<128x1x1x320xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %476 = tosa.transpose %475, %34 : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %477 = tosa.sub %476, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %478 = tosa.mul %477, %126 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %479 = tosa.mul %478, %38 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %480 = tosa.add %479, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %481 = tosa.clamp %480 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %482 = tosa.transpose %481, %32 : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %483 = tosa.conv2d %482, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %484 = tosa.transpose %483, %34 : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_178 = tensor.insert_slice %436 into %cst_19[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x352x14x14xf32>
    %inserted_slice_179 = tensor.insert_slice %452 into %inserted_slice_178[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x352x14x14xf32>
    %inserted_slice_180 = tensor.insert_slice %468 into %inserted_slice_179[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x352x14x14xf32>
    %inserted_slice_181 = tensor.insert_slice %484 into %inserted_slice_180[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x352x14x14xf32>
    %485 = tosa.sub %inserted_slice_181, %56 : (tensor<1x352x14x14xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x14x14xf32>
    %486 = tosa.mul %485, %343 {shift = 0 : i8} : (tensor<1x352x14x14xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x14x14xf32>
    %487 = tosa.mul %486, %56 {shift = 0 : i8} : (tensor<1x352x14x14xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x14x14xf32>
    %488 = tosa.add %487, %56 : (tensor<1x352x14x14xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x14x14xf32>
    %489 = tosa.clamp %488 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x352x14x14xf32>) -> tensor<1x352x14x14xf32>
    %490 = tosa.transpose %489, %32 : (tensor<1x352x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x352xf32>
    %491 = tosa.conv2d %490, %57, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x352xf32>, tensor<128x1x1x352xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %492 = tosa.transpose %491, %34 : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %493 = tosa.sub %492, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %494 = tosa.mul %493, %126 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %495 = tosa.mul %494, %38 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %496 = tosa.add %495, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %497 = tosa.clamp %496 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %498 = tosa.transpose %497, %32 : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %499 = tosa.conv2d %498, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %500 = tosa.transpose %499, %34 : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_182 = tensor.insert_slice %436 into %cst_20[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x384x14x14xf32>
    %inserted_slice_183 = tensor.insert_slice %452 into %inserted_slice_182[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x384x14x14xf32>
    %inserted_slice_184 = tensor.insert_slice %468 into %inserted_slice_183[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x384x14x14xf32>
    %inserted_slice_185 = tensor.insert_slice %484 into %inserted_slice_184[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x384x14x14xf32>
    %inserted_slice_186 = tensor.insert_slice %500 into %inserted_slice_185[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x384x14x14xf32>
    %501 = tosa.sub %inserted_slice_186, %58 : (tensor<1x384x14x14xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x14x14xf32>
    %502 = tosa.mul %501, %360 {shift = 0 : i8} : (tensor<1x384x14x14xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x14x14xf32>
    %503 = tosa.mul %502, %58 {shift = 0 : i8} : (tensor<1x384x14x14xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x14x14xf32>
    %504 = tosa.add %503, %58 : (tensor<1x384x14x14xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x14x14xf32>
    %505 = tosa.clamp %504 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x14x14xf32>) -> tensor<1x384x14x14xf32>
    %506 = tosa.transpose %505, %32 : (tensor<1x384x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x384xf32>
    %507 = tosa.conv2d %506, %59, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x384xf32>, tensor<128x1x1x384xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %508 = tosa.transpose %507, %34 : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %509 = tosa.sub %508, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %510 = tosa.mul %509, %126 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %511 = tosa.mul %510, %38 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %512 = tosa.add %511, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %513 = tosa.clamp %512 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %514 = tosa.transpose %513, %32 : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %515 = tosa.conv2d %514, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %516 = tosa.transpose %515, %34 : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_187 = tensor.insert_slice %436 into %cst_21[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x416x14x14xf32>
    %inserted_slice_188 = tensor.insert_slice %452 into %inserted_slice_187[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x416x14x14xf32>
    %inserted_slice_189 = tensor.insert_slice %468 into %inserted_slice_188[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x416x14x14xf32>
    %inserted_slice_190 = tensor.insert_slice %484 into %inserted_slice_189[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x416x14x14xf32>
    %inserted_slice_191 = tensor.insert_slice %500 into %inserted_slice_190[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x416x14x14xf32>
    %inserted_slice_192 = tensor.insert_slice %516 into %inserted_slice_191[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x416x14x14xf32>
    %517 = tosa.sub %inserted_slice_192, %60 : (tensor<1x416x14x14xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x14x14xf32>
    %518 = tosa.mul %517, %377 {shift = 0 : i8} : (tensor<1x416x14x14xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x14x14xf32>
    %519 = tosa.mul %518, %60 {shift = 0 : i8} : (tensor<1x416x14x14xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x14x14xf32>
    %520 = tosa.add %519, %60 : (tensor<1x416x14x14xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x14x14xf32>
    %521 = tosa.clamp %520 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x416x14x14xf32>) -> tensor<1x416x14x14xf32>
    %522 = tosa.transpose %521, %32 : (tensor<1x416x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x416xf32>
    %523 = tosa.conv2d %522, %61, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x416xf32>, tensor<128x1x1x416xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %524 = tosa.transpose %523, %34 : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %525 = tosa.sub %524, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %526 = tosa.mul %525, %126 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %527 = tosa.mul %526, %38 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %528 = tosa.add %527, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %529 = tosa.clamp %528 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %530 = tosa.transpose %529, %32 : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %531 = tosa.conv2d %530, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %532 = tosa.transpose %531, %34 : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_193 = tensor.insert_slice %436 into %cst_22[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x448x14x14xf32>
    %inserted_slice_194 = tensor.insert_slice %452 into %inserted_slice_193[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x448x14x14xf32>
    %inserted_slice_195 = tensor.insert_slice %468 into %inserted_slice_194[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x448x14x14xf32>
    %inserted_slice_196 = tensor.insert_slice %484 into %inserted_slice_195[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x448x14x14xf32>
    %inserted_slice_197 = tensor.insert_slice %500 into %inserted_slice_196[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x448x14x14xf32>
    %inserted_slice_198 = tensor.insert_slice %516 into %inserted_slice_197[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x448x14x14xf32>
    %inserted_slice_199 = tensor.insert_slice %532 into %inserted_slice_198[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x448x14x14xf32>
    %533 = tosa.sub %inserted_slice_199, %62 : (tensor<1x448x14x14xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x14x14xf32>
    %534 = tosa.mul %533, %394 {shift = 0 : i8} : (tensor<1x448x14x14xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x14x14xf32>
    %535 = tosa.mul %534, %62 {shift = 0 : i8} : (tensor<1x448x14x14xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x14x14xf32>
    %536 = tosa.add %535, %62 : (tensor<1x448x14x14xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x14x14xf32>
    %537 = tosa.clamp %536 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x448x14x14xf32>) -> tensor<1x448x14x14xf32>
    %538 = tosa.transpose %537, %32 : (tensor<1x448x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x448xf32>
    %539 = tosa.conv2d %538, %63, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x448xf32>, tensor<128x1x1x448xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %540 = tosa.transpose %539, %34 : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %541 = tosa.sub %540, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %542 = tosa.mul %541, %126 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %543 = tosa.mul %542, %38 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %544 = tosa.add %543, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %545 = tosa.clamp %544 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %546 = tosa.transpose %545, %32 : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %547 = tosa.conv2d %546, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %548 = tosa.transpose %547, %34 : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_200 = tensor.insert_slice %436 into %cst_23[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x480x14x14xf32>
    %inserted_slice_201 = tensor.insert_slice %452 into %inserted_slice_200[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x480x14x14xf32>
    %inserted_slice_202 = tensor.insert_slice %468 into %inserted_slice_201[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x480x14x14xf32>
    %inserted_slice_203 = tensor.insert_slice %484 into %inserted_slice_202[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x480x14x14xf32>
    %inserted_slice_204 = tensor.insert_slice %500 into %inserted_slice_203[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x480x14x14xf32>
    %inserted_slice_205 = tensor.insert_slice %516 into %inserted_slice_204[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x480x14x14xf32>
    %inserted_slice_206 = tensor.insert_slice %532 into %inserted_slice_205[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x480x14x14xf32>
    %inserted_slice_207 = tensor.insert_slice %548 into %inserted_slice_206[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x480x14x14xf32>
    %549 = tosa.sub %inserted_slice_207, %64 : (tensor<1x480x14x14xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x14x14xf32>
    %550 = tosa.mul %549, %411 {shift = 0 : i8} : (tensor<1x480x14x14xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x14x14xf32>
    %551 = tosa.mul %550, %64 {shift = 0 : i8} : (tensor<1x480x14x14xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x14x14xf32>
    %552 = tosa.add %551, %64 : (tensor<1x480x14x14xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x14x14xf32>
    %553 = tosa.clamp %552 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x480x14x14xf32>) -> tensor<1x480x14x14xf32>
    %554 = tosa.transpose %553, %32 : (tensor<1x480x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x480xf32>
    %555 = tosa.conv2d %554, %65, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x480xf32>, tensor<128x1x1x480xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %556 = tosa.transpose %555, %34 : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %557 = tosa.sub %556, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %558 = tosa.mul %557, %126 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %559 = tosa.mul %558, %38 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %560 = tosa.add %559, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %561 = tosa.clamp %560 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %562 = tosa.transpose %561, %32 : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %563 = tosa.conv2d %562, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %564 = tosa.transpose %563, %34 : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_208 = tensor.insert_slice %436 into %cst_24[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_209 = tensor.insert_slice %452 into %inserted_slice_208[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_210 = tensor.insert_slice %468 into %inserted_slice_209[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_211 = tensor.insert_slice %484 into %inserted_slice_210[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_212 = tensor.insert_slice %500 into %inserted_slice_211[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_213 = tensor.insert_slice %516 into %inserted_slice_212[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_214 = tensor.insert_slice %532 into %inserted_slice_213[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_215 = tensor.insert_slice %548 into %inserted_slice_214[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_216 = tensor.insert_slice %564 into %inserted_slice_215[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %565 = tosa.sub %inserted_slice_216, %66 : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %566 = tosa.mul %565, %428 {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %567 = tosa.mul %566, %66 {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %568 = tosa.add %567, %66 : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %569 = tosa.clamp %568 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %570 = tosa.transpose %569, %32 : (tensor<1x512x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x512xf32>
    %571 = tosa.conv2d %570, %69, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %572 = tosa.transpose %571, %34 : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %573 = tosa.sub %572, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %574 = tosa.mul %573, %126 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %575 = tosa.mul %574, %38 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %576 = tosa.add %575, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %577 = tosa.clamp %576 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %578 = tosa.transpose %577, %32 : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %579 = tosa.conv2d %578, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %580 = tosa.transpose %579, %34 : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_217 = tensor.insert_slice %436 into %cst_25[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_218 = tensor.insert_slice %452 into %inserted_slice_217[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_219 = tensor.insert_slice %468 into %inserted_slice_218[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_220 = tensor.insert_slice %484 into %inserted_slice_219[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_221 = tensor.insert_slice %500 into %inserted_slice_220[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_222 = tensor.insert_slice %516 into %inserted_slice_221[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_223 = tensor.insert_slice %532 into %inserted_slice_222[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_224 = tensor.insert_slice %548 into %inserted_slice_223[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_225 = tensor.insert_slice %564 into %inserted_slice_224[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_226 = tensor.insert_slice %580 into %inserted_slice_225[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %581 = tosa.sub %inserted_slice_226, %70 : (tensor<1x544x14x14xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x14x14xf32>
    %582 = tosa.rsqrt %15 : (tensor<1x544x1x1xf32>) -> tensor<1x544x1x1xf32>
    %583 = tosa.mul %581, %582 {shift = 0 : i8} : (tensor<1x544x14x14xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x14x14xf32>
    %584 = tosa.mul %583, %70 {shift = 0 : i8} : (tensor<1x544x14x14xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x14x14xf32>
    %585 = tosa.add %584, %70 : (tensor<1x544x14x14xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x14x14xf32>
    %586 = tosa.clamp %585 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x544x14x14xf32>) -> tensor<1x544x14x14xf32>
    %587 = tosa.transpose %586, %32 : (tensor<1x544x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x544xf32>
    %588 = tosa.conv2d %587, %71, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x544xf32>, tensor<128x1x1x544xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %589 = tosa.transpose %588, %34 : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %590 = tosa.sub %589, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %591 = tosa.mul %590, %126 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %592 = tosa.mul %591, %38 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %593 = tosa.add %592, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %594 = tosa.clamp %593 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %595 = tosa.transpose %594, %32 : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %596 = tosa.conv2d %595, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %597 = tosa.transpose %596, %34 : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_227 = tensor.insert_slice %436 into %cst_26[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_228 = tensor.insert_slice %452 into %inserted_slice_227[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_229 = tensor.insert_slice %468 into %inserted_slice_228[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_230 = tensor.insert_slice %484 into %inserted_slice_229[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_231 = tensor.insert_slice %500 into %inserted_slice_230[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_232 = tensor.insert_slice %516 into %inserted_slice_231[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_233 = tensor.insert_slice %532 into %inserted_slice_232[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_234 = tensor.insert_slice %548 into %inserted_slice_233[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_235 = tensor.insert_slice %564 into %inserted_slice_234[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_236 = tensor.insert_slice %580 into %inserted_slice_235[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_237 = tensor.insert_slice %597 into %inserted_slice_236[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %598 = tosa.sub %inserted_slice_237, %72 : (tensor<1x576x14x14xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x14x14xf32>
    %599 = tosa.rsqrt %14 : (tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    %600 = tosa.mul %598, %599 {shift = 0 : i8} : (tensor<1x576x14x14xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x14x14xf32>
    %601 = tosa.mul %600, %72 {shift = 0 : i8} : (tensor<1x576x14x14xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x14x14xf32>
    %602 = tosa.add %601, %72 : (tensor<1x576x14x14xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x14x14xf32>
    %603 = tosa.clamp %602 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x576x14x14xf32>) -> tensor<1x576x14x14xf32>
    %604 = tosa.transpose %603, %32 : (tensor<1x576x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x576xf32>
    %605 = tosa.conv2d %604, %73, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x576xf32>, tensor<128x1x1x576xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %606 = tosa.transpose %605, %34 : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %607 = tosa.sub %606, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %608 = tosa.mul %607, %126 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %609 = tosa.mul %608, %38 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %610 = tosa.add %609, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %611 = tosa.clamp %610 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %612 = tosa.transpose %611, %32 : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %613 = tosa.conv2d %612, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %614 = tosa.transpose %613, %34 : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_238 = tensor.insert_slice %436 into %cst_27[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_239 = tensor.insert_slice %452 into %inserted_slice_238[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_240 = tensor.insert_slice %468 into %inserted_slice_239[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_241 = tensor.insert_slice %484 into %inserted_slice_240[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_242 = tensor.insert_slice %500 into %inserted_slice_241[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_243 = tensor.insert_slice %516 into %inserted_slice_242[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_244 = tensor.insert_slice %532 into %inserted_slice_243[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_245 = tensor.insert_slice %548 into %inserted_slice_244[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_246 = tensor.insert_slice %564 into %inserted_slice_245[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_247 = tensor.insert_slice %580 into %inserted_slice_246[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_248 = tensor.insert_slice %597 into %inserted_slice_247[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_249 = tensor.insert_slice %614 into %inserted_slice_248[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %615 = tosa.sub %inserted_slice_249, %74 : (tensor<1x608x14x14xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x14x14xf32>
    %616 = tosa.rsqrt %13 : (tensor<1x608x1x1xf32>) -> tensor<1x608x1x1xf32>
    %617 = tosa.mul %615, %616 {shift = 0 : i8} : (tensor<1x608x14x14xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x14x14xf32>
    %618 = tosa.mul %617, %74 {shift = 0 : i8} : (tensor<1x608x14x14xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x14x14xf32>
    %619 = tosa.add %618, %74 : (tensor<1x608x14x14xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x14x14xf32>
    %620 = tosa.clamp %619 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x608x14x14xf32>) -> tensor<1x608x14x14xf32>
    %621 = tosa.transpose %620, %32 : (tensor<1x608x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x608xf32>
    %622 = tosa.conv2d %621, %75, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x608xf32>, tensor<128x1x1x608xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %623 = tosa.transpose %622, %34 : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %624 = tosa.sub %623, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %625 = tosa.mul %624, %126 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %626 = tosa.mul %625, %38 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %627 = tosa.add %626, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %628 = tosa.clamp %627 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %629 = tosa.transpose %628, %32 : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %630 = tosa.conv2d %629, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %631 = tosa.transpose %630, %34 : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_250 = tensor.insert_slice %436 into %cst_28[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_251 = tensor.insert_slice %452 into %inserted_slice_250[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_252 = tensor.insert_slice %468 into %inserted_slice_251[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_253 = tensor.insert_slice %484 into %inserted_slice_252[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_254 = tensor.insert_slice %500 into %inserted_slice_253[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_255 = tensor.insert_slice %516 into %inserted_slice_254[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_256 = tensor.insert_slice %532 into %inserted_slice_255[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_257 = tensor.insert_slice %548 into %inserted_slice_256[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_258 = tensor.insert_slice %564 into %inserted_slice_257[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_259 = tensor.insert_slice %580 into %inserted_slice_258[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_260 = tensor.insert_slice %597 into %inserted_slice_259[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_261 = tensor.insert_slice %614 into %inserted_slice_260[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_262 = tensor.insert_slice %631 into %inserted_slice_261[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %632 = tosa.sub %inserted_slice_262, %76 : (tensor<1x640x14x14xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x14x14xf32>
    %633 = tosa.rsqrt %12 : (tensor<1x640x1x1xf32>) -> tensor<1x640x1x1xf32>
    %634 = tosa.mul %632, %633 {shift = 0 : i8} : (tensor<1x640x14x14xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x14x14xf32>
    %635 = tosa.mul %634, %76 {shift = 0 : i8} : (tensor<1x640x14x14xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x14x14xf32>
    %636 = tosa.add %635, %76 : (tensor<1x640x14x14xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x14x14xf32>
    %637 = tosa.clamp %636 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x640x14x14xf32>) -> tensor<1x640x14x14xf32>
    %638 = tosa.transpose %637, %32 : (tensor<1x640x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x640xf32>
    %639 = tosa.conv2d %638, %77, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x640xf32>, tensor<128x1x1x640xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %640 = tosa.transpose %639, %34 : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %641 = tosa.sub %640, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %642 = tosa.mul %641, %126 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %643 = tosa.mul %642, %38 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %644 = tosa.add %643, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %645 = tosa.clamp %644 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %646 = tosa.transpose %645, %32 : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %647 = tosa.conv2d %646, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %648 = tosa.transpose %647, %34 : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_263 = tensor.insert_slice %436 into %cst_29[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_264 = tensor.insert_slice %452 into %inserted_slice_263[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_265 = tensor.insert_slice %468 into %inserted_slice_264[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_266 = tensor.insert_slice %484 into %inserted_slice_265[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_267 = tensor.insert_slice %500 into %inserted_slice_266[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_268 = tensor.insert_slice %516 into %inserted_slice_267[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_269 = tensor.insert_slice %532 into %inserted_slice_268[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_270 = tensor.insert_slice %548 into %inserted_slice_269[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_271 = tensor.insert_slice %564 into %inserted_slice_270[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_272 = tensor.insert_slice %580 into %inserted_slice_271[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_273 = tensor.insert_slice %597 into %inserted_slice_272[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_274 = tensor.insert_slice %614 into %inserted_slice_273[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_275 = tensor.insert_slice %631 into %inserted_slice_274[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_276 = tensor.insert_slice %648 into %inserted_slice_275[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %649 = tosa.sub %inserted_slice_276, %78 : (tensor<1x672x14x14xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x14x14xf32>
    %650 = tosa.rsqrt %11 : (tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %651 = tosa.mul %649, %650 {shift = 0 : i8} : (tensor<1x672x14x14xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x14x14xf32>
    %652 = tosa.mul %651, %78 {shift = 0 : i8} : (tensor<1x672x14x14xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x14x14xf32>
    %653 = tosa.add %652, %78 : (tensor<1x672x14x14xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x14x14xf32>
    %654 = tosa.clamp %653 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x672x14x14xf32>) -> tensor<1x672x14x14xf32>
    %655 = tosa.transpose %654, %32 : (tensor<1x672x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x672xf32>
    %656 = tosa.conv2d %655, %79, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x672xf32>, tensor<128x1x1x672xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %657 = tosa.transpose %656, %34 : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %658 = tosa.sub %657, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %659 = tosa.mul %658, %126 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %660 = tosa.mul %659, %38 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %661 = tosa.add %660, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %662 = tosa.clamp %661 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %663 = tosa.transpose %662, %32 : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %664 = tosa.conv2d %663, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %665 = tosa.transpose %664, %34 : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_277 = tensor.insert_slice %436 into %cst_30[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_278 = tensor.insert_slice %452 into %inserted_slice_277[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_279 = tensor.insert_slice %468 into %inserted_slice_278[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_280 = tensor.insert_slice %484 into %inserted_slice_279[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_281 = tensor.insert_slice %500 into %inserted_slice_280[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_282 = tensor.insert_slice %516 into %inserted_slice_281[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_283 = tensor.insert_slice %532 into %inserted_slice_282[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_284 = tensor.insert_slice %548 into %inserted_slice_283[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_285 = tensor.insert_slice %564 into %inserted_slice_284[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_286 = tensor.insert_slice %580 into %inserted_slice_285[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_287 = tensor.insert_slice %597 into %inserted_slice_286[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_288 = tensor.insert_slice %614 into %inserted_slice_287[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_289 = tensor.insert_slice %631 into %inserted_slice_288[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_290 = tensor.insert_slice %648 into %inserted_slice_289[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_291 = tensor.insert_slice %665 into %inserted_slice_290[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %666 = tosa.sub %inserted_slice_291, %80 : (tensor<1x704x14x14xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x14x14xf32>
    %667 = tosa.rsqrt %10 : (tensor<1x704x1x1xf32>) -> tensor<1x704x1x1xf32>
    %668 = tosa.mul %666, %667 {shift = 0 : i8} : (tensor<1x704x14x14xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x14x14xf32>
    %669 = tosa.mul %668, %80 {shift = 0 : i8} : (tensor<1x704x14x14xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x14x14xf32>
    %670 = tosa.add %669, %80 : (tensor<1x704x14x14xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x14x14xf32>
    %671 = tosa.clamp %670 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x704x14x14xf32>) -> tensor<1x704x14x14xf32>
    %672 = tosa.transpose %671, %32 : (tensor<1x704x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x704xf32>
    %673 = tosa.conv2d %672, %81, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x704xf32>, tensor<128x1x1x704xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %674 = tosa.transpose %673, %34 : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %675 = tosa.sub %674, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %676 = tosa.mul %675, %126 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %677 = tosa.mul %676, %38 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %678 = tosa.add %677, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %679 = tosa.clamp %678 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %680 = tosa.transpose %679, %32 : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %681 = tosa.conv2d %680, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %682 = tosa.transpose %681, %34 : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_292 = tensor.insert_slice %436 into %cst_31[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_293 = tensor.insert_slice %452 into %inserted_slice_292[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_294 = tensor.insert_slice %468 into %inserted_slice_293[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_295 = tensor.insert_slice %484 into %inserted_slice_294[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_296 = tensor.insert_slice %500 into %inserted_slice_295[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_297 = tensor.insert_slice %516 into %inserted_slice_296[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_298 = tensor.insert_slice %532 into %inserted_slice_297[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_299 = tensor.insert_slice %548 into %inserted_slice_298[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_300 = tensor.insert_slice %564 into %inserted_slice_299[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_301 = tensor.insert_slice %580 into %inserted_slice_300[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_302 = tensor.insert_slice %597 into %inserted_slice_301[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_303 = tensor.insert_slice %614 into %inserted_slice_302[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_304 = tensor.insert_slice %631 into %inserted_slice_303[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_305 = tensor.insert_slice %648 into %inserted_slice_304[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_306 = tensor.insert_slice %665 into %inserted_slice_305[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_307 = tensor.insert_slice %682 into %inserted_slice_306[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %683 = tosa.sub %inserted_slice_307, %82 : (tensor<1x736x14x14xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x14x14xf32>
    %684 = tosa.rsqrt %9 : (tensor<1x736x1x1xf32>) -> tensor<1x736x1x1xf32>
    %685 = tosa.mul %683, %684 {shift = 0 : i8} : (tensor<1x736x14x14xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x14x14xf32>
    %686 = tosa.mul %685, %82 {shift = 0 : i8} : (tensor<1x736x14x14xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x14x14xf32>
    %687 = tosa.add %686, %82 : (tensor<1x736x14x14xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x14x14xf32>
    %688 = tosa.clamp %687 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x736x14x14xf32>) -> tensor<1x736x14x14xf32>
    %689 = tosa.transpose %688, %32 : (tensor<1x736x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x736xf32>
    %690 = tosa.conv2d %689, %83, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x736xf32>, tensor<128x1x1x736xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %691 = tosa.transpose %690, %34 : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %692 = tosa.sub %691, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %693 = tosa.mul %692, %126 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %694 = tosa.mul %693, %38 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %695 = tosa.add %694, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %696 = tosa.clamp %695 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %697 = tosa.transpose %696, %32 : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %698 = tosa.conv2d %697, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %699 = tosa.transpose %698, %34 : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_308 = tensor.insert_slice %436 into %cst_32[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_309 = tensor.insert_slice %452 into %inserted_slice_308[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_310 = tensor.insert_slice %468 into %inserted_slice_309[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_311 = tensor.insert_slice %484 into %inserted_slice_310[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_312 = tensor.insert_slice %500 into %inserted_slice_311[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_313 = tensor.insert_slice %516 into %inserted_slice_312[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_314 = tensor.insert_slice %532 into %inserted_slice_313[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_315 = tensor.insert_slice %548 into %inserted_slice_314[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_316 = tensor.insert_slice %564 into %inserted_slice_315[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_317 = tensor.insert_slice %580 into %inserted_slice_316[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_318 = tensor.insert_slice %597 into %inserted_slice_317[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_319 = tensor.insert_slice %614 into %inserted_slice_318[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_320 = tensor.insert_slice %631 into %inserted_slice_319[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_321 = tensor.insert_slice %648 into %inserted_slice_320[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_322 = tensor.insert_slice %665 into %inserted_slice_321[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_323 = tensor.insert_slice %682 into %inserted_slice_322[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_324 = tensor.insert_slice %699 into %inserted_slice_323[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %700 = tosa.sub %inserted_slice_324, %84 : (tensor<1x768x14x14xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x14x14xf32>
    %701 = tosa.rsqrt %8 : (tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %702 = tosa.mul %700, %701 {shift = 0 : i8} : (tensor<1x768x14x14xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x14x14xf32>
    %703 = tosa.mul %702, %84 {shift = 0 : i8} : (tensor<1x768x14x14xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x14x14xf32>
    %704 = tosa.add %703, %84 : (tensor<1x768x14x14xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x14x14xf32>
    %705 = tosa.clamp %704 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %706 = tosa.transpose %705, %32 : (tensor<1x768x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x768xf32>
    %707 = tosa.conv2d %706, %85, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x768xf32>, tensor<128x1x1x768xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %708 = tosa.transpose %707, %34 : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %709 = tosa.sub %708, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %710 = tosa.mul %709, %126 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %711 = tosa.mul %710, %38 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %712 = tosa.add %711, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %713 = tosa.clamp %712 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %714 = tosa.transpose %713, %32 : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %715 = tosa.conv2d %714, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %716 = tosa.transpose %715, %34 : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_325 = tensor.insert_slice %436 into %cst_33[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_326 = tensor.insert_slice %452 into %inserted_slice_325[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_327 = tensor.insert_slice %468 into %inserted_slice_326[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_328 = tensor.insert_slice %484 into %inserted_slice_327[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_329 = tensor.insert_slice %500 into %inserted_slice_328[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_330 = tensor.insert_slice %516 into %inserted_slice_329[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_331 = tensor.insert_slice %532 into %inserted_slice_330[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_332 = tensor.insert_slice %548 into %inserted_slice_331[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_333 = tensor.insert_slice %564 into %inserted_slice_332[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_334 = tensor.insert_slice %580 into %inserted_slice_333[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_335 = tensor.insert_slice %597 into %inserted_slice_334[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_336 = tensor.insert_slice %614 into %inserted_slice_335[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_337 = tensor.insert_slice %631 into %inserted_slice_336[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_338 = tensor.insert_slice %648 into %inserted_slice_337[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_339 = tensor.insert_slice %665 into %inserted_slice_338[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_340 = tensor.insert_slice %682 into %inserted_slice_339[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_341 = tensor.insert_slice %699 into %inserted_slice_340[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_342 = tensor.insert_slice %716 into %inserted_slice_341[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %717 = tosa.sub %inserted_slice_342, %86 : (tensor<1x800x14x14xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x14x14xf32>
    %718 = tosa.rsqrt %7 : (tensor<1x800x1x1xf32>) -> tensor<1x800x1x1xf32>
    %719 = tosa.mul %717, %718 {shift = 0 : i8} : (tensor<1x800x14x14xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x14x14xf32>
    %720 = tosa.mul %719, %86 {shift = 0 : i8} : (tensor<1x800x14x14xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x14x14xf32>
    %721 = tosa.add %720, %86 : (tensor<1x800x14x14xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x14x14xf32>
    %722 = tosa.clamp %721 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x800x14x14xf32>) -> tensor<1x800x14x14xf32>
    %723 = tosa.transpose %722, %32 : (tensor<1x800x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x800xf32>
    %724 = tosa.conv2d %723, %87, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x800xf32>, tensor<128x1x1x800xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %725 = tosa.transpose %724, %34 : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %726 = tosa.sub %725, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %727 = tosa.mul %726, %126 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %728 = tosa.mul %727, %38 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %729 = tosa.add %728, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %730 = tosa.clamp %729 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %731 = tosa.transpose %730, %32 : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %732 = tosa.conv2d %731, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %733 = tosa.transpose %732, %34 : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_343 = tensor.insert_slice %436 into %cst_34[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_344 = tensor.insert_slice %452 into %inserted_slice_343[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_345 = tensor.insert_slice %468 into %inserted_slice_344[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_346 = tensor.insert_slice %484 into %inserted_slice_345[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_347 = tensor.insert_slice %500 into %inserted_slice_346[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_348 = tensor.insert_slice %516 into %inserted_slice_347[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_349 = tensor.insert_slice %532 into %inserted_slice_348[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_350 = tensor.insert_slice %548 into %inserted_slice_349[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_351 = tensor.insert_slice %564 into %inserted_slice_350[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_352 = tensor.insert_slice %580 into %inserted_slice_351[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_353 = tensor.insert_slice %597 into %inserted_slice_352[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_354 = tensor.insert_slice %614 into %inserted_slice_353[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_355 = tensor.insert_slice %631 into %inserted_slice_354[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_356 = tensor.insert_slice %648 into %inserted_slice_355[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_357 = tensor.insert_slice %665 into %inserted_slice_356[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_358 = tensor.insert_slice %682 into %inserted_slice_357[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_359 = tensor.insert_slice %699 into %inserted_slice_358[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_360 = tensor.insert_slice %716 into %inserted_slice_359[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_361 = tensor.insert_slice %733 into %inserted_slice_360[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %734 = tosa.sub %inserted_slice_361, %88 : (tensor<1x832x14x14xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x14x14xf32>
    %735 = tosa.rsqrt %6 : (tensor<1x832x1x1xf32>) -> tensor<1x832x1x1xf32>
    %736 = tosa.mul %734, %735 {shift = 0 : i8} : (tensor<1x832x14x14xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x14x14xf32>
    %737 = tosa.mul %736, %88 {shift = 0 : i8} : (tensor<1x832x14x14xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x14x14xf32>
    %738 = tosa.add %737, %88 : (tensor<1x832x14x14xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x14x14xf32>
    %739 = tosa.clamp %738 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x832x14x14xf32>) -> tensor<1x832x14x14xf32>
    %740 = tosa.transpose %739, %32 : (tensor<1x832x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x832xf32>
    %741 = tosa.conv2d %740, %89, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x832xf32>, tensor<128x1x1x832xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %742 = tosa.transpose %741, %34 : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %743 = tosa.sub %742, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %744 = tosa.mul %743, %126 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %745 = tosa.mul %744, %38 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %746 = tosa.add %745, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %747 = tosa.clamp %746 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %748 = tosa.transpose %747, %32 : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %749 = tosa.conv2d %748, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %750 = tosa.transpose %749, %34 : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_362 = tensor.insert_slice %436 into %cst_35[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_363 = tensor.insert_slice %452 into %inserted_slice_362[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_364 = tensor.insert_slice %468 into %inserted_slice_363[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_365 = tensor.insert_slice %484 into %inserted_slice_364[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_366 = tensor.insert_slice %500 into %inserted_slice_365[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_367 = tensor.insert_slice %516 into %inserted_slice_366[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_368 = tensor.insert_slice %532 into %inserted_slice_367[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_369 = tensor.insert_slice %548 into %inserted_slice_368[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_370 = tensor.insert_slice %564 into %inserted_slice_369[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_371 = tensor.insert_slice %580 into %inserted_slice_370[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_372 = tensor.insert_slice %597 into %inserted_slice_371[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_373 = tensor.insert_slice %614 into %inserted_slice_372[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_374 = tensor.insert_slice %631 into %inserted_slice_373[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_375 = tensor.insert_slice %648 into %inserted_slice_374[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_376 = tensor.insert_slice %665 into %inserted_slice_375[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_377 = tensor.insert_slice %682 into %inserted_slice_376[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_378 = tensor.insert_slice %699 into %inserted_slice_377[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_379 = tensor.insert_slice %716 into %inserted_slice_378[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_380 = tensor.insert_slice %733 into %inserted_slice_379[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_381 = tensor.insert_slice %750 into %inserted_slice_380[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %751 = tosa.sub %inserted_slice_381, %90 : (tensor<1x864x14x14xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x14x14xf32>
    %752 = tosa.rsqrt %5 : (tensor<1x864x1x1xf32>) -> tensor<1x864x1x1xf32>
    %753 = tosa.mul %751, %752 {shift = 0 : i8} : (tensor<1x864x14x14xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x14x14xf32>
    %754 = tosa.mul %753, %90 {shift = 0 : i8} : (tensor<1x864x14x14xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x14x14xf32>
    %755 = tosa.add %754, %90 : (tensor<1x864x14x14xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x14x14xf32>
    %756 = tosa.clamp %755 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x864x14x14xf32>) -> tensor<1x864x14x14xf32>
    %757 = tosa.transpose %756, %32 : (tensor<1x864x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x864xf32>
    %758 = tosa.conv2d %757, %91, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x864xf32>, tensor<128x1x1x864xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %759 = tosa.transpose %758, %34 : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %760 = tosa.sub %759, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %761 = tosa.mul %760, %126 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %762 = tosa.mul %761, %38 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %763 = tosa.add %762, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %764 = tosa.clamp %763 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %765 = tosa.transpose %764, %32 : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %766 = tosa.conv2d %765, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %767 = tosa.transpose %766, %34 : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_382 = tensor.insert_slice %436 into %cst_36[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_383 = tensor.insert_slice %452 into %inserted_slice_382[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_384 = tensor.insert_slice %468 into %inserted_slice_383[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_385 = tensor.insert_slice %484 into %inserted_slice_384[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_386 = tensor.insert_slice %500 into %inserted_slice_385[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_387 = tensor.insert_slice %516 into %inserted_slice_386[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_388 = tensor.insert_slice %532 into %inserted_slice_387[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_389 = tensor.insert_slice %548 into %inserted_slice_388[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_390 = tensor.insert_slice %564 into %inserted_slice_389[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_391 = tensor.insert_slice %580 into %inserted_slice_390[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_392 = tensor.insert_slice %597 into %inserted_slice_391[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_393 = tensor.insert_slice %614 into %inserted_slice_392[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_394 = tensor.insert_slice %631 into %inserted_slice_393[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_395 = tensor.insert_slice %648 into %inserted_slice_394[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_396 = tensor.insert_slice %665 into %inserted_slice_395[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_397 = tensor.insert_slice %682 into %inserted_slice_396[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_398 = tensor.insert_slice %699 into %inserted_slice_397[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_399 = tensor.insert_slice %716 into %inserted_slice_398[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_400 = tensor.insert_slice %733 into %inserted_slice_399[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_401 = tensor.insert_slice %750 into %inserted_slice_400[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_402 = tensor.insert_slice %767 into %inserted_slice_401[0, 864, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %768 = tosa.sub %inserted_slice_402, %92 : (tensor<1x896x14x14xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x14x14xf32>
    %769 = tosa.rsqrt %4 : (tensor<1x896x1x1xf32>) -> tensor<1x896x1x1xf32>
    %770 = tosa.mul %768, %769 {shift = 0 : i8} : (tensor<1x896x14x14xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x14x14xf32>
    %771 = tosa.mul %770, %92 {shift = 0 : i8} : (tensor<1x896x14x14xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x14x14xf32>
    %772 = tosa.add %771, %92 : (tensor<1x896x14x14xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x14x14xf32>
    %773 = tosa.clamp %772 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x896x14x14xf32>) -> tensor<1x896x14x14xf32>
    %774 = tosa.transpose %773, %32 : (tensor<1x896x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x896xf32>
    %775 = tosa.conv2d %774, %93, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x896xf32>, tensor<128x1x1x896xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %776 = tosa.transpose %775, %34 : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %777 = tosa.sub %776, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %778 = tosa.mul %777, %126 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %779 = tosa.mul %778, %38 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %780 = tosa.add %779, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %781 = tosa.clamp %780 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %782 = tosa.transpose %781, %32 : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %783 = tosa.conv2d %782, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %784 = tosa.transpose %783, %34 : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_403 = tensor.insert_slice %436 into %cst_37[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_404 = tensor.insert_slice %452 into %inserted_slice_403[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_405 = tensor.insert_slice %468 into %inserted_slice_404[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_406 = tensor.insert_slice %484 into %inserted_slice_405[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_407 = tensor.insert_slice %500 into %inserted_slice_406[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_408 = tensor.insert_slice %516 into %inserted_slice_407[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_409 = tensor.insert_slice %532 into %inserted_slice_408[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_410 = tensor.insert_slice %548 into %inserted_slice_409[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_411 = tensor.insert_slice %564 into %inserted_slice_410[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_412 = tensor.insert_slice %580 into %inserted_slice_411[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_413 = tensor.insert_slice %597 into %inserted_slice_412[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_414 = tensor.insert_slice %614 into %inserted_slice_413[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_415 = tensor.insert_slice %631 into %inserted_slice_414[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_416 = tensor.insert_slice %648 into %inserted_slice_415[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_417 = tensor.insert_slice %665 into %inserted_slice_416[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_418 = tensor.insert_slice %682 into %inserted_slice_417[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_419 = tensor.insert_slice %699 into %inserted_slice_418[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_420 = tensor.insert_slice %716 into %inserted_slice_419[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_421 = tensor.insert_slice %733 into %inserted_slice_420[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_422 = tensor.insert_slice %750 into %inserted_slice_421[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_423 = tensor.insert_slice %767 into %inserted_slice_422[0, 864, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_424 = tensor.insert_slice %784 into %inserted_slice_423[0, 896, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %785 = tosa.sub %inserted_slice_424, %94 : (tensor<1x928x14x14xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x14x14xf32>
    %786 = tosa.rsqrt %3 : (tensor<1x928x1x1xf32>) -> tensor<1x928x1x1xf32>
    %787 = tosa.mul %785, %786 {shift = 0 : i8} : (tensor<1x928x14x14xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x14x14xf32>
    %788 = tosa.mul %787, %94 {shift = 0 : i8} : (tensor<1x928x14x14xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x14x14xf32>
    %789 = tosa.add %788, %94 : (tensor<1x928x14x14xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x14x14xf32>
    %790 = tosa.clamp %789 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x928x14x14xf32>) -> tensor<1x928x14x14xf32>
    %791 = tosa.transpose %790, %32 : (tensor<1x928x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x928xf32>
    %792 = tosa.conv2d %791, %95, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x928xf32>, tensor<128x1x1x928xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %793 = tosa.transpose %792, %34 : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %794 = tosa.sub %793, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %795 = tosa.mul %794, %126 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %796 = tosa.mul %795, %38 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %797 = tosa.add %796, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %798 = tosa.clamp %797 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %799 = tosa.transpose %798, %32 : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %800 = tosa.conv2d %799, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %801 = tosa.transpose %800, %34 : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_425 = tensor.insert_slice %436 into %cst_38[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_426 = tensor.insert_slice %452 into %inserted_slice_425[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_427 = tensor.insert_slice %468 into %inserted_slice_426[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_428 = tensor.insert_slice %484 into %inserted_slice_427[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_429 = tensor.insert_slice %500 into %inserted_slice_428[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_430 = tensor.insert_slice %516 into %inserted_slice_429[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_431 = tensor.insert_slice %532 into %inserted_slice_430[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_432 = tensor.insert_slice %548 into %inserted_slice_431[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_433 = tensor.insert_slice %564 into %inserted_slice_432[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_434 = tensor.insert_slice %580 into %inserted_slice_433[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_435 = tensor.insert_slice %597 into %inserted_slice_434[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_436 = tensor.insert_slice %614 into %inserted_slice_435[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_437 = tensor.insert_slice %631 into %inserted_slice_436[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_438 = tensor.insert_slice %648 into %inserted_slice_437[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_439 = tensor.insert_slice %665 into %inserted_slice_438[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_440 = tensor.insert_slice %682 into %inserted_slice_439[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_441 = tensor.insert_slice %699 into %inserted_slice_440[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_442 = tensor.insert_slice %716 into %inserted_slice_441[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_443 = tensor.insert_slice %733 into %inserted_slice_442[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_444 = tensor.insert_slice %750 into %inserted_slice_443[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_445 = tensor.insert_slice %767 into %inserted_slice_444[0, 864, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_446 = tensor.insert_slice %784 into %inserted_slice_445[0, 896, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_447 = tensor.insert_slice %801 into %inserted_slice_446[0, 928, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %802 = tosa.sub %inserted_slice_447, %96 : (tensor<1x960x14x14xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x14x14xf32>
    %803 = tosa.rsqrt %2 : (tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %804 = tosa.mul %802, %803 {shift = 0 : i8} : (tensor<1x960x14x14xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x14x14xf32>
    %805 = tosa.mul %804, %96 {shift = 0 : i8} : (tensor<1x960x14x14xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x14x14xf32>
    %806 = tosa.add %805, %96 : (tensor<1x960x14x14xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x14x14xf32>
    %807 = tosa.clamp %806 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x960x14x14xf32>) -> tensor<1x960x14x14xf32>
    %808 = tosa.transpose %807, %32 : (tensor<1x960x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x960xf32>
    %809 = tosa.conv2d %808, %97, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x960xf32>, tensor<128x1x1x960xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %810 = tosa.transpose %809, %34 : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %811 = tosa.sub %810, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %812 = tosa.mul %811, %126 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %813 = tosa.mul %812, %38 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %814 = tosa.add %813, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %815 = tosa.clamp %814 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %816 = tosa.transpose %815, %32 : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %817 = tosa.conv2d %816, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %818 = tosa.transpose %817, %34 : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_448 = tensor.insert_slice %436 into %cst_39[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_449 = tensor.insert_slice %452 into %inserted_slice_448[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_450 = tensor.insert_slice %468 into %inserted_slice_449[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_451 = tensor.insert_slice %484 into %inserted_slice_450[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_452 = tensor.insert_slice %500 into %inserted_slice_451[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_453 = tensor.insert_slice %516 into %inserted_slice_452[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_454 = tensor.insert_slice %532 into %inserted_slice_453[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_455 = tensor.insert_slice %548 into %inserted_slice_454[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_456 = tensor.insert_slice %564 into %inserted_slice_455[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_457 = tensor.insert_slice %580 into %inserted_slice_456[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_458 = tensor.insert_slice %597 into %inserted_slice_457[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_459 = tensor.insert_slice %614 into %inserted_slice_458[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_460 = tensor.insert_slice %631 into %inserted_slice_459[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_461 = tensor.insert_slice %648 into %inserted_slice_460[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_462 = tensor.insert_slice %665 into %inserted_slice_461[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_463 = tensor.insert_slice %682 into %inserted_slice_462[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_464 = tensor.insert_slice %699 into %inserted_slice_463[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_465 = tensor.insert_slice %716 into %inserted_slice_464[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_466 = tensor.insert_slice %733 into %inserted_slice_465[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_467 = tensor.insert_slice %750 into %inserted_slice_466[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_468 = tensor.insert_slice %767 into %inserted_slice_467[0, 864, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_469 = tensor.insert_slice %784 into %inserted_slice_468[0, 896, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_470 = tensor.insert_slice %801 into %inserted_slice_469[0, 928, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_471 = tensor.insert_slice %818 into %inserted_slice_470[0, 960, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %819 = tosa.sub %inserted_slice_471, %98 : (tensor<1x992x14x14xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x14x14xf32>
    %820 = tosa.rsqrt %1 : (tensor<1x992x1x1xf32>) -> tensor<1x992x1x1xf32>
    %821 = tosa.mul %819, %820 {shift = 0 : i8} : (tensor<1x992x14x14xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x14x14xf32>
    %822 = tosa.mul %821, %98 {shift = 0 : i8} : (tensor<1x992x14x14xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x14x14xf32>
    %823 = tosa.add %822, %98 : (tensor<1x992x14x14xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x14x14xf32>
    %824 = tosa.clamp %823 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x992x14x14xf32>) -> tensor<1x992x14x14xf32>
    %825 = tosa.transpose %824, %32 : (tensor<1x992x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x992xf32>
    %826 = tosa.conv2d %825, %99, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x992xf32>, tensor<128x1x1x992xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %827 = tosa.transpose %826, %34 : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %828 = tosa.sub %827, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %829 = tosa.mul %828, %126 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %830 = tosa.mul %829, %38 {shift = 0 : i8} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %831 = tosa.add %830, %38 : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %832 = tosa.clamp %831 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %833 = tosa.transpose %832, %32 : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %834 = tosa.conv2d %833, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %835 = tosa.transpose %834, %34 : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_472 = tensor.insert_slice %436 into %cst_40[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_473 = tensor.insert_slice %452 into %inserted_slice_472[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_474 = tensor.insert_slice %468 into %inserted_slice_473[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_475 = tensor.insert_slice %484 into %inserted_slice_474[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_476 = tensor.insert_slice %500 into %inserted_slice_475[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_477 = tensor.insert_slice %516 into %inserted_slice_476[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_478 = tensor.insert_slice %532 into %inserted_slice_477[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_479 = tensor.insert_slice %548 into %inserted_slice_478[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_480 = tensor.insert_slice %564 into %inserted_slice_479[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_481 = tensor.insert_slice %580 into %inserted_slice_480[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_482 = tensor.insert_slice %597 into %inserted_slice_481[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_483 = tensor.insert_slice %614 into %inserted_slice_482[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_484 = tensor.insert_slice %631 into %inserted_slice_483[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_485 = tensor.insert_slice %648 into %inserted_slice_484[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_486 = tensor.insert_slice %665 into %inserted_slice_485[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_487 = tensor.insert_slice %682 into %inserted_slice_486[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_488 = tensor.insert_slice %699 into %inserted_slice_487[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_489 = tensor.insert_slice %716 into %inserted_slice_488[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_490 = tensor.insert_slice %733 into %inserted_slice_489[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_491 = tensor.insert_slice %750 into %inserted_slice_490[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_492 = tensor.insert_slice %767 into %inserted_slice_491[0, 864, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_493 = tensor.insert_slice %784 into %inserted_slice_492[0, 896, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_494 = tensor.insert_slice %801 into %inserted_slice_493[0, 928, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_495 = tensor.insert_slice %818 into %inserted_slice_494[0, 960, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_496 = tensor.insert_slice %835 into %inserted_slice_495[0, 992, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %836 = tosa.sub %inserted_slice_496, %100 : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %837 = tosa.rsqrt %0 : (tensor<1x1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    %838 = tosa.mul %836, %837 {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %839 = tosa.mul %838, %100 {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %840 = tosa.add %839, %100 : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %841 = tosa.clamp %840 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %842 = tosa.transpose %841, %32 : (tensor<1x1024x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x1024xf32>
    %843 = tosa.conv2d %842, %101, %102 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %844 = tosa.avg_pool2d %843 {acc_type = f32, kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x14x14x512xf32>) -> tensor<1x7x7x512xf32>
    %845 = tosa.transpose %844, %34 : (tensor<1x7x7x512xf32>, tensor<4xi64>) -> tensor<1x512x7x7xf32>
    %846 = tosa.sub %845, %66 : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %847 = tosa.mul %846, %428 {shift = 0 : i8} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %848 = tosa.mul %847, %66 {shift = 0 : i8} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %849 = tosa.add %848, %66 : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %850 = tosa.clamp %849 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %851 = tosa.transpose %850, %32 : (tensor<1x512x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x512xf32>
    %852 = tosa.conv2d %851, %69, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %853 = tosa.transpose %852, %34 : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %854 = tosa.sub %853, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %855 = tosa.mul %854, %126 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %856 = tosa.mul %855, %38 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %857 = tosa.add %856, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %858 = tosa.clamp %857 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %859 = tosa.transpose %858, %32 : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %860 = tosa.conv2d %859, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %861 = tosa.transpose %860, %34 : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_497 = tensor.insert_slice %845 into %cst_41[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x544x7x7xf32>
    %inserted_slice_498 = tensor.insert_slice %861 into %inserted_slice_497[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x544x7x7xf32>
    %862 = tosa.sub %inserted_slice_498, %70 : (tensor<1x544x7x7xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x7x7xf32>
    %863 = tosa.mul %862, %582 {shift = 0 : i8} : (tensor<1x544x7x7xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x7x7xf32>
    %864 = tosa.mul %863, %70 {shift = 0 : i8} : (tensor<1x544x7x7xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x7x7xf32>
    %865 = tosa.add %864, %70 : (tensor<1x544x7x7xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x7x7xf32>
    %866 = tosa.clamp %865 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x544x7x7xf32>) -> tensor<1x544x7x7xf32>
    %867 = tosa.transpose %866, %32 : (tensor<1x544x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x544xf32>
    %868 = tosa.conv2d %867, %71, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x544xf32>, tensor<128x1x1x544xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %869 = tosa.transpose %868, %34 : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %870 = tosa.sub %869, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %871 = tosa.mul %870, %126 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %872 = tosa.mul %871, %38 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %873 = tosa.add %872, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %874 = tosa.clamp %873 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %875 = tosa.transpose %874, %32 : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %876 = tosa.conv2d %875, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %877 = tosa.transpose %876, %34 : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_499 = tensor.insert_slice %845 into %cst_42[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x576x7x7xf32>
    %inserted_slice_500 = tensor.insert_slice %861 into %inserted_slice_499[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x576x7x7xf32>
    %inserted_slice_501 = tensor.insert_slice %877 into %inserted_slice_500[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x576x7x7xf32>
    %878 = tosa.sub %inserted_slice_501, %72 : (tensor<1x576x7x7xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x7x7xf32>
    %879 = tosa.mul %878, %599 {shift = 0 : i8} : (tensor<1x576x7x7xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x7x7xf32>
    %880 = tosa.mul %879, %72 {shift = 0 : i8} : (tensor<1x576x7x7xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x7x7xf32>
    %881 = tosa.add %880, %72 : (tensor<1x576x7x7xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x7x7xf32>
    %882 = tosa.clamp %881 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x576x7x7xf32>) -> tensor<1x576x7x7xf32>
    %883 = tosa.transpose %882, %32 : (tensor<1x576x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x576xf32>
    %884 = tosa.conv2d %883, %73, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x576xf32>, tensor<128x1x1x576xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %885 = tosa.transpose %884, %34 : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %886 = tosa.sub %885, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %887 = tosa.mul %886, %126 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %888 = tosa.mul %887, %38 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %889 = tosa.add %888, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %890 = tosa.clamp %889 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %891 = tosa.transpose %890, %32 : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %892 = tosa.conv2d %891, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %893 = tosa.transpose %892, %34 : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_502 = tensor.insert_slice %845 into %cst_43[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x608x7x7xf32>
    %inserted_slice_503 = tensor.insert_slice %861 into %inserted_slice_502[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x608x7x7xf32>
    %inserted_slice_504 = tensor.insert_slice %877 into %inserted_slice_503[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x608x7x7xf32>
    %inserted_slice_505 = tensor.insert_slice %893 into %inserted_slice_504[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x608x7x7xf32>
    %894 = tosa.sub %inserted_slice_505, %74 : (tensor<1x608x7x7xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x7x7xf32>
    %895 = tosa.mul %894, %616 {shift = 0 : i8} : (tensor<1x608x7x7xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x7x7xf32>
    %896 = tosa.mul %895, %74 {shift = 0 : i8} : (tensor<1x608x7x7xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x7x7xf32>
    %897 = tosa.add %896, %74 : (tensor<1x608x7x7xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x7x7xf32>
    %898 = tosa.clamp %897 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x608x7x7xf32>) -> tensor<1x608x7x7xf32>
    %899 = tosa.transpose %898, %32 : (tensor<1x608x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x608xf32>
    %900 = tosa.conv2d %899, %75, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x608xf32>, tensor<128x1x1x608xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %901 = tosa.transpose %900, %34 : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %902 = tosa.sub %901, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %903 = tosa.mul %902, %126 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %904 = tosa.mul %903, %38 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %905 = tosa.add %904, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %906 = tosa.clamp %905 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %907 = tosa.transpose %906, %32 : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %908 = tosa.conv2d %907, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %909 = tosa.transpose %908, %34 : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_506 = tensor.insert_slice %845 into %cst_44[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x640x7x7xf32>
    %inserted_slice_507 = tensor.insert_slice %861 into %inserted_slice_506[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x640x7x7xf32>
    %inserted_slice_508 = tensor.insert_slice %877 into %inserted_slice_507[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x640x7x7xf32>
    %inserted_slice_509 = tensor.insert_slice %893 into %inserted_slice_508[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x640x7x7xf32>
    %inserted_slice_510 = tensor.insert_slice %909 into %inserted_slice_509[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x640x7x7xf32>
    %910 = tosa.sub %inserted_slice_510, %76 : (tensor<1x640x7x7xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x7x7xf32>
    %911 = tosa.mul %910, %633 {shift = 0 : i8} : (tensor<1x640x7x7xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x7x7xf32>
    %912 = tosa.mul %911, %76 {shift = 0 : i8} : (tensor<1x640x7x7xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x7x7xf32>
    %913 = tosa.add %912, %76 : (tensor<1x640x7x7xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x7x7xf32>
    %914 = tosa.clamp %913 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x640x7x7xf32>) -> tensor<1x640x7x7xf32>
    %915 = tosa.transpose %914, %32 : (tensor<1x640x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x640xf32>
    %916 = tosa.conv2d %915, %77, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x640xf32>, tensor<128x1x1x640xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %917 = tosa.transpose %916, %34 : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %918 = tosa.sub %917, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %919 = tosa.mul %918, %126 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %920 = tosa.mul %919, %38 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %921 = tosa.add %920, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %922 = tosa.clamp %921 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %923 = tosa.transpose %922, %32 : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %924 = tosa.conv2d %923, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %925 = tosa.transpose %924, %34 : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_511 = tensor.insert_slice %845 into %cst_45[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x672x7x7xf32>
    %inserted_slice_512 = tensor.insert_slice %861 into %inserted_slice_511[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x672x7x7xf32>
    %inserted_slice_513 = tensor.insert_slice %877 into %inserted_slice_512[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x672x7x7xf32>
    %inserted_slice_514 = tensor.insert_slice %893 into %inserted_slice_513[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x672x7x7xf32>
    %inserted_slice_515 = tensor.insert_slice %909 into %inserted_slice_514[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x672x7x7xf32>
    %inserted_slice_516 = tensor.insert_slice %925 into %inserted_slice_515[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x672x7x7xf32>
    %926 = tosa.sub %inserted_slice_516, %78 : (tensor<1x672x7x7xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x7x7xf32>
    %927 = tosa.mul %926, %650 {shift = 0 : i8} : (tensor<1x672x7x7xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x7x7xf32>
    %928 = tosa.mul %927, %78 {shift = 0 : i8} : (tensor<1x672x7x7xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x7x7xf32>
    %929 = tosa.add %928, %78 : (tensor<1x672x7x7xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x7x7xf32>
    %930 = tosa.clamp %929 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x672x7x7xf32>) -> tensor<1x672x7x7xf32>
    %931 = tosa.transpose %930, %32 : (tensor<1x672x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x672xf32>
    %932 = tosa.conv2d %931, %79, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x672xf32>, tensor<128x1x1x672xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %933 = tosa.transpose %932, %34 : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %934 = tosa.sub %933, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %935 = tosa.mul %934, %126 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %936 = tosa.mul %935, %38 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %937 = tosa.add %936, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %938 = tosa.clamp %937 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %939 = tosa.transpose %938, %32 : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %940 = tosa.conv2d %939, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %941 = tosa.transpose %940, %34 : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_517 = tensor.insert_slice %845 into %cst_46[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x704x7x7xf32>
    %inserted_slice_518 = tensor.insert_slice %861 into %inserted_slice_517[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x704x7x7xf32>
    %inserted_slice_519 = tensor.insert_slice %877 into %inserted_slice_518[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x704x7x7xf32>
    %inserted_slice_520 = tensor.insert_slice %893 into %inserted_slice_519[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x704x7x7xf32>
    %inserted_slice_521 = tensor.insert_slice %909 into %inserted_slice_520[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x704x7x7xf32>
    %inserted_slice_522 = tensor.insert_slice %925 into %inserted_slice_521[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x704x7x7xf32>
    %inserted_slice_523 = tensor.insert_slice %941 into %inserted_slice_522[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x704x7x7xf32>
    %942 = tosa.sub %inserted_slice_523, %80 : (tensor<1x704x7x7xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x7x7xf32>
    %943 = tosa.mul %942, %667 {shift = 0 : i8} : (tensor<1x704x7x7xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x7x7xf32>
    %944 = tosa.mul %943, %80 {shift = 0 : i8} : (tensor<1x704x7x7xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x7x7xf32>
    %945 = tosa.add %944, %80 : (tensor<1x704x7x7xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x7x7xf32>
    %946 = tosa.clamp %945 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x704x7x7xf32>) -> tensor<1x704x7x7xf32>
    %947 = tosa.transpose %946, %32 : (tensor<1x704x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x704xf32>
    %948 = tosa.conv2d %947, %81, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x704xf32>, tensor<128x1x1x704xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %949 = tosa.transpose %948, %34 : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %950 = tosa.sub %949, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %951 = tosa.mul %950, %126 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %952 = tosa.mul %951, %38 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %953 = tosa.add %952, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %954 = tosa.clamp %953 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %955 = tosa.transpose %954, %32 : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %956 = tosa.conv2d %955, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %957 = tosa.transpose %956, %34 : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_524 = tensor.insert_slice %845 into %cst_47[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x736x7x7xf32>
    %inserted_slice_525 = tensor.insert_slice %861 into %inserted_slice_524[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x736x7x7xf32>
    %inserted_slice_526 = tensor.insert_slice %877 into %inserted_slice_525[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x736x7x7xf32>
    %inserted_slice_527 = tensor.insert_slice %893 into %inserted_slice_526[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x736x7x7xf32>
    %inserted_slice_528 = tensor.insert_slice %909 into %inserted_slice_527[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x736x7x7xf32>
    %inserted_slice_529 = tensor.insert_slice %925 into %inserted_slice_528[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x736x7x7xf32>
    %inserted_slice_530 = tensor.insert_slice %941 into %inserted_slice_529[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x736x7x7xf32>
    %inserted_slice_531 = tensor.insert_slice %957 into %inserted_slice_530[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x736x7x7xf32>
    %958 = tosa.sub %inserted_slice_531, %82 : (tensor<1x736x7x7xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x7x7xf32>
    %959 = tosa.mul %958, %684 {shift = 0 : i8} : (tensor<1x736x7x7xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x7x7xf32>
    %960 = tosa.mul %959, %82 {shift = 0 : i8} : (tensor<1x736x7x7xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x7x7xf32>
    %961 = tosa.add %960, %82 : (tensor<1x736x7x7xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x7x7xf32>
    %962 = tosa.clamp %961 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x736x7x7xf32>) -> tensor<1x736x7x7xf32>
    %963 = tosa.transpose %962, %32 : (tensor<1x736x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x736xf32>
    %964 = tosa.conv2d %963, %83, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x736xf32>, tensor<128x1x1x736xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %965 = tosa.transpose %964, %34 : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %966 = tosa.sub %965, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %967 = tosa.mul %966, %126 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %968 = tosa.mul %967, %38 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %969 = tosa.add %968, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %970 = tosa.clamp %969 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %971 = tosa.transpose %970, %32 : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %972 = tosa.conv2d %971, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %973 = tosa.transpose %972, %34 : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_532 = tensor.insert_slice %845 into %cst_48[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_533 = tensor.insert_slice %861 into %inserted_slice_532[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_534 = tensor.insert_slice %877 into %inserted_slice_533[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_535 = tensor.insert_slice %893 into %inserted_slice_534[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_536 = tensor.insert_slice %909 into %inserted_slice_535[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_537 = tensor.insert_slice %925 into %inserted_slice_536[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_538 = tensor.insert_slice %941 into %inserted_slice_537[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_539 = tensor.insert_slice %957 into %inserted_slice_538[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_540 = tensor.insert_slice %973 into %inserted_slice_539[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %974 = tosa.sub %inserted_slice_540, %84 : (tensor<1x768x7x7xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x7x7xf32>
    %975 = tosa.mul %974, %701 {shift = 0 : i8} : (tensor<1x768x7x7xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x7x7xf32>
    %976 = tosa.mul %975, %84 {shift = 0 : i8} : (tensor<1x768x7x7xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x7x7xf32>
    %977 = tosa.add %976, %84 : (tensor<1x768x7x7xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x7x7xf32>
    %978 = tosa.clamp %977 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x768x7x7xf32>) -> tensor<1x768x7x7xf32>
    %979 = tosa.transpose %978, %32 : (tensor<1x768x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x768xf32>
    %980 = tosa.conv2d %979, %85, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x768xf32>, tensor<128x1x1x768xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %981 = tosa.transpose %980, %34 : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %982 = tosa.sub %981, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %983 = tosa.mul %982, %126 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %984 = tosa.mul %983, %38 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %985 = tosa.add %984, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %986 = tosa.clamp %985 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %987 = tosa.transpose %986, %32 : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %988 = tosa.conv2d %987, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %989 = tosa.transpose %988, %34 : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_541 = tensor.insert_slice %845 into %cst_49[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_542 = tensor.insert_slice %861 into %inserted_slice_541[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_543 = tensor.insert_slice %877 into %inserted_slice_542[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_544 = tensor.insert_slice %893 into %inserted_slice_543[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_545 = tensor.insert_slice %909 into %inserted_slice_544[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_546 = tensor.insert_slice %925 into %inserted_slice_545[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_547 = tensor.insert_slice %941 into %inserted_slice_546[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_548 = tensor.insert_slice %957 into %inserted_slice_547[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_549 = tensor.insert_slice %973 into %inserted_slice_548[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_550 = tensor.insert_slice %989 into %inserted_slice_549[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %990 = tosa.sub %inserted_slice_550, %86 : (tensor<1x800x7x7xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x7x7xf32>
    %991 = tosa.mul %990, %718 {shift = 0 : i8} : (tensor<1x800x7x7xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x7x7xf32>
    %992 = tosa.mul %991, %86 {shift = 0 : i8} : (tensor<1x800x7x7xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x7x7xf32>
    %993 = tosa.add %992, %86 : (tensor<1x800x7x7xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x7x7xf32>
    %994 = tosa.clamp %993 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x800x7x7xf32>) -> tensor<1x800x7x7xf32>
    %995 = tosa.transpose %994, %32 : (tensor<1x800x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x800xf32>
    %996 = tosa.conv2d %995, %87, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x800xf32>, tensor<128x1x1x800xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %997 = tosa.transpose %996, %34 : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %998 = tosa.sub %997, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %999 = tosa.mul %998, %126 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1000 = tosa.mul %999, %38 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1001 = tosa.add %1000, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1002 = tosa.clamp %1001 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1003 = tosa.transpose %1002, %32 : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1004 = tosa.conv2d %1003, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %1005 = tosa.transpose %1004, %34 : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_551 = tensor.insert_slice %845 into %cst_50[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_552 = tensor.insert_slice %861 into %inserted_slice_551[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_553 = tensor.insert_slice %877 into %inserted_slice_552[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_554 = tensor.insert_slice %893 into %inserted_slice_553[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_555 = tensor.insert_slice %909 into %inserted_slice_554[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_556 = tensor.insert_slice %925 into %inserted_slice_555[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_557 = tensor.insert_slice %941 into %inserted_slice_556[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_558 = tensor.insert_slice %957 into %inserted_slice_557[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_559 = tensor.insert_slice %973 into %inserted_slice_558[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_560 = tensor.insert_slice %989 into %inserted_slice_559[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_561 = tensor.insert_slice %1005 into %inserted_slice_560[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %1006 = tosa.sub %inserted_slice_561, %88 : (tensor<1x832x7x7xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x7x7xf32>
    %1007 = tosa.mul %1006, %735 {shift = 0 : i8} : (tensor<1x832x7x7xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x7x7xf32>
    %1008 = tosa.mul %1007, %88 {shift = 0 : i8} : (tensor<1x832x7x7xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x7x7xf32>
    %1009 = tosa.add %1008, %88 : (tensor<1x832x7x7xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x7x7xf32>
    %1010 = tosa.clamp %1009 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x832x7x7xf32>) -> tensor<1x832x7x7xf32>
    %1011 = tosa.transpose %1010, %32 : (tensor<1x832x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x832xf32>
    %1012 = tosa.conv2d %1011, %89, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x832xf32>, tensor<128x1x1x832xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1013 = tosa.transpose %1012, %34 : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1014 = tosa.sub %1013, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1015 = tosa.mul %1014, %126 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1016 = tosa.mul %1015, %38 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1017 = tosa.add %1016, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1018 = tosa.clamp %1017 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1019 = tosa.transpose %1018, %32 : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1020 = tosa.conv2d %1019, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %1021 = tosa.transpose %1020, %34 : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_562 = tensor.insert_slice %845 into %cst_51[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_563 = tensor.insert_slice %861 into %inserted_slice_562[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_564 = tensor.insert_slice %877 into %inserted_slice_563[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_565 = tensor.insert_slice %893 into %inserted_slice_564[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_566 = tensor.insert_slice %909 into %inserted_slice_565[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_567 = tensor.insert_slice %925 into %inserted_slice_566[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_568 = tensor.insert_slice %941 into %inserted_slice_567[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_569 = tensor.insert_slice %957 into %inserted_slice_568[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_570 = tensor.insert_slice %973 into %inserted_slice_569[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_571 = tensor.insert_slice %989 into %inserted_slice_570[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_572 = tensor.insert_slice %1005 into %inserted_slice_571[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_573 = tensor.insert_slice %1021 into %inserted_slice_572[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %1022 = tosa.sub %inserted_slice_573, %90 : (tensor<1x864x7x7xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x7x7xf32>
    %1023 = tosa.mul %1022, %752 {shift = 0 : i8} : (tensor<1x864x7x7xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x7x7xf32>
    %1024 = tosa.mul %1023, %90 {shift = 0 : i8} : (tensor<1x864x7x7xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x7x7xf32>
    %1025 = tosa.add %1024, %90 : (tensor<1x864x7x7xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x7x7xf32>
    %1026 = tosa.clamp %1025 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x864x7x7xf32>) -> tensor<1x864x7x7xf32>
    %1027 = tosa.transpose %1026, %32 : (tensor<1x864x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x864xf32>
    %1028 = tosa.conv2d %1027, %91, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x864xf32>, tensor<128x1x1x864xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1029 = tosa.transpose %1028, %34 : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1030 = tosa.sub %1029, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1031 = tosa.mul %1030, %126 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1032 = tosa.mul %1031, %38 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1033 = tosa.add %1032, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1034 = tosa.clamp %1033 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1035 = tosa.transpose %1034, %32 : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1036 = tosa.conv2d %1035, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %1037 = tosa.transpose %1036, %34 : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_574 = tensor.insert_slice %845 into %cst_52[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_575 = tensor.insert_slice %861 into %inserted_slice_574[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_576 = tensor.insert_slice %877 into %inserted_slice_575[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_577 = tensor.insert_slice %893 into %inserted_slice_576[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_578 = tensor.insert_slice %909 into %inserted_slice_577[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_579 = tensor.insert_slice %925 into %inserted_slice_578[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_580 = tensor.insert_slice %941 into %inserted_slice_579[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_581 = tensor.insert_slice %957 into %inserted_slice_580[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_582 = tensor.insert_slice %973 into %inserted_slice_581[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_583 = tensor.insert_slice %989 into %inserted_slice_582[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_584 = tensor.insert_slice %1005 into %inserted_slice_583[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_585 = tensor.insert_slice %1021 into %inserted_slice_584[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_586 = tensor.insert_slice %1037 into %inserted_slice_585[0, 864, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %1038 = tosa.sub %inserted_slice_586, %92 : (tensor<1x896x7x7xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x7x7xf32>
    %1039 = tosa.mul %1038, %769 {shift = 0 : i8} : (tensor<1x896x7x7xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x7x7xf32>
    %1040 = tosa.mul %1039, %92 {shift = 0 : i8} : (tensor<1x896x7x7xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x7x7xf32>
    %1041 = tosa.add %1040, %92 : (tensor<1x896x7x7xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x7x7xf32>
    %1042 = tosa.clamp %1041 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x896x7x7xf32>) -> tensor<1x896x7x7xf32>
    %1043 = tosa.transpose %1042, %32 : (tensor<1x896x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x896xf32>
    %1044 = tosa.conv2d %1043, %93, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x896xf32>, tensor<128x1x1x896xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1045 = tosa.transpose %1044, %34 : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1046 = tosa.sub %1045, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1047 = tosa.mul %1046, %126 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1048 = tosa.mul %1047, %38 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1049 = tosa.add %1048, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1050 = tosa.clamp %1049 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1051 = tosa.transpose %1050, %32 : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1052 = tosa.conv2d %1051, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %1053 = tosa.transpose %1052, %34 : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_587 = tensor.insert_slice %845 into %cst_53[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_588 = tensor.insert_slice %861 into %inserted_slice_587[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_589 = tensor.insert_slice %877 into %inserted_slice_588[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_590 = tensor.insert_slice %893 into %inserted_slice_589[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_591 = tensor.insert_slice %909 into %inserted_slice_590[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_592 = tensor.insert_slice %925 into %inserted_slice_591[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_593 = tensor.insert_slice %941 into %inserted_slice_592[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_594 = tensor.insert_slice %957 into %inserted_slice_593[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_595 = tensor.insert_slice %973 into %inserted_slice_594[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_596 = tensor.insert_slice %989 into %inserted_slice_595[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_597 = tensor.insert_slice %1005 into %inserted_slice_596[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_598 = tensor.insert_slice %1021 into %inserted_slice_597[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_599 = tensor.insert_slice %1037 into %inserted_slice_598[0, 864, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_600 = tensor.insert_slice %1053 into %inserted_slice_599[0, 896, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %1054 = tosa.sub %inserted_slice_600, %94 : (tensor<1x928x7x7xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x7x7xf32>
    %1055 = tosa.mul %1054, %786 {shift = 0 : i8} : (tensor<1x928x7x7xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x7x7xf32>
    %1056 = tosa.mul %1055, %94 {shift = 0 : i8} : (tensor<1x928x7x7xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x7x7xf32>
    %1057 = tosa.add %1056, %94 : (tensor<1x928x7x7xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x7x7xf32>
    %1058 = tosa.clamp %1057 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x928x7x7xf32>) -> tensor<1x928x7x7xf32>
    %1059 = tosa.transpose %1058, %32 : (tensor<1x928x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x928xf32>
    %1060 = tosa.conv2d %1059, %95, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x928xf32>, tensor<128x1x1x928xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1061 = tosa.transpose %1060, %34 : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1062 = tosa.sub %1061, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1063 = tosa.mul %1062, %126 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1064 = tosa.mul %1063, %38 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1065 = tosa.add %1064, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1066 = tosa.clamp %1065 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1067 = tosa.transpose %1066, %32 : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1068 = tosa.conv2d %1067, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %1069 = tosa.transpose %1068, %34 : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_601 = tensor.insert_slice %845 into %cst_54[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_602 = tensor.insert_slice %861 into %inserted_slice_601[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_603 = tensor.insert_slice %877 into %inserted_slice_602[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_604 = tensor.insert_slice %893 into %inserted_slice_603[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_605 = tensor.insert_slice %909 into %inserted_slice_604[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_606 = tensor.insert_slice %925 into %inserted_slice_605[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_607 = tensor.insert_slice %941 into %inserted_slice_606[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_608 = tensor.insert_slice %957 into %inserted_slice_607[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_609 = tensor.insert_slice %973 into %inserted_slice_608[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_610 = tensor.insert_slice %989 into %inserted_slice_609[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_611 = tensor.insert_slice %1005 into %inserted_slice_610[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_612 = tensor.insert_slice %1021 into %inserted_slice_611[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_613 = tensor.insert_slice %1037 into %inserted_slice_612[0, 864, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_614 = tensor.insert_slice %1053 into %inserted_slice_613[0, 896, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_615 = tensor.insert_slice %1069 into %inserted_slice_614[0, 928, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %1070 = tosa.sub %inserted_slice_615, %96 : (tensor<1x960x7x7xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x7x7xf32>
    %1071 = tosa.mul %1070, %803 {shift = 0 : i8} : (tensor<1x960x7x7xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x7x7xf32>
    %1072 = tosa.mul %1071, %96 {shift = 0 : i8} : (tensor<1x960x7x7xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x7x7xf32>
    %1073 = tosa.add %1072, %96 : (tensor<1x960x7x7xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x7x7xf32>
    %1074 = tosa.clamp %1073 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x960x7x7xf32>) -> tensor<1x960x7x7xf32>
    %1075 = tosa.transpose %1074, %32 : (tensor<1x960x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x960xf32>
    %1076 = tosa.conv2d %1075, %97, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x960xf32>, tensor<128x1x1x960xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1077 = tosa.transpose %1076, %34 : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1078 = tosa.sub %1077, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1079 = tosa.mul %1078, %126 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1080 = tosa.mul %1079, %38 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1081 = tosa.add %1080, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1082 = tosa.clamp %1081 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1083 = tosa.transpose %1082, %32 : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1084 = tosa.conv2d %1083, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %1085 = tosa.transpose %1084, %34 : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_616 = tensor.insert_slice %845 into %cst_55[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_617 = tensor.insert_slice %861 into %inserted_slice_616[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_618 = tensor.insert_slice %877 into %inserted_slice_617[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_619 = tensor.insert_slice %893 into %inserted_slice_618[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_620 = tensor.insert_slice %909 into %inserted_slice_619[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_621 = tensor.insert_slice %925 into %inserted_slice_620[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_622 = tensor.insert_slice %941 into %inserted_slice_621[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_623 = tensor.insert_slice %957 into %inserted_slice_622[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_624 = tensor.insert_slice %973 into %inserted_slice_623[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_625 = tensor.insert_slice %989 into %inserted_slice_624[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_626 = tensor.insert_slice %1005 into %inserted_slice_625[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_627 = tensor.insert_slice %1021 into %inserted_slice_626[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_628 = tensor.insert_slice %1037 into %inserted_slice_627[0, 864, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_629 = tensor.insert_slice %1053 into %inserted_slice_628[0, 896, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_630 = tensor.insert_slice %1069 into %inserted_slice_629[0, 928, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_631 = tensor.insert_slice %1085 into %inserted_slice_630[0, 960, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %1086 = tosa.sub %inserted_slice_631, %98 : (tensor<1x992x7x7xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x7x7xf32>
    %1087 = tosa.mul %1086, %820 {shift = 0 : i8} : (tensor<1x992x7x7xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x7x7xf32>
    %1088 = tosa.mul %1087, %98 {shift = 0 : i8} : (tensor<1x992x7x7xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x7x7xf32>
    %1089 = tosa.add %1088, %98 : (tensor<1x992x7x7xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x7x7xf32>
    %1090 = tosa.clamp %1089 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x992x7x7xf32>) -> tensor<1x992x7x7xf32>
    %1091 = tosa.transpose %1090, %32 : (tensor<1x992x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x992xf32>
    %1092 = tosa.conv2d %1091, %99, %37 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x992xf32>, tensor<128x1x1x992xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1093 = tosa.transpose %1092, %34 : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1094 = tosa.sub %1093, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1095 = tosa.mul %1094, %126 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1096 = tosa.mul %1095, %38 {shift = 0 : i8} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1097 = tosa.add %1096, %38 : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1098 = tosa.clamp %1097 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1099 = tosa.transpose %1098, %32 : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1100 = tosa.conv2d %1099, %39, %40 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %1101 = tosa.transpose %1100, %34 : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_632 = tensor.insert_slice %845 into %cst_56[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_633 = tensor.insert_slice %861 into %inserted_slice_632[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_634 = tensor.insert_slice %877 into %inserted_slice_633[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_635 = tensor.insert_slice %893 into %inserted_slice_634[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_636 = tensor.insert_slice %909 into %inserted_slice_635[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_637 = tensor.insert_slice %925 into %inserted_slice_636[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_638 = tensor.insert_slice %941 into %inserted_slice_637[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_639 = tensor.insert_slice %957 into %inserted_slice_638[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_640 = tensor.insert_slice %973 into %inserted_slice_639[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_641 = tensor.insert_slice %989 into %inserted_slice_640[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_642 = tensor.insert_slice %1005 into %inserted_slice_641[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_643 = tensor.insert_slice %1021 into %inserted_slice_642[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_644 = tensor.insert_slice %1037 into %inserted_slice_643[0, 864, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_645 = tensor.insert_slice %1053 into %inserted_slice_644[0, 896, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_646 = tensor.insert_slice %1069 into %inserted_slice_645[0, 928, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_647 = tensor.insert_slice %1085 into %inserted_slice_646[0, 960, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_648 = tensor.insert_slice %1101 into %inserted_slice_647[0, 992, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %1102 = tosa.sub %inserted_slice_648, %100 : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %1103 = tosa.mul %1102, %837 {shift = 0 : i8} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %1104 = tosa.mul %1103, %100 {shift = 0 : i8} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %1105 = tosa.add %1104, %100 : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %1106 = tosa.clamp %1105 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %1107 = tosa.transpose %1106, %32 : (tensor<1x1024x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x1024xf32>
    %1108 = tosa.avg_pool2d %1107 {acc_type = f32, kernel = array<i64: 7, 7>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>) -> tensor<1x1x1x1024xf32>
    %1109 = tosa.reshape %1108 {new_shape = array<i64: 1, 1, 1024>} : (tensor<1x1x1x1024xf32>) -> tensor<1x1x1024xf32>
    %1110 = tosa.matmul %1109, %103 : (tensor<1x1x1024xf32>, tensor<1x1024x1000xf32>) -> tensor<1x1x1000xf32>
    %1111 = tosa.add %1110, %104 : (tensor<1x1x1000xf32>, tensor<1000xf32>) -> tensor<1x1x1000xf32>
    %1112 = tosa.reshape %1111 {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    return %1112, %126, %1090, %1089, %820, %1082, %1081, %126, %1074, %1073, %803, %1066, %1065, %126, %1058, %1057, %786, %1050, %1049, %126, %1042, %1041, %769, %1034, %1033, %126, %1026, %1025, %752, %1018, %1017, %126, %1010, %1009, %735, %1002, %1001, %126, %994, %993, %718, %986, %985, %126, %978, %977, %701, %970, %969, %126, %962, %961, %684, %954, %953, %126, %946, %945, %667, %938, %937, %126, %930, %929, %650, %922, %921, %126, %914, %913, %633, %906, %905, %126, %898, %897, %616, %890, %889, %126, %882, %881, %599, %874, %873, %126, %866, %865, %582, %858, %857, %126, %850, %849, %428, %843, %841, %840, %837, %832, %831, %126, %824, %823, %820, %815, %814, %126, %807, %806, %803, %798, %797, %126, %790, %789, %786, %781, %780, %126, %773, %772, %769, %764, %763, %126, %756, %755, %752, %747, %746, %126, %739, %738, %735, %730, %729, %126, %722, %721, %718, %713, %712, %126, %705, %704, %701, %696, %695, %126, %688, %687, %684, %679, %678, %126, %671, %670, %667, %662, %661, %126, %654, %653, %650, %645, %644, %126, %637, %636, %633, %628, %627, %126, %620, %619, %616, %611, %610, %126, %603, %602, %599, %594, %593, %126, %586, %585, %582, %577, %576, %126, %569, %568, %428, %561, %560, %126, %553, %552, %411, %545, %544, %126, %537, %536, %394, %529, %528, %126, %521, %520, %377, %513, %512, %126, %505, %504, %360, %497, %496, %126, %489, %488, %343, %481, %480, %126, %473, %472, %326, %465, %464, %126, %457, %456, %309, %449, %448, %126, %441, %440, %219, %434, %432, %431, %428, %423, %422, %126, %415, %414, %411, %406, %405, %126, %398, %397, %394, %389, %388, %126, %381, %380, %377, %372, %371, %126, %364, %363, %360, %355, %354, %126, %347, %346, %343, %338, %337, %126, %330, %329, %326, %321, %320, %126, %313, %312, %309, %304, %303, %126, %296, %295, %219, %288, %287, %126, %280, %279, %202, %272, %271, %126, %264, %263, %185, %256, %255, %126, %248, %247, %168, %240, %239, %126, %232, %231 : tensor<1x1000xf32>, tensor<1x128x1x1xf32>, tensor<1x992x7x7xf32>, tensor<1x992x7x7xf32>, tensor<1x992x1x1xf32>, tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>, tensor<1x960x7x7xf32>, tensor<1x960x7x7xf32>, tensor<1x960x1x1xf32>, tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>, tensor<1x928x7x7xf32>, tensor<1x928x7x7xf32>, tensor<1x928x1x1xf32>, tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>, tensor<1x896x7x7xf32>, tensor<1x896x7x7xf32>, tensor<1x896x1x1xf32>, tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>, tensor<1x864x7x7xf32>, tensor<1x864x7x7xf32>, tensor<1x864x1x1xf32>, tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>, tensor<1x832x7x7xf32>, tensor<1x832x7x7xf32>, tensor<1x832x1x1xf32>, tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>, tensor<1x800x7x7xf32>, tensor<1x800x7x7xf32>, tensor<1x800x1x1xf32>, tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>, tensor<1x768x7x7xf32>, tensor<1x768x7x7xf32>, tensor<1x768x1x1xf32>, tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>, tensor<1x736x7x7xf32>, tensor<1x736x7x7xf32>, tensor<1x736x1x1xf32>, tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>, tensor<1x704x7x7xf32>, tensor<1x704x7x7xf32>, tensor<1x704x1x1xf32>, tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>, tensor<1x672x7x7xf32>, tensor<1x672x7x7xf32>, tensor<1x672x1x1xf32>, tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>, tensor<1x640x7x7xf32>, tensor<1x640x7x7xf32>, tensor<1x640x1x1xf32>, tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>, tensor<1x608x7x7xf32>, tensor<1x608x7x7xf32>, tensor<1x608x1x1xf32>, tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>, tensor<1x576x7x7xf32>, tensor<1x576x7x7xf32>, tensor<1x576x1x1xf32>, tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>, tensor<1x544x7x7xf32>, tensor<1x544x7x7xf32>, tensor<1x544x1x1xf32>, tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>, tensor<1x14x14x512xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x992x14x14xf32>, tensor<1x992x14x14xf32>, tensor<1x992x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x960x14x14xf32>, tensor<1x960x14x14xf32>, tensor<1x960x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x928x14x14xf32>, tensor<1x928x14x14xf32>, tensor<1x928x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x896x14x14xf32>, tensor<1x896x14x14xf32>, tensor<1x896x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x864x14x14xf32>, tensor<1x864x14x14xf32>, tensor<1x864x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x832x14x14xf32>, tensor<1x832x14x14xf32>, tensor<1x832x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x800x14x14xf32>, tensor<1x800x14x14xf32>, tensor<1x800x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>, tensor<1x768x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x736x14x14xf32>, tensor<1x736x14x14xf32>, tensor<1x736x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x704x14x14xf32>, tensor<1x704x14x14xf32>, tensor<1x704x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x672x14x14xf32>, tensor<1x672x14x14xf32>, tensor<1x672x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x640x14x14xf32>, tensor<1x640x14x14xf32>, tensor<1x640x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x608x14x14xf32>, tensor<1x608x14x14xf32>, tensor<1x608x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x576x14x14xf32>, tensor<1x576x14x14xf32>, tensor<1x576x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x544x14x14xf32>, tensor<1x544x14x14xf32>, tensor<1x544x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x480x14x14xf32>, tensor<1x480x14x14xf32>, tensor<1x480x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x448x14x14xf32>, tensor<1x448x14x14xf32>, tensor<1x448x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x416x14x14xf32>, tensor<1x416x14x14xf32>, tensor<1x416x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x384x14x14xf32>, tensor<1x384x14x14xf32>, tensor<1x384x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x352x14x14xf32>, tensor<1x352x14x14xf32>, tensor<1x352x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x320x14x14xf32>, tensor<1x320x14x14xf32>, tensor<1x320x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x288x14x14xf32>, tensor<1x288x14x14xf32>, tensor<1x288x1x1xf32>, tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>, tensor<1x28x28x256xf32>, tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>, tensor<1x480x28x28xf32>, tensor<1x480x28x28xf32>, tensor<1x480x1x1xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>, tensor<1x448x28x28xf32>, tensor<1x448x28x28xf32>, tensor<1x448x1x1xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>, tensor<1x416x28x28xf32>, tensor<1x416x28x28xf32>, tensor<1x416x1x1xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>, tensor<1x384x28x28xf32>, tensor<1x384x28x28xf32>, tensor<1x384x1x1xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>, tensor<1x352x28x28xf32>, tensor<1x352x28x28xf32>, tensor<1x352x1x1xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>, tensor<1x320x28x28xf32>, tensor<1x320x28x28xf32>, tensor<1x320x1x1xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>, tensor<1x288x28x28xf32>, tensor<1x288x28x28xf32>, tensor<1x288x1x1xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>, tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>, tensor<1x224x28x28xf32>, tensor<1x224x28x28xf32>, tensor<1x224x1x1xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>, tensor<1x192x28x28xf32>, tensor<1x192x28x28xf32>, tensor<1x192x1x1xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>, tensor<1x160x28x28xf32>, tensor<1x160x28x28xf32>, tensor<1x160x1x1xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>
  }
}

