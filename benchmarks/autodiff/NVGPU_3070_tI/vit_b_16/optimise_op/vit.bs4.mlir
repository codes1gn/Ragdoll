#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
module {
  ml_program.global private mutable @global579(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global578(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global574(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global567(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global566(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global561(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global560(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global555(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global554(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global550(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global543(dense<1.000000e+00> : tensor<48x197x197xf32>) : tensor<48x197x197xf32>
  ml_program.global private mutable @global542(dense<1.000000e+00> : tensor<48x197x1xf32>) : tensor<48x197x1xf32>
  ml_program.global private mutable @global541(dense<1.000000e+00> : tensor<48x197x1xf32>) : tensor<48x197x1xf32>
  ml_program.global private mutable @global540(dense<1.000000e+00> : tensor<48x197x197xf32>) : tensor<48x197x197xf32>
  ml_program.global private mutable @global537(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global532(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global531(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global527(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global520(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global519(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global514(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global513(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global508(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global507(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global503(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global496(dense<1.000000e+00> : tensor<48x197x197xf32>) : tensor<48x197x197xf32>
  ml_program.global private mutable @global495(dense<1.000000e+00> : tensor<48x197x1xf32>) : tensor<48x197x1xf32>
  ml_program.global private mutable @global494(dense<1.000000e+00> : tensor<48x197x1xf32>) : tensor<48x197x1xf32>
  ml_program.global private mutable @global493(dense<1.000000e+00> : tensor<48x197x197xf32>) : tensor<48x197x197xf32>
  ml_program.global private mutable @global490(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global485(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global484(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global480(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global473(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global472(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global467(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global466(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global461(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global460(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global456(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global449(dense<1.000000e+00> : tensor<48x197x197xf32>) : tensor<48x197x197xf32>
  ml_program.global private mutable @global448(dense<1.000000e+00> : tensor<48x197x1xf32>) : tensor<48x197x1xf32>
  ml_program.global private mutable @global447(dense<1.000000e+00> : tensor<48x197x1xf32>) : tensor<48x197x1xf32>
  ml_program.global private mutable @global446(dense<1.000000e+00> : tensor<48x197x197xf32>) : tensor<48x197x197xf32>
  ml_program.global private mutable @global443(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global438(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global437(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global433(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global426(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global425(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global420(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global419(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global414(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global413(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global409(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global402(dense<1.000000e+00> : tensor<48x197x197xf32>) : tensor<48x197x197xf32>
  ml_program.global private mutable @global401(dense<1.000000e+00> : tensor<48x197x1xf32>) : tensor<48x197x1xf32>
  ml_program.global private mutable @global400(dense<1.000000e+00> : tensor<48x197x1xf32>) : tensor<48x197x1xf32>
  ml_program.global private mutable @global399(dense<1.000000e+00> : tensor<48x197x197xf32>) : tensor<48x197x197xf32>
  ml_program.global private mutable @global396(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global391(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global390(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global386(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global379(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global378(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global373(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global372(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global367(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global366(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global362(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global355(dense<1.000000e+00> : tensor<48x197x197xf32>) : tensor<48x197x197xf32>
  ml_program.global private mutable @global354(dense<1.000000e+00> : tensor<48x197x1xf32>) : tensor<48x197x1xf32>
  ml_program.global private mutable @global353(dense<1.000000e+00> : tensor<48x197x1xf32>) : tensor<48x197x1xf32>
  ml_program.global private mutable @global352(dense<1.000000e+00> : tensor<48x197x197xf32>) : tensor<48x197x197xf32>
  ml_program.global private mutable @global349(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global344(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global343(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global339(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global332(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global331(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global326(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global325(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global320(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global319(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global315(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global308(dense<1.000000e+00> : tensor<48x197x197xf32>) : tensor<48x197x197xf32>
  ml_program.global private mutable @global307(dense<1.000000e+00> : tensor<48x197x1xf32>) : tensor<48x197x1xf32>
  ml_program.global private mutable @global306(dense<1.000000e+00> : tensor<48x197x1xf32>) : tensor<48x197x1xf32>
  ml_program.global private mutable @global305(dense<1.000000e+00> : tensor<48x197x197xf32>) : tensor<48x197x197xf32>
  ml_program.global private mutable @global302(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global297(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global296(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global292(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global285(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global284(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global279(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global278(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global273(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global272(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global268(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global261(dense<1.000000e+00> : tensor<48x197x197xf32>) : tensor<48x197x197xf32>
  ml_program.global private mutable @global260(dense<1.000000e+00> : tensor<48x197x1xf32>) : tensor<48x197x1xf32>
  ml_program.global private mutable @global259(dense<1.000000e+00> : tensor<48x197x1xf32>) : tensor<48x197x1xf32>
  ml_program.global private mutable @global258(dense<1.000000e+00> : tensor<48x197x197xf32>) : tensor<48x197x197xf32>
  ml_program.global private mutable @global255(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global250(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global249(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global245(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global238(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global237(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global232(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global231(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global226(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global225(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global221(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global214(dense<1.000000e+00> : tensor<48x197x197xf32>) : tensor<48x197x197xf32>
  ml_program.global private mutable @global213(dense<1.000000e+00> : tensor<48x197x1xf32>) : tensor<48x197x1xf32>
  ml_program.global private mutable @global212(dense<1.000000e+00> : tensor<48x197x1xf32>) : tensor<48x197x1xf32>
  ml_program.global private mutable @global211(dense<1.000000e+00> : tensor<48x197x197xf32>) : tensor<48x197x197xf32>
  ml_program.global private mutable @global208(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global203(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global202(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global198(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global191(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global190(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global185(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global184(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global179(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global178(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global174(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global167(dense<1.000000e+00> : tensor<48x197x197xf32>) : tensor<48x197x197xf32>
  ml_program.global private mutable @global166(dense<1.000000e+00> : tensor<48x197x1xf32>) : tensor<48x197x1xf32>
  ml_program.global private mutable @global165(dense<1.000000e+00> : tensor<48x197x1xf32>) : tensor<48x197x1xf32>
  ml_program.global private mutable @global164(dense<1.000000e+00> : tensor<48x197x197xf32>) : tensor<48x197x197xf32>
  ml_program.global private mutable @global161(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global156(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global155(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global151(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global144(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global143(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global138(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global137(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global132(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global131(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global127(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global120(dense<1.000000e+00> : tensor<48x197x197xf32>) : tensor<48x197x197xf32>
  ml_program.global private mutable @global119(dense<1.000000e+00> : tensor<48x197x1xf32>) : tensor<48x197x1xf32>
  ml_program.global private mutable @global118(dense<1.000000e+00> : tensor<48x197x1xf32>) : tensor<48x197x1xf32>
  ml_program.global private mutable @global117(dense<1.000000e+00> : tensor<48x197x197xf32>) : tensor<48x197x197xf32>
  ml_program.global private mutable @global114(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global109(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global108(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global104(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global97(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global96(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global91(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global90(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global85(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global84(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global80(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global73(dense<1.000000e+00> : tensor<48x197x197xf32>) : tensor<48x197x197xf32>
  ml_program.global private mutable @global72(dense<1.000000e+00> : tensor<48x197x1xf32>) : tensor<48x197x1xf32>
  ml_program.global private mutable @global71(dense<1.000000e+00> : tensor<48x197x1xf32>) : tensor<48x197x1xf32>
  ml_program.global private mutable @global70(dense<1.000000e+00> : tensor<48x197x197xf32>) : tensor<48x197x197xf32>
  ml_program.global private mutable @global67(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global62(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global61(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global57(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global50(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global49(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global44(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global43(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global42(dense<1.000000e+00> : tensor<4x197x3072xf32>) : tensor<4x197x3072xf32>
  ml_program.global private mutable @global37(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global36(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global32(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global25(dense<1.000000e+00> : tensor<48x197x197xf32>) : tensor<48x197x197xf32>
  ml_program.global private mutable @global24(dense<1.000000e+00> : tensor<48x197x1xf32>) : tensor<48x197x1xf32>
  ml_program.global private mutable @global23(dense<1.000000e+00> : tensor<48x197x1xf32>) : tensor<48x197x1xf32>
  ml_program.global private mutable @global22(dense<1.000000e+00> : tensor<48x197x197xf32>) : tensor<48x197x197xf32>
  ml_program.global private mutable @global20(dense<1.000000e+00> : tensor<f32>) : tensor<f32>
  ml_program.global private mutable @global18(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  ml_program.global private mutable @global13(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global12(dense<1.000000e+00> : tensor<4x197x1xf32>) : tensor<4x197x1xf32>
  ml_program.global private mutable @global8(dense<1.000000e+00> : tensor<4x197x768xf32>) : tensor<4x197x768xf32>
  func.func @forward(%arg0: tensor<4x3x224x224xf32>) -> tensor<4x1000xf32> {
    %cst = arith.constant dense<0.000000e+00> : tensor<4x197x768xf32>
    %0 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1000xf32>}> : () -> tensor<1000xf32>
    %1 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<4x768x1000xf32>}> : () -> tensor<4x768x1000xf32>
    %2 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<4x3072x768xf32>}> : () -> tensor<4x3072x768xf32>
    %3 = "tosa.const"() <{value = dense<3.000000e+00> : tensor<4x197x3072xf32>}> : () -> tensor<4x197x3072xf32>
    %4 = "tosa.const"() <{value = dense<4.471500e-02> : tensor<4x197x3072xf32>}> : () -> tensor<4x197x3072xf32>
    %5 = "tosa.const"() <{value = dense<1.57079637> : tensor<4x197x3072xf32>}> : () -> tensor<4x197x3072xf32>
    %6 = "tosa.const"() <{value = dense<5.000000e-01> : tensor<4x197x3072xf32>}> : () -> tensor<4x197x3072xf32>
    %7 = "tosa.const"() <{value = dense<1.000000e+00> : tensor<4x197x3072xf32>}> : () -> tensor<4x197x3072xf32>
    %8 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<3072xf32>}> : () -> tensor<3072xf32>
    %9 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<4x768x3072xf32>}> : () -> tensor<4x768x3072xf32>
    %10 = "tosa.const"() <{value = dense<6.400000e+01> : tensor<f32>}> : () -> tensor<f32>
    %11 = "tosa.const"() <{value = dense<[0, 2, 1, 3]> : tensor<4xi64>}> : () -> tensor<4xi64>
    %12 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<4x768x768xf32>}> : () -> tensor<4x768x768xf32>
    %13 = "tosa.const"() <{value = dense<9.99999997E-7> : tensor<f32>}> : () -> tensor<f32>
    %14 = "tosa.const"() <{value = dense<0.00130208337> : tensor<f32>}> : () -> tensor<f32>
    %15 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<4x197x768xf32>}> : () -> tensor<4x197x768xf32>
    %16 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<4x1x768xf32>}> : () -> tensor<4x1x768xf32>
    %17 = "tosa.const"() <{value = dense<[0, 2, 1]> : tensor<3xi64>}> : () -> tensor<3xi64>
    %18 = "tosa.const"() <{value = dense<[0, 3, 1, 2]> : tensor<4xi64>}> : () -> tensor<4xi64>
    %19 = "tosa.const"() <{value = dense<[0, 2, 3, 1]> : tensor<4xi64>}> : () -> tensor<4xi64>
    %20 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<768xf32>}> : () -> tensor<768xf32>
    %21 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<768x16x16x3xf32>}> : () -> tensor<768x16x16x3xf32>
    %22 = tosa.transpose %arg0, %19 : (tensor<4x3x224x224xf32>, tensor<4xi64>) -> tensor<4x224x224x3xf32>
    %23 = tosa.conv2d %22, %21, %20 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 16, 16>} : (tensor<4x224x224x3xf32>, tensor<768x16x16x3xf32>, tensor<768xf32>) -> tensor<4x14x14x768xf32>
    %24 = tosa.transpose %23, %18 : (tensor<4x14x14x768xf32>, tensor<4xi64>) -> tensor<4x768x14x14xf32>
    %25 = tosa.reshape %24 {new_shape = array<i64: 4, 768, 196>} : (tensor<4x768x14x14xf32>) -> tensor<4x768x196xf32>
    %26 = tosa.transpose %25, %17 : (tensor<4x768x196xf32>, tensor<3xi64>) -> tensor<4x196x768xf32>
    %inserted_slice = tensor.insert_slice %16 into %cst[0, 0, 0] [4, 1, 768] [4, 1, 1] : tensor<4x1x768xf32> into tensor<4x197x768xf32>
    %inserted_slice_0 = tensor.insert_slice %26 into %inserted_slice[0, 1, 0] [4, 196, 768] [4, 1, 1] : tensor<4x196x768xf32> into tensor<4x197x768xf32>
    %27 = tosa.add %inserted_slice_0, %15 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %28 = tosa.reduce_sum %27 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %29 = tosa.mul %28, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %30 = tosa.sub %27, %29 : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global8 = %30 : tensor<4x197x768xf32>
    %31 = tosa.mul %30, %30 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %32 = tosa.reduce_sum %31 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %33 = tosa.mul %32, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %34 = tosa.add %33, %13 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global12 = %34 : tensor<4x197x1xf32>
    %35 = tosa.rsqrt %34 : (tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global13 = %35 : tensor<4x197x1xf32>
    %36 = tosa.mul %30, %35 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    %37 = tosa.mul %36, %20 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %38 = tosa.add %37, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %39 = tosa.matmul %38, %12 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %40 = tosa.add %39, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global18 = %40 : tensor<4x197x768xf32>
    %41 = tosa.reshape %40 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %42 = tosa.transpose %41, %11 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %43 = tosa.reshape %42 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %44 = tosa.transpose %43, %17 : (tensor<48x197x64xf32>, tensor<3xi64>) -> tensor<48x64x197xf32>
    %45 = tosa.matmul %43, %44 : (tensor<48x197x64xf32>, tensor<48x64x197xf32>) -> tensor<48x197x197xf32>
    %46 = tosa.rsqrt %10 : (tensor<f32>) -> tensor<f32>
    ml_program.global_store @global20 = %46 : tensor<f32>
    %47 = tosa.mul %45, %46 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<f32>) -> tensor<48x197x197xf32>
    %48 = tosa.exp %47 : (tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    ml_program.global_store @global22 = %48 : tensor<48x197x197xf32>
    %49 = tosa.reduce_sum %48 {axis = 2 : i32} : (tensor<48x197x197xf32>) -> tensor<48x197x1xf32>
    ml_program.global_store @global23 = %49 : tensor<48x197x1xf32>
    %50 = tosa.reciprocal %49 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    ml_program.global_store @global24 = %50 : tensor<48x197x1xf32>
    %51 = tosa.mul %48, %50 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x1xf32>) -> tensor<48x197x197xf32>
    ml_program.global_store @global25 = %51 : tensor<48x197x197xf32>
    %52 = tosa.matmul %51, %43 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %53 = tosa.reshape %52 {new_shape = array<i64: 4, 12, 197, 64>} : (tensor<48x197x64xf32>) -> tensor<4x12x197x64xf32>
    %54 = tosa.transpose %53, %11 : (tensor<4x12x197x64xf32>, tensor<4xi64>) -> tensor<4x197x12x64xf32>
    %55 = tosa.reshape %54 {new_shape = array<i64: 4, 197, 768>} : (tensor<4x197x12x64xf32>) -> tensor<4x197x768xf32>
    %56 = tosa.matmul %55, %12 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %57 = tosa.add %56, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %58 = tosa.add %57, %27 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %59 = tosa.reduce_sum %58 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %60 = tosa.mul %59, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %61 = tosa.sub %58, %60 : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global32 = %61 : tensor<4x197x768xf32>
    %62 = tosa.mul %61, %61 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %63 = tosa.reduce_sum %62 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %64 = tosa.mul %63, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %65 = tosa.add %64, %13 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global36 = %65 : tensor<4x197x1xf32>
    %66 = tosa.rsqrt %65 : (tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global37 = %66 : tensor<4x197x1xf32>
    %67 = tosa.mul %61, %66 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    %68 = tosa.mul %67, %20 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %69 = tosa.add %68, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %70 = tosa.matmul %69, %9 : (tensor<4x197x768xf32>, tensor<4x768x3072xf32>) -> tensor<4x197x3072xf32>
    %71 = tosa.add %70, %8 : (tensor<4x197x3072xf32>, tensor<3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global42 = %71 : tensor<4x197x3072xf32>
    %72 = tosa.mul %71, %6 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global43 = %72 : tensor<4x197x3072xf32>
    %73 = tosa.rsqrt %5 : (tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global44 = %73 : tensor<4x197x3072xf32>
    %74 = tosa.pow %71, %3 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %75 = tosa.mul %74, %4 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %76 = tosa.add %71, %75 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %77 = tosa.mul %73, %76 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %78 = tosa.tanh %77 : (tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global49 = %78 : tensor<4x197x3072xf32>
    %79 = tosa.add %78, %7 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global50 = %79 : tensor<4x197x3072xf32>
    %80 = tosa.mul %72, %79 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %81 = tosa.matmul %80, %2 : (tensor<4x197x3072xf32>, tensor<4x3072x768xf32>) -> tensor<4x197x768xf32>
    %82 = tosa.add %81, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %83 = tosa.add %58, %82 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %84 = tosa.reduce_sum %83 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %85 = tosa.mul %84, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %86 = tosa.sub %83, %85 : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global57 = %86 : tensor<4x197x768xf32>
    %87 = tosa.mul %86, %86 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %88 = tosa.reduce_sum %87 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %89 = tosa.mul %88, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %90 = tosa.add %89, %13 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global61 = %90 : tensor<4x197x1xf32>
    %91 = tosa.rsqrt %90 : (tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global62 = %91 : tensor<4x197x1xf32>
    %92 = tosa.mul %86, %91 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    %93 = tosa.mul %92, %20 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %94 = tosa.add %93, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %95 = tosa.matmul %94, %12 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %96 = tosa.add %95, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global67 = %96 : tensor<4x197x768xf32>
    %97 = tosa.reshape %96 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %98 = tosa.transpose %97, %11 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %99 = tosa.reshape %98 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %100 = tosa.transpose %99, %17 : (tensor<48x197x64xf32>, tensor<3xi64>) -> tensor<48x64x197xf32>
    %101 = tosa.matmul %99, %100 : (tensor<48x197x64xf32>, tensor<48x64x197xf32>) -> tensor<48x197x197xf32>
    %102 = tosa.mul %101, %46 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<f32>) -> tensor<48x197x197xf32>
    %103 = tosa.exp %102 : (tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    ml_program.global_store @global70 = %103 : tensor<48x197x197xf32>
    %104 = tosa.reduce_sum %103 {axis = 2 : i32} : (tensor<48x197x197xf32>) -> tensor<48x197x1xf32>
    ml_program.global_store @global71 = %104 : tensor<48x197x1xf32>
    %105 = tosa.reciprocal %104 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    ml_program.global_store @global72 = %105 : tensor<48x197x1xf32>
    %106 = tosa.mul %103, %105 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x1xf32>) -> tensor<48x197x197xf32>
    ml_program.global_store @global73 = %106 : tensor<48x197x197xf32>
    %107 = tosa.matmul %106, %99 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %108 = tosa.reshape %107 {new_shape = array<i64: 4, 12, 197, 64>} : (tensor<48x197x64xf32>) -> tensor<4x12x197x64xf32>
    %109 = tosa.transpose %108, %11 : (tensor<4x12x197x64xf32>, tensor<4xi64>) -> tensor<4x197x12x64xf32>
    %110 = tosa.reshape %109 {new_shape = array<i64: 4, 197, 768>} : (tensor<4x197x12x64xf32>) -> tensor<4x197x768xf32>
    %111 = tosa.matmul %110, %12 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %112 = tosa.add %111, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %113 = tosa.add %112, %83 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %114 = tosa.reduce_sum %113 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %115 = tosa.mul %114, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %116 = tosa.sub %113, %115 : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global80 = %116 : tensor<4x197x768xf32>
    %117 = tosa.mul %116, %116 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %118 = tosa.reduce_sum %117 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %119 = tosa.mul %118, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %120 = tosa.add %119, %13 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global84 = %120 : tensor<4x197x1xf32>
    %121 = tosa.rsqrt %120 : (tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global85 = %121 : tensor<4x197x1xf32>
    %122 = tosa.mul %116, %121 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    %123 = tosa.mul %122, %20 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %124 = tosa.add %123, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %125 = tosa.matmul %124, %9 : (tensor<4x197x768xf32>, tensor<4x768x3072xf32>) -> tensor<4x197x3072xf32>
    %126 = tosa.add %125, %8 : (tensor<4x197x3072xf32>, tensor<3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global90 = %126 : tensor<4x197x3072xf32>
    %127 = tosa.mul %126, %6 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global91 = %127 : tensor<4x197x3072xf32>
    %128 = tosa.pow %126, %3 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %129 = tosa.mul %128, %4 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %130 = tosa.add %126, %129 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %131 = tosa.mul %73, %130 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %132 = tosa.tanh %131 : (tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global96 = %132 : tensor<4x197x3072xf32>
    %133 = tosa.add %132, %7 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global97 = %133 : tensor<4x197x3072xf32>
    %134 = tosa.mul %127, %133 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %135 = tosa.matmul %134, %2 : (tensor<4x197x3072xf32>, tensor<4x3072x768xf32>) -> tensor<4x197x768xf32>
    %136 = tosa.add %135, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %137 = tosa.add %113, %136 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %138 = tosa.reduce_sum %137 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %139 = tosa.mul %138, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %140 = tosa.sub %137, %139 : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global104 = %140 : tensor<4x197x768xf32>
    %141 = tosa.mul %140, %140 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %142 = tosa.reduce_sum %141 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %143 = tosa.mul %142, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %144 = tosa.add %143, %13 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global108 = %144 : tensor<4x197x1xf32>
    %145 = tosa.rsqrt %144 : (tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global109 = %145 : tensor<4x197x1xf32>
    %146 = tosa.mul %140, %145 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    %147 = tosa.mul %146, %20 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %148 = tosa.add %147, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %149 = tosa.matmul %148, %12 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %150 = tosa.add %149, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global114 = %150 : tensor<4x197x768xf32>
    %151 = tosa.reshape %150 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %152 = tosa.transpose %151, %11 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %153 = tosa.reshape %152 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %154 = tosa.transpose %153, %17 : (tensor<48x197x64xf32>, tensor<3xi64>) -> tensor<48x64x197xf32>
    %155 = tosa.matmul %153, %154 : (tensor<48x197x64xf32>, tensor<48x64x197xf32>) -> tensor<48x197x197xf32>
    %156 = tosa.mul %155, %46 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<f32>) -> tensor<48x197x197xf32>
    %157 = tosa.exp %156 : (tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    ml_program.global_store @global117 = %157 : tensor<48x197x197xf32>
    %158 = tosa.reduce_sum %157 {axis = 2 : i32} : (tensor<48x197x197xf32>) -> tensor<48x197x1xf32>
    ml_program.global_store @global118 = %158 : tensor<48x197x1xf32>
    %159 = tosa.reciprocal %158 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    ml_program.global_store @global119 = %159 : tensor<48x197x1xf32>
    %160 = tosa.mul %157, %159 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x1xf32>) -> tensor<48x197x197xf32>
    ml_program.global_store @global120 = %160 : tensor<48x197x197xf32>
    %161 = tosa.matmul %160, %153 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %162 = tosa.reshape %161 {new_shape = array<i64: 4, 12, 197, 64>} : (tensor<48x197x64xf32>) -> tensor<4x12x197x64xf32>
    %163 = tosa.transpose %162, %11 : (tensor<4x12x197x64xf32>, tensor<4xi64>) -> tensor<4x197x12x64xf32>
    %164 = tosa.reshape %163 {new_shape = array<i64: 4, 197, 768>} : (tensor<4x197x12x64xf32>) -> tensor<4x197x768xf32>
    %165 = tosa.matmul %164, %12 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %166 = tosa.add %165, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %167 = tosa.add %166, %137 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %168 = tosa.reduce_sum %167 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %169 = tosa.mul %168, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %170 = tosa.sub %167, %169 : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global127 = %170 : tensor<4x197x768xf32>
    %171 = tosa.mul %170, %170 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %172 = tosa.reduce_sum %171 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %173 = tosa.mul %172, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %174 = tosa.add %173, %13 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global131 = %174 : tensor<4x197x1xf32>
    %175 = tosa.rsqrt %174 : (tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global132 = %175 : tensor<4x197x1xf32>
    %176 = tosa.mul %170, %175 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    %177 = tosa.mul %176, %20 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %178 = tosa.add %177, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %179 = tosa.matmul %178, %9 : (tensor<4x197x768xf32>, tensor<4x768x3072xf32>) -> tensor<4x197x3072xf32>
    %180 = tosa.add %179, %8 : (tensor<4x197x3072xf32>, tensor<3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global137 = %180 : tensor<4x197x3072xf32>
    %181 = tosa.mul %180, %6 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global138 = %181 : tensor<4x197x3072xf32>
    %182 = tosa.pow %180, %3 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %183 = tosa.mul %182, %4 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %184 = tosa.add %180, %183 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %185 = tosa.mul %73, %184 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %186 = tosa.tanh %185 : (tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global143 = %186 : tensor<4x197x3072xf32>
    %187 = tosa.add %186, %7 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global144 = %187 : tensor<4x197x3072xf32>
    %188 = tosa.mul %181, %187 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %189 = tosa.matmul %188, %2 : (tensor<4x197x3072xf32>, tensor<4x3072x768xf32>) -> tensor<4x197x768xf32>
    %190 = tosa.add %189, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %191 = tosa.add %167, %190 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %192 = tosa.reduce_sum %191 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %193 = tosa.mul %192, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %194 = tosa.sub %191, %193 : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global151 = %194 : tensor<4x197x768xf32>
    %195 = tosa.mul %194, %194 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %196 = tosa.reduce_sum %195 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %197 = tosa.mul %196, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %198 = tosa.add %197, %13 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global155 = %198 : tensor<4x197x1xf32>
    %199 = tosa.rsqrt %198 : (tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global156 = %199 : tensor<4x197x1xf32>
    %200 = tosa.mul %194, %199 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    %201 = tosa.mul %200, %20 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %202 = tosa.add %201, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %203 = tosa.matmul %202, %12 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %204 = tosa.add %203, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global161 = %204 : tensor<4x197x768xf32>
    %205 = tosa.reshape %204 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %206 = tosa.transpose %205, %11 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %207 = tosa.reshape %206 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %208 = tosa.transpose %207, %17 : (tensor<48x197x64xf32>, tensor<3xi64>) -> tensor<48x64x197xf32>
    %209 = tosa.matmul %207, %208 : (tensor<48x197x64xf32>, tensor<48x64x197xf32>) -> tensor<48x197x197xf32>
    %210 = tosa.mul %209, %46 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<f32>) -> tensor<48x197x197xf32>
    %211 = tosa.exp %210 : (tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    ml_program.global_store @global164 = %211 : tensor<48x197x197xf32>
    %212 = tosa.reduce_sum %211 {axis = 2 : i32} : (tensor<48x197x197xf32>) -> tensor<48x197x1xf32>
    ml_program.global_store @global165 = %212 : tensor<48x197x1xf32>
    %213 = tosa.reciprocal %212 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    ml_program.global_store @global166 = %213 : tensor<48x197x1xf32>
    %214 = tosa.mul %211, %213 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x1xf32>) -> tensor<48x197x197xf32>
    ml_program.global_store @global167 = %214 : tensor<48x197x197xf32>
    %215 = tosa.matmul %214, %207 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %216 = tosa.reshape %215 {new_shape = array<i64: 4, 12, 197, 64>} : (tensor<48x197x64xf32>) -> tensor<4x12x197x64xf32>
    %217 = tosa.transpose %216, %11 : (tensor<4x12x197x64xf32>, tensor<4xi64>) -> tensor<4x197x12x64xf32>
    %218 = tosa.reshape %217 {new_shape = array<i64: 4, 197, 768>} : (tensor<4x197x12x64xf32>) -> tensor<4x197x768xf32>
    %219 = tosa.matmul %218, %12 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %220 = tosa.add %219, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %221 = tosa.add %220, %191 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %222 = tosa.reduce_sum %221 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %223 = tosa.mul %222, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %224 = tosa.sub %221, %223 : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global174 = %224 : tensor<4x197x768xf32>
    %225 = tosa.mul %224, %224 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %226 = tosa.reduce_sum %225 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %227 = tosa.mul %226, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %228 = tosa.add %227, %13 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global178 = %228 : tensor<4x197x1xf32>
    %229 = tosa.rsqrt %228 : (tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global179 = %229 : tensor<4x197x1xf32>
    %230 = tosa.mul %224, %229 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    %231 = tosa.mul %230, %20 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %232 = tosa.add %231, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %233 = tosa.matmul %232, %9 : (tensor<4x197x768xf32>, tensor<4x768x3072xf32>) -> tensor<4x197x3072xf32>
    %234 = tosa.add %233, %8 : (tensor<4x197x3072xf32>, tensor<3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global184 = %234 : tensor<4x197x3072xf32>
    %235 = tosa.mul %234, %6 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global185 = %235 : tensor<4x197x3072xf32>
    %236 = tosa.pow %234, %3 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %237 = tosa.mul %236, %4 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %238 = tosa.add %234, %237 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %239 = tosa.mul %73, %238 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %240 = tosa.tanh %239 : (tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global190 = %240 : tensor<4x197x3072xf32>
    %241 = tosa.add %240, %7 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global191 = %241 : tensor<4x197x3072xf32>
    %242 = tosa.mul %235, %241 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %243 = tosa.matmul %242, %2 : (tensor<4x197x3072xf32>, tensor<4x3072x768xf32>) -> tensor<4x197x768xf32>
    %244 = tosa.add %243, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %245 = tosa.add %221, %244 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %246 = tosa.reduce_sum %245 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %247 = tosa.mul %246, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %248 = tosa.sub %245, %247 : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global198 = %248 : tensor<4x197x768xf32>
    %249 = tosa.mul %248, %248 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %250 = tosa.reduce_sum %249 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %251 = tosa.mul %250, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %252 = tosa.add %251, %13 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global202 = %252 : tensor<4x197x1xf32>
    %253 = tosa.rsqrt %252 : (tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global203 = %253 : tensor<4x197x1xf32>
    %254 = tosa.mul %248, %253 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    %255 = tosa.mul %254, %20 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %256 = tosa.add %255, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %257 = tosa.matmul %256, %12 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %258 = tosa.add %257, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global208 = %258 : tensor<4x197x768xf32>
    %259 = tosa.reshape %258 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %260 = tosa.transpose %259, %11 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %261 = tosa.reshape %260 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %262 = tosa.transpose %261, %17 : (tensor<48x197x64xf32>, tensor<3xi64>) -> tensor<48x64x197xf32>
    %263 = tosa.matmul %261, %262 : (tensor<48x197x64xf32>, tensor<48x64x197xf32>) -> tensor<48x197x197xf32>
    %264 = tosa.mul %263, %46 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<f32>) -> tensor<48x197x197xf32>
    %265 = tosa.exp %264 : (tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    ml_program.global_store @global211 = %265 : tensor<48x197x197xf32>
    %266 = tosa.reduce_sum %265 {axis = 2 : i32} : (tensor<48x197x197xf32>) -> tensor<48x197x1xf32>
    ml_program.global_store @global212 = %266 : tensor<48x197x1xf32>
    %267 = tosa.reciprocal %266 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    ml_program.global_store @global213 = %267 : tensor<48x197x1xf32>
    %268 = tosa.mul %265, %267 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x1xf32>) -> tensor<48x197x197xf32>
    ml_program.global_store @global214 = %268 : tensor<48x197x197xf32>
    %269 = tosa.matmul %268, %261 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %270 = tosa.reshape %269 {new_shape = array<i64: 4, 12, 197, 64>} : (tensor<48x197x64xf32>) -> tensor<4x12x197x64xf32>
    %271 = tosa.transpose %270, %11 : (tensor<4x12x197x64xf32>, tensor<4xi64>) -> tensor<4x197x12x64xf32>
    %272 = tosa.reshape %271 {new_shape = array<i64: 4, 197, 768>} : (tensor<4x197x12x64xf32>) -> tensor<4x197x768xf32>
    %273 = tosa.matmul %272, %12 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %274 = tosa.add %273, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %275 = tosa.add %274, %245 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %276 = tosa.reduce_sum %275 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %277 = tosa.mul %276, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %278 = tosa.sub %275, %277 : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global221 = %278 : tensor<4x197x768xf32>
    %279 = tosa.mul %278, %278 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %280 = tosa.reduce_sum %279 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %281 = tosa.mul %280, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %282 = tosa.add %281, %13 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global225 = %282 : tensor<4x197x1xf32>
    %283 = tosa.rsqrt %282 : (tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global226 = %283 : tensor<4x197x1xf32>
    %284 = tosa.mul %278, %283 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    %285 = tosa.mul %284, %20 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %286 = tosa.add %285, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %287 = tosa.matmul %286, %9 : (tensor<4x197x768xf32>, tensor<4x768x3072xf32>) -> tensor<4x197x3072xf32>
    %288 = tosa.add %287, %8 : (tensor<4x197x3072xf32>, tensor<3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global231 = %288 : tensor<4x197x3072xf32>
    %289 = tosa.mul %288, %6 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global232 = %289 : tensor<4x197x3072xf32>
    %290 = tosa.pow %288, %3 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %291 = tosa.mul %290, %4 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %292 = tosa.add %288, %291 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %293 = tosa.mul %73, %292 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %294 = tosa.tanh %293 : (tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global237 = %294 : tensor<4x197x3072xf32>
    %295 = tosa.add %294, %7 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global238 = %295 : tensor<4x197x3072xf32>
    %296 = tosa.mul %289, %295 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %297 = tosa.matmul %296, %2 : (tensor<4x197x3072xf32>, tensor<4x3072x768xf32>) -> tensor<4x197x768xf32>
    %298 = tosa.add %297, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %299 = tosa.add %275, %298 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %300 = tosa.reduce_sum %299 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %301 = tosa.mul %300, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %302 = tosa.sub %299, %301 : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global245 = %302 : tensor<4x197x768xf32>
    %303 = tosa.mul %302, %302 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %304 = tosa.reduce_sum %303 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %305 = tosa.mul %304, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %306 = tosa.add %305, %13 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global249 = %306 : tensor<4x197x1xf32>
    %307 = tosa.rsqrt %306 : (tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global250 = %307 : tensor<4x197x1xf32>
    %308 = tosa.mul %302, %307 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    %309 = tosa.mul %308, %20 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %310 = tosa.add %309, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %311 = tosa.matmul %310, %12 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %312 = tosa.add %311, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global255 = %312 : tensor<4x197x768xf32>
    %313 = tosa.reshape %312 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %314 = tosa.transpose %313, %11 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %315 = tosa.reshape %314 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %316 = tosa.transpose %315, %17 : (tensor<48x197x64xf32>, tensor<3xi64>) -> tensor<48x64x197xf32>
    %317 = tosa.matmul %315, %316 : (tensor<48x197x64xf32>, tensor<48x64x197xf32>) -> tensor<48x197x197xf32>
    %318 = tosa.mul %317, %46 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<f32>) -> tensor<48x197x197xf32>
    %319 = tosa.exp %318 : (tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    ml_program.global_store @global258 = %319 : tensor<48x197x197xf32>
    %320 = tosa.reduce_sum %319 {axis = 2 : i32} : (tensor<48x197x197xf32>) -> tensor<48x197x1xf32>
    ml_program.global_store @global259 = %320 : tensor<48x197x1xf32>
    %321 = tosa.reciprocal %320 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    ml_program.global_store @global260 = %321 : tensor<48x197x1xf32>
    %322 = tosa.mul %319, %321 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x1xf32>) -> tensor<48x197x197xf32>
    ml_program.global_store @global261 = %322 : tensor<48x197x197xf32>
    %323 = tosa.matmul %322, %315 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %324 = tosa.reshape %323 {new_shape = array<i64: 4, 12, 197, 64>} : (tensor<48x197x64xf32>) -> tensor<4x12x197x64xf32>
    %325 = tosa.transpose %324, %11 : (tensor<4x12x197x64xf32>, tensor<4xi64>) -> tensor<4x197x12x64xf32>
    %326 = tosa.reshape %325 {new_shape = array<i64: 4, 197, 768>} : (tensor<4x197x12x64xf32>) -> tensor<4x197x768xf32>
    %327 = tosa.matmul %326, %12 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %328 = tosa.add %327, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %329 = tosa.add %328, %299 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %330 = tosa.reduce_sum %329 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %331 = tosa.mul %330, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %332 = tosa.sub %329, %331 : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global268 = %332 : tensor<4x197x768xf32>
    %333 = tosa.mul %332, %332 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %334 = tosa.reduce_sum %333 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %335 = tosa.mul %334, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %336 = tosa.add %335, %13 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global272 = %336 : tensor<4x197x1xf32>
    %337 = tosa.rsqrt %336 : (tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global273 = %337 : tensor<4x197x1xf32>
    %338 = tosa.mul %332, %337 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    %339 = tosa.mul %338, %20 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %340 = tosa.add %339, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %341 = tosa.matmul %340, %9 : (tensor<4x197x768xf32>, tensor<4x768x3072xf32>) -> tensor<4x197x3072xf32>
    %342 = tosa.add %341, %8 : (tensor<4x197x3072xf32>, tensor<3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global278 = %342 : tensor<4x197x3072xf32>
    %343 = tosa.mul %342, %6 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global279 = %343 : tensor<4x197x3072xf32>
    %344 = tosa.pow %342, %3 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %345 = tosa.mul %344, %4 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %346 = tosa.add %342, %345 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %347 = tosa.mul %73, %346 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %348 = tosa.tanh %347 : (tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global284 = %348 : tensor<4x197x3072xf32>
    %349 = tosa.add %348, %7 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global285 = %349 : tensor<4x197x3072xf32>
    %350 = tosa.mul %343, %349 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %351 = tosa.matmul %350, %2 : (tensor<4x197x3072xf32>, tensor<4x3072x768xf32>) -> tensor<4x197x768xf32>
    %352 = tosa.add %351, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %353 = tosa.add %329, %352 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %354 = tosa.reduce_sum %353 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %355 = tosa.mul %354, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %356 = tosa.sub %353, %355 : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global292 = %356 : tensor<4x197x768xf32>
    %357 = tosa.mul %356, %356 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %358 = tosa.reduce_sum %357 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %359 = tosa.mul %358, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %360 = tosa.add %359, %13 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global296 = %360 : tensor<4x197x1xf32>
    %361 = tosa.rsqrt %360 : (tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global297 = %361 : tensor<4x197x1xf32>
    %362 = tosa.mul %356, %361 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    %363 = tosa.mul %362, %20 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %364 = tosa.add %363, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %365 = tosa.matmul %364, %12 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %366 = tosa.add %365, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global302 = %366 : tensor<4x197x768xf32>
    %367 = tosa.reshape %366 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %368 = tosa.transpose %367, %11 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %369 = tosa.reshape %368 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %370 = tosa.transpose %369, %17 : (tensor<48x197x64xf32>, tensor<3xi64>) -> tensor<48x64x197xf32>
    %371 = tosa.matmul %369, %370 : (tensor<48x197x64xf32>, tensor<48x64x197xf32>) -> tensor<48x197x197xf32>
    %372 = tosa.mul %371, %46 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<f32>) -> tensor<48x197x197xf32>
    %373 = tosa.exp %372 : (tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    ml_program.global_store @global305 = %373 : tensor<48x197x197xf32>
    %374 = tosa.reduce_sum %373 {axis = 2 : i32} : (tensor<48x197x197xf32>) -> tensor<48x197x1xf32>
    ml_program.global_store @global306 = %374 : tensor<48x197x1xf32>
    %375 = tosa.reciprocal %374 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    ml_program.global_store @global307 = %375 : tensor<48x197x1xf32>
    %376 = tosa.mul %373, %375 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x1xf32>) -> tensor<48x197x197xf32>
    ml_program.global_store @global308 = %376 : tensor<48x197x197xf32>
    %377 = tosa.matmul %376, %369 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %378 = tosa.reshape %377 {new_shape = array<i64: 4, 12, 197, 64>} : (tensor<48x197x64xf32>) -> tensor<4x12x197x64xf32>
    %379 = tosa.transpose %378, %11 : (tensor<4x12x197x64xf32>, tensor<4xi64>) -> tensor<4x197x12x64xf32>
    %380 = tosa.reshape %379 {new_shape = array<i64: 4, 197, 768>} : (tensor<4x197x12x64xf32>) -> tensor<4x197x768xf32>
    %381 = tosa.matmul %380, %12 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %382 = tosa.add %381, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %383 = tosa.add %382, %353 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %384 = tosa.reduce_sum %383 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %385 = tosa.mul %384, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %386 = tosa.sub %383, %385 : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global315 = %386 : tensor<4x197x768xf32>
    %387 = tosa.mul %386, %386 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %388 = tosa.reduce_sum %387 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %389 = tosa.mul %388, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %390 = tosa.add %389, %13 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global319 = %390 : tensor<4x197x1xf32>
    %391 = tosa.rsqrt %390 : (tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global320 = %391 : tensor<4x197x1xf32>
    %392 = tosa.mul %386, %391 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    %393 = tosa.mul %392, %20 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %394 = tosa.add %393, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %395 = tosa.matmul %394, %9 : (tensor<4x197x768xf32>, tensor<4x768x3072xf32>) -> tensor<4x197x3072xf32>
    %396 = tosa.add %395, %8 : (tensor<4x197x3072xf32>, tensor<3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global325 = %396 : tensor<4x197x3072xf32>
    %397 = tosa.mul %396, %6 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global326 = %397 : tensor<4x197x3072xf32>
    %398 = tosa.pow %396, %3 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %399 = tosa.mul %398, %4 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %400 = tosa.add %396, %399 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %401 = tosa.mul %73, %400 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %402 = tosa.tanh %401 : (tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global331 = %402 : tensor<4x197x3072xf32>
    %403 = tosa.add %402, %7 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global332 = %403 : tensor<4x197x3072xf32>
    %404 = tosa.mul %397, %403 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %405 = tosa.matmul %404, %2 : (tensor<4x197x3072xf32>, tensor<4x3072x768xf32>) -> tensor<4x197x768xf32>
    %406 = tosa.add %405, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %407 = tosa.add %383, %406 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %408 = tosa.reduce_sum %407 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %409 = tosa.mul %408, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %410 = tosa.sub %407, %409 : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global339 = %410 : tensor<4x197x768xf32>
    %411 = tosa.mul %410, %410 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %412 = tosa.reduce_sum %411 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %413 = tosa.mul %412, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %414 = tosa.add %413, %13 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global343 = %414 : tensor<4x197x1xf32>
    %415 = tosa.rsqrt %414 : (tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global344 = %415 : tensor<4x197x1xf32>
    %416 = tosa.mul %410, %415 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    %417 = tosa.mul %416, %20 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %418 = tosa.add %417, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %419 = tosa.matmul %418, %12 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %420 = tosa.add %419, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global349 = %420 : tensor<4x197x768xf32>
    %421 = tosa.reshape %420 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %422 = tosa.transpose %421, %11 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %423 = tosa.reshape %422 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %424 = tosa.transpose %423, %17 : (tensor<48x197x64xf32>, tensor<3xi64>) -> tensor<48x64x197xf32>
    %425 = tosa.matmul %423, %424 : (tensor<48x197x64xf32>, tensor<48x64x197xf32>) -> tensor<48x197x197xf32>
    %426 = tosa.mul %425, %46 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<f32>) -> tensor<48x197x197xf32>
    %427 = tosa.exp %426 : (tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    ml_program.global_store @global352 = %427 : tensor<48x197x197xf32>
    %428 = tosa.reduce_sum %427 {axis = 2 : i32} : (tensor<48x197x197xf32>) -> tensor<48x197x1xf32>
    ml_program.global_store @global353 = %428 : tensor<48x197x1xf32>
    %429 = tosa.reciprocal %428 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    ml_program.global_store @global354 = %429 : tensor<48x197x1xf32>
    %430 = tosa.mul %427, %429 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x1xf32>) -> tensor<48x197x197xf32>
    ml_program.global_store @global355 = %430 : tensor<48x197x197xf32>
    %431 = tosa.matmul %430, %423 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %432 = tosa.reshape %431 {new_shape = array<i64: 4, 12, 197, 64>} : (tensor<48x197x64xf32>) -> tensor<4x12x197x64xf32>
    %433 = tosa.transpose %432, %11 : (tensor<4x12x197x64xf32>, tensor<4xi64>) -> tensor<4x197x12x64xf32>
    %434 = tosa.reshape %433 {new_shape = array<i64: 4, 197, 768>} : (tensor<4x197x12x64xf32>) -> tensor<4x197x768xf32>
    %435 = tosa.matmul %434, %12 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %436 = tosa.add %435, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %437 = tosa.add %436, %407 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %438 = tosa.reduce_sum %437 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %439 = tosa.mul %438, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %440 = tosa.sub %437, %439 : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global362 = %440 : tensor<4x197x768xf32>
    %441 = tosa.mul %440, %440 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %442 = tosa.reduce_sum %441 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %443 = tosa.mul %442, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %444 = tosa.add %443, %13 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global366 = %444 : tensor<4x197x1xf32>
    %445 = tosa.rsqrt %444 : (tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global367 = %445 : tensor<4x197x1xf32>
    %446 = tosa.mul %440, %445 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    %447 = tosa.mul %446, %20 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %448 = tosa.add %447, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %449 = tosa.matmul %448, %9 : (tensor<4x197x768xf32>, tensor<4x768x3072xf32>) -> tensor<4x197x3072xf32>
    %450 = tosa.add %449, %8 : (tensor<4x197x3072xf32>, tensor<3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global372 = %450 : tensor<4x197x3072xf32>
    %451 = tosa.mul %450, %6 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global373 = %451 : tensor<4x197x3072xf32>
    %452 = tosa.pow %450, %3 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %453 = tosa.mul %452, %4 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %454 = tosa.add %450, %453 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %455 = tosa.mul %73, %454 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %456 = tosa.tanh %455 : (tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global378 = %456 : tensor<4x197x3072xf32>
    %457 = tosa.add %456, %7 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global379 = %457 : tensor<4x197x3072xf32>
    %458 = tosa.mul %451, %457 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %459 = tosa.matmul %458, %2 : (tensor<4x197x3072xf32>, tensor<4x3072x768xf32>) -> tensor<4x197x768xf32>
    %460 = tosa.add %459, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %461 = tosa.add %437, %460 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %462 = tosa.reduce_sum %461 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %463 = tosa.mul %462, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %464 = tosa.sub %461, %463 : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global386 = %464 : tensor<4x197x768xf32>
    %465 = tosa.mul %464, %464 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %466 = tosa.reduce_sum %465 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %467 = tosa.mul %466, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %468 = tosa.add %467, %13 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global390 = %468 : tensor<4x197x1xf32>
    %469 = tosa.rsqrt %468 : (tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global391 = %469 : tensor<4x197x1xf32>
    %470 = tosa.mul %464, %469 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    %471 = tosa.mul %470, %20 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %472 = tosa.add %471, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %473 = tosa.matmul %472, %12 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %474 = tosa.add %473, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global396 = %474 : tensor<4x197x768xf32>
    %475 = tosa.reshape %474 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %476 = tosa.transpose %475, %11 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %477 = tosa.reshape %476 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %478 = tosa.transpose %477, %17 : (tensor<48x197x64xf32>, tensor<3xi64>) -> tensor<48x64x197xf32>
    %479 = tosa.matmul %477, %478 : (tensor<48x197x64xf32>, tensor<48x64x197xf32>) -> tensor<48x197x197xf32>
    %480 = tosa.mul %479, %46 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<f32>) -> tensor<48x197x197xf32>
    %481 = tosa.exp %480 : (tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    ml_program.global_store @global399 = %481 : tensor<48x197x197xf32>
    %482 = tosa.reduce_sum %481 {axis = 2 : i32} : (tensor<48x197x197xf32>) -> tensor<48x197x1xf32>
    ml_program.global_store @global400 = %482 : tensor<48x197x1xf32>
    %483 = tosa.reciprocal %482 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    ml_program.global_store @global401 = %483 : tensor<48x197x1xf32>
    %484 = tosa.mul %481, %483 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x1xf32>) -> tensor<48x197x197xf32>
    ml_program.global_store @global402 = %484 : tensor<48x197x197xf32>
    %485 = tosa.matmul %484, %477 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %486 = tosa.reshape %485 {new_shape = array<i64: 4, 12, 197, 64>} : (tensor<48x197x64xf32>) -> tensor<4x12x197x64xf32>
    %487 = tosa.transpose %486, %11 : (tensor<4x12x197x64xf32>, tensor<4xi64>) -> tensor<4x197x12x64xf32>
    %488 = tosa.reshape %487 {new_shape = array<i64: 4, 197, 768>} : (tensor<4x197x12x64xf32>) -> tensor<4x197x768xf32>
    %489 = tosa.matmul %488, %12 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %490 = tosa.add %489, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %491 = tosa.add %490, %461 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %492 = tosa.reduce_sum %491 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %493 = tosa.mul %492, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %494 = tosa.sub %491, %493 : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global409 = %494 : tensor<4x197x768xf32>
    %495 = tosa.mul %494, %494 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %496 = tosa.reduce_sum %495 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %497 = tosa.mul %496, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %498 = tosa.add %497, %13 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global413 = %498 : tensor<4x197x1xf32>
    %499 = tosa.rsqrt %498 : (tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global414 = %499 : tensor<4x197x1xf32>
    %500 = tosa.mul %494, %499 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    %501 = tosa.mul %500, %20 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %502 = tosa.add %501, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %503 = tosa.matmul %502, %9 : (tensor<4x197x768xf32>, tensor<4x768x3072xf32>) -> tensor<4x197x3072xf32>
    %504 = tosa.add %503, %8 : (tensor<4x197x3072xf32>, tensor<3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global419 = %504 : tensor<4x197x3072xf32>
    %505 = tosa.mul %504, %6 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global420 = %505 : tensor<4x197x3072xf32>
    %506 = tosa.pow %504, %3 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %507 = tosa.mul %506, %4 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %508 = tosa.add %504, %507 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %509 = tosa.mul %73, %508 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %510 = tosa.tanh %509 : (tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global425 = %510 : tensor<4x197x3072xf32>
    %511 = tosa.add %510, %7 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global426 = %511 : tensor<4x197x3072xf32>
    %512 = tosa.mul %505, %511 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %513 = tosa.matmul %512, %2 : (tensor<4x197x3072xf32>, tensor<4x3072x768xf32>) -> tensor<4x197x768xf32>
    %514 = tosa.add %513, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %515 = tosa.add %491, %514 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %516 = tosa.reduce_sum %515 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %517 = tosa.mul %516, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %518 = tosa.sub %515, %517 : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global433 = %518 : tensor<4x197x768xf32>
    %519 = tosa.mul %518, %518 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %520 = tosa.reduce_sum %519 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %521 = tosa.mul %520, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %522 = tosa.add %521, %13 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global437 = %522 : tensor<4x197x1xf32>
    %523 = tosa.rsqrt %522 : (tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global438 = %523 : tensor<4x197x1xf32>
    %524 = tosa.mul %518, %523 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    %525 = tosa.mul %524, %20 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %526 = tosa.add %525, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %527 = tosa.matmul %526, %12 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %528 = tosa.add %527, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global443 = %528 : tensor<4x197x768xf32>
    %529 = tosa.reshape %528 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %530 = tosa.transpose %529, %11 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %531 = tosa.reshape %530 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %532 = tosa.transpose %531, %17 : (tensor<48x197x64xf32>, tensor<3xi64>) -> tensor<48x64x197xf32>
    %533 = tosa.matmul %531, %532 : (tensor<48x197x64xf32>, tensor<48x64x197xf32>) -> tensor<48x197x197xf32>
    %534 = tosa.mul %533, %46 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<f32>) -> tensor<48x197x197xf32>
    %535 = tosa.exp %534 : (tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    ml_program.global_store @global446 = %535 : tensor<48x197x197xf32>
    %536 = tosa.reduce_sum %535 {axis = 2 : i32} : (tensor<48x197x197xf32>) -> tensor<48x197x1xf32>
    ml_program.global_store @global447 = %536 : tensor<48x197x1xf32>
    %537 = tosa.reciprocal %536 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    ml_program.global_store @global448 = %537 : tensor<48x197x1xf32>
    %538 = tosa.mul %535, %537 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x1xf32>) -> tensor<48x197x197xf32>
    ml_program.global_store @global449 = %538 : tensor<48x197x197xf32>
    %539 = tosa.matmul %538, %531 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %540 = tosa.reshape %539 {new_shape = array<i64: 4, 12, 197, 64>} : (tensor<48x197x64xf32>) -> tensor<4x12x197x64xf32>
    %541 = tosa.transpose %540, %11 : (tensor<4x12x197x64xf32>, tensor<4xi64>) -> tensor<4x197x12x64xf32>
    %542 = tosa.reshape %541 {new_shape = array<i64: 4, 197, 768>} : (tensor<4x197x12x64xf32>) -> tensor<4x197x768xf32>
    %543 = tosa.matmul %542, %12 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %544 = tosa.add %543, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %545 = tosa.add %544, %515 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %546 = tosa.reduce_sum %545 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %547 = tosa.mul %546, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %548 = tosa.sub %545, %547 : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global456 = %548 : tensor<4x197x768xf32>
    %549 = tosa.mul %548, %548 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %550 = tosa.reduce_sum %549 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %551 = tosa.mul %550, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %552 = tosa.add %551, %13 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global460 = %552 : tensor<4x197x1xf32>
    %553 = tosa.rsqrt %552 : (tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global461 = %553 : tensor<4x197x1xf32>
    %554 = tosa.mul %548, %553 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    %555 = tosa.mul %554, %20 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %556 = tosa.add %555, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %557 = tosa.matmul %556, %9 : (tensor<4x197x768xf32>, tensor<4x768x3072xf32>) -> tensor<4x197x3072xf32>
    %558 = tosa.add %557, %8 : (tensor<4x197x3072xf32>, tensor<3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global466 = %558 : tensor<4x197x3072xf32>
    %559 = tosa.mul %558, %6 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global467 = %559 : tensor<4x197x3072xf32>
    %560 = tosa.pow %558, %3 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %561 = tosa.mul %560, %4 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %562 = tosa.add %558, %561 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %563 = tosa.mul %73, %562 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %564 = tosa.tanh %563 : (tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global472 = %564 : tensor<4x197x3072xf32>
    %565 = tosa.add %564, %7 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global473 = %565 : tensor<4x197x3072xf32>
    %566 = tosa.mul %559, %565 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %567 = tosa.matmul %566, %2 : (tensor<4x197x3072xf32>, tensor<4x3072x768xf32>) -> tensor<4x197x768xf32>
    %568 = tosa.add %567, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %569 = tosa.add %545, %568 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %570 = tosa.reduce_sum %569 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %571 = tosa.mul %570, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %572 = tosa.sub %569, %571 : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global480 = %572 : tensor<4x197x768xf32>
    %573 = tosa.mul %572, %572 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %574 = tosa.reduce_sum %573 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %575 = tosa.mul %574, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %576 = tosa.add %575, %13 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global484 = %576 : tensor<4x197x1xf32>
    %577 = tosa.rsqrt %576 : (tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global485 = %577 : tensor<4x197x1xf32>
    %578 = tosa.mul %572, %577 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    %579 = tosa.mul %578, %20 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %580 = tosa.add %579, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %581 = tosa.matmul %580, %12 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %582 = tosa.add %581, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global490 = %582 : tensor<4x197x768xf32>
    %583 = tosa.reshape %582 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %584 = tosa.transpose %583, %11 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %585 = tosa.reshape %584 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %586 = tosa.transpose %585, %17 : (tensor<48x197x64xf32>, tensor<3xi64>) -> tensor<48x64x197xf32>
    %587 = tosa.matmul %585, %586 : (tensor<48x197x64xf32>, tensor<48x64x197xf32>) -> tensor<48x197x197xf32>
    %588 = tosa.mul %587, %46 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<f32>) -> tensor<48x197x197xf32>
    %589 = tosa.exp %588 : (tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    ml_program.global_store @global493 = %589 : tensor<48x197x197xf32>
    %590 = tosa.reduce_sum %589 {axis = 2 : i32} : (tensor<48x197x197xf32>) -> tensor<48x197x1xf32>
    ml_program.global_store @global494 = %590 : tensor<48x197x1xf32>
    %591 = tosa.reciprocal %590 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    ml_program.global_store @global495 = %591 : tensor<48x197x1xf32>
    %592 = tosa.mul %589, %591 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x1xf32>) -> tensor<48x197x197xf32>
    ml_program.global_store @global496 = %592 : tensor<48x197x197xf32>
    %593 = tosa.matmul %592, %585 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %594 = tosa.reshape %593 {new_shape = array<i64: 4, 12, 197, 64>} : (tensor<48x197x64xf32>) -> tensor<4x12x197x64xf32>
    %595 = tosa.transpose %594, %11 : (tensor<4x12x197x64xf32>, tensor<4xi64>) -> tensor<4x197x12x64xf32>
    %596 = tosa.reshape %595 {new_shape = array<i64: 4, 197, 768>} : (tensor<4x197x12x64xf32>) -> tensor<4x197x768xf32>
    %597 = tosa.matmul %596, %12 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %598 = tosa.add %597, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %599 = tosa.add %598, %569 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %600 = tosa.reduce_sum %599 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %601 = tosa.mul %600, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %602 = tosa.sub %599, %601 : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global503 = %602 : tensor<4x197x768xf32>
    %603 = tosa.mul %602, %602 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %604 = tosa.reduce_sum %603 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %605 = tosa.mul %604, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %606 = tosa.add %605, %13 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global507 = %606 : tensor<4x197x1xf32>
    %607 = tosa.rsqrt %606 : (tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global508 = %607 : tensor<4x197x1xf32>
    %608 = tosa.mul %602, %607 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    %609 = tosa.mul %608, %20 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %610 = tosa.add %609, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %611 = tosa.matmul %610, %9 : (tensor<4x197x768xf32>, tensor<4x768x3072xf32>) -> tensor<4x197x3072xf32>
    %612 = tosa.add %611, %8 : (tensor<4x197x3072xf32>, tensor<3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global513 = %612 : tensor<4x197x3072xf32>
    %613 = tosa.mul %612, %6 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global514 = %613 : tensor<4x197x3072xf32>
    %614 = tosa.pow %612, %3 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %615 = tosa.mul %614, %4 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %616 = tosa.add %612, %615 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %617 = tosa.mul %73, %616 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %618 = tosa.tanh %617 : (tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global519 = %618 : tensor<4x197x3072xf32>
    %619 = tosa.add %618, %7 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global520 = %619 : tensor<4x197x3072xf32>
    %620 = tosa.mul %613, %619 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %621 = tosa.matmul %620, %2 : (tensor<4x197x3072xf32>, tensor<4x3072x768xf32>) -> tensor<4x197x768xf32>
    %622 = tosa.add %621, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %623 = tosa.add %599, %622 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %624 = tosa.reduce_sum %623 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %625 = tosa.mul %624, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %626 = tosa.sub %623, %625 : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global527 = %626 : tensor<4x197x768xf32>
    %627 = tosa.mul %626, %626 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %628 = tosa.reduce_sum %627 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %629 = tosa.mul %628, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %630 = tosa.add %629, %13 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global531 = %630 : tensor<4x197x1xf32>
    %631 = tosa.rsqrt %630 : (tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global532 = %631 : tensor<4x197x1xf32>
    %632 = tosa.mul %626, %631 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    %633 = tosa.mul %632, %20 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %634 = tosa.add %633, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %635 = tosa.matmul %634, %12 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %636 = tosa.add %635, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global537 = %636 : tensor<4x197x768xf32>
    %637 = tosa.reshape %636 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %638 = tosa.transpose %637, %11 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %639 = tosa.reshape %638 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %640 = tosa.transpose %639, %17 : (tensor<48x197x64xf32>, tensor<3xi64>) -> tensor<48x64x197xf32>
    %641 = tosa.matmul %639, %640 : (tensor<48x197x64xf32>, tensor<48x64x197xf32>) -> tensor<48x197x197xf32>
    %642 = tosa.mul %641, %46 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<f32>) -> tensor<48x197x197xf32>
    %643 = tosa.exp %642 : (tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    ml_program.global_store @global540 = %643 : tensor<48x197x197xf32>
    %644 = tosa.reduce_sum %643 {axis = 2 : i32} : (tensor<48x197x197xf32>) -> tensor<48x197x1xf32>
    ml_program.global_store @global541 = %644 : tensor<48x197x1xf32>
    %645 = tosa.reciprocal %644 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    ml_program.global_store @global542 = %645 : tensor<48x197x1xf32>
    %646 = tosa.mul %643, %645 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x1xf32>) -> tensor<48x197x197xf32>
    ml_program.global_store @global543 = %646 : tensor<48x197x197xf32>
    %647 = tosa.matmul %646, %639 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %648 = tosa.reshape %647 {new_shape = array<i64: 4, 12, 197, 64>} : (tensor<48x197x64xf32>) -> tensor<4x12x197x64xf32>
    %649 = tosa.transpose %648, %11 : (tensor<4x12x197x64xf32>, tensor<4xi64>) -> tensor<4x197x12x64xf32>
    %650 = tosa.reshape %649 {new_shape = array<i64: 4, 197, 768>} : (tensor<4x197x12x64xf32>) -> tensor<4x197x768xf32>
    %651 = tosa.matmul %650, %12 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %652 = tosa.add %651, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %653 = tosa.add %652, %623 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %654 = tosa.reduce_sum %653 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %655 = tosa.mul %654, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %656 = tosa.sub %653, %655 : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global550 = %656 : tensor<4x197x768xf32>
    %657 = tosa.mul %656, %656 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %658 = tosa.reduce_sum %657 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %659 = tosa.mul %658, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %660 = tosa.add %659, %13 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global554 = %660 : tensor<4x197x1xf32>
    %661 = tosa.rsqrt %660 : (tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global555 = %661 : tensor<4x197x1xf32>
    %662 = tosa.mul %656, %661 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    %663 = tosa.mul %662, %20 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %664 = tosa.add %663, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %665 = tosa.matmul %664, %9 : (tensor<4x197x768xf32>, tensor<4x768x3072xf32>) -> tensor<4x197x3072xf32>
    %666 = tosa.add %665, %8 : (tensor<4x197x3072xf32>, tensor<3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global560 = %666 : tensor<4x197x3072xf32>
    %667 = tosa.mul %666, %6 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global561 = %667 : tensor<4x197x3072xf32>
    %668 = tosa.pow %666, %3 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %669 = tosa.mul %668, %4 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %670 = tosa.add %666, %669 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %671 = tosa.mul %73, %670 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %672 = tosa.tanh %671 : (tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global566 = %672 : tensor<4x197x3072xf32>
    %673 = tosa.add %672, %7 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    ml_program.global_store @global567 = %673 : tensor<4x197x3072xf32>
    %674 = tosa.mul %667, %673 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %675 = tosa.matmul %674, %2 : (tensor<4x197x3072xf32>, tensor<4x3072x768xf32>) -> tensor<4x197x768xf32>
    %676 = tosa.add %675, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %677 = tosa.add %653, %676 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %678 = tosa.reduce_sum %677 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %679 = tosa.mul %678, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %680 = tosa.sub %677, %679 : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    ml_program.global_store @global574 = %680 : tensor<4x197x768xf32>
    %681 = tosa.mul %680, %680 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %682 = tosa.reduce_sum %681 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %683 = tosa.mul %682, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %684 = tosa.add %683, %13 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global578 = %684 : tensor<4x197x1xf32>
    %685 = tosa.rsqrt %684 : (tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    ml_program.global_store @global579 = %685 : tensor<4x197x1xf32>
    %686 = tosa.mul %680, %685 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x1xf32>) -> tensor<4x197x768xf32>
    %687 = tosa.mul %686, %20 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %688 = tosa.add %687, %20 : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %extracted_slice = tensor.extract_slice %688[0, 0, 0] [4, 1, 768] [4, 1, 1] : tensor<4x197x768xf32> to tensor<4x1x768xf32>
    %689 = tosa.matmul %extracted_slice, %1 : (tensor<4x1x768xf32>, tensor<4x768x1000xf32>) -> tensor<4x1x1000xf32>
    %690 = tosa.add %689, %0 : (tensor<4x1x1000xf32>, tensor<1000xf32>) -> tensor<4x1x1000xf32>
    %691 = tosa.reshape %690 {new_shape = array<i64: 4, 1000>} : (tensor<4x1x1000xf32>) -> tensor<4x1000xf32>
    return %691 : tensor<4x1000xf32>
  }
  func.func @dforward(%arg0: tensor<4x1000xf32>) -> tensor<4x3x224x224xf32> {
    %cst = arith.constant dense<0.000000e+00> : tensor<3xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<48x197x197xf32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<4x197x768xf32>
    %0 = "tosa.const"() <{value = dense<[0, 3, 1, 2]> : tensor<4xi64>}> : () -> tensor<4xi64>
    %1 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<3x16x16x768xf32>}> : () -> tensor<3x16x16x768xf32>
    %2 = "tosa.const"() <{value = dense<[0, 2, 3, 1]> : tensor<4xi64>}> : () -> tensor<4xi64>
    %3 = "tosa.const"() <{value = dense<[0, 2, 1]> : tensor<3xi32>}> : () -> tensor<3xi32>
    %4 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<4x768x768xf32>}> : () -> tensor<4x768x768xf32>
    %5 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<4x3072x768xf32>}> : () -> tensor<4x3072x768xf32>
    %6 = "tosa.const"() <{value = dense<2.000000e+00> : tensor<4x197x3072xf32>}> : () -> tensor<4x197x3072xf32>
    %7 = "tosa.const"() <{value = dense<1.000000e+00> : tensor<f32>}> : () -> tensor<f32>
    %8 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<4x768x3072xf32>}> : () -> tensor<4x768x3072xf32>
    %9 = "tosa.const"() <{value = dense<-1.500000e+00> : tensor<f32>}> : () -> tensor<f32>
    %10 = "tosa.const"() <{value = dense<-5.000000e-01> : tensor<f32>}> : () -> tensor<f32>
    %cst_2 = arith.constant 0.000000e+00 : f32
    %11 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<4x1000x768xf32>}> : () -> tensor<4x1000x768xf32>
    %12 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<768xf32>}> : () -> tensor<768xf32>
    %13 = "tosa.const"() <{value = dense<[0, 2, 1]> : tensor<3xi64>}> : () -> tensor<3xi64>
    %14 = "tosa.const"() <{value = dense<0.00130208337> : tensor<f32>}> : () -> tensor<f32>
    %15 = "tosa.const"() <{value = dense<[0, 2, 1, 3]> : tensor<4xi64>}> : () -> tensor<4xi64>
    %16 = "tosa.const"() <{value = dense<5.000000e-01> : tensor<4x197x3072xf32>}> : () -> tensor<4x197x3072xf32>
    %17 = "tosa.const"() <{value = dense<3.000000e+00> : tensor<4x197x3072xf32>}> : () -> tensor<4x197x3072xf32>
    %global8 = ml_program.global_load @global8 : tensor<4x197x768xf32>
    %global12 = ml_program.global_load @global12 : tensor<4x197x1xf32>
    %global13 = ml_program.global_load @global13 : tensor<4x197x1xf32>
    %global18 = ml_program.global_load @global18 : tensor<4x197x768xf32>
    %18 = tosa.reshape %global18 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %19 = tosa.transpose %18, %15 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %20 = tosa.reshape %19 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %global20 = ml_program.global_load @global20 : tensor<f32>
    %global22 = ml_program.global_load @global22 : tensor<48x197x197xf32>
    %global23 = ml_program.global_load @global23 : tensor<48x197x1xf32>
    %global24 = ml_program.global_load @global24 : tensor<48x197x1xf32>
    %global25 = ml_program.global_load @global25 : tensor<48x197x197xf32>
    %global32 = ml_program.global_load @global32 : tensor<4x197x768xf32>
    %global36 = ml_program.global_load @global36 : tensor<4x197x1xf32>
    %global37 = ml_program.global_load @global37 : tensor<4x197x1xf32>
    %global42 = ml_program.global_load @global42 : tensor<4x197x3072xf32>
    %global43 = ml_program.global_load @global43 : tensor<4x197x3072xf32>
    %global44 = ml_program.global_load @global44 : tensor<4x197x3072xf32>
    %global49 = ml_program.global_load @global49 : tensor<4x197x3072xf32>
    %global50 = ml_program.global_load @global50 : tensor<4x197x3072xf32>
    %global57 = ml_program.global_load @global57 : tensor<4x197x768xf32>
    %global61 = ml_program.global_load @global61 : tensor<4x197x1xf32>
    %global62 = ml_program.global_load @global62 : tensor<4x197x1xf32>
    %global67 = ml_program.global_load @global67 : tensor<4x197x768xf32>
    %21 = tosa.reshape %global67 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %22 = tosa.transpose %21, %15 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %23 = tosa.reshape %22 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %global70 = ml_program.global_load @global70 : tensor<48x197x197xf32>
    %global71 = ml_program.global_load @global71 : tensor<48x197x1xf32>
    %global72 = ml_program.global_load @global72 : tensor<48x197x1xf32>
    %global73 = ml_program.global_load @global73 : tensor<48x197x197xf32>
    %global80 = ml_program.global_load @global80 : tensor<4x197x768xf32>
    %global84 = ml_program.global_load @global84 : tensor<4x197x1xf32>
    %global85 = ml_program.global_load @global85 : tensor<4x197x1xf32>
    %global90 = ml_program.global_load @global90 : tensor<4x197x3072xf32>
    %global91 = ml_program.global_load @global91 : tensor<4x197x3072xf32>
    %global96 = ml_program.global_load @global96 : tensor<4x197x3072xf32>
    %global97 = ml_program.global_load @global97 : tensor<4x197x3072xf32>
    %global104 = ml_program.global_load @global104 : tensor<4x197x768xf32>
    %global108 = ml_program.global_load @global108 : tensor<4x197x1xf32>
    %global109 = ml_program.global_load @global109 : tensor<4x197x1xf32>
    %global114 = ml_program.global_load @global114 : tensor<4x197x768xf32>
    %24 = tosa.reshape %global114 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %25 = tosa.transpose %24, %15 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %26 = tosa.reshape %25 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %global117 = ml_program.global_load @global117 : tensor<48x197x197xf32>
    %global118 = ml_program.global_load @global118 : tensor<48x197x1xf32>
    %global119 = ml_program.global_load @global119 : tensor<48x197x1xf32>
    %global120 = ml_program.global_load @global120 : tensor<48x197x197xf32>
    %global127 = ml_program.global_load @global127 : tensor<4x197x768xf32>
    %global131 = ml_program.global_load @global131 : tensor<4x197x1xf32>
    %global132 = ml_program.global_load @global132 : tensor<4x197x1xf32>
    %global137 = ml_program.global_load @global137 : tensor<4x197x3072xf32>
    %global138 = ml_program.global_load @global138 : tensor<4x197x3072xf32>
    %global143 = ml_program.global_load @global143 : tensor<4x197x3072xf32>
    %global144 = ml_program.global_load @global144 : tensor<4x197x3072xf32>
    %global151 = ml_program.global_load @global151 : tensor<4x197x768xf32>
    %global155 = ml_program.global_load @global155 : tensor<4x197x1xf32>
    %global156 = ml_program.global_load @global156 : tensor<4x197x1xf32>
    %global161 = ml_program.global_load @global161 : tensor<4x197x768xf32>
    %27 = tosa.reshape %global161 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %28 = tosa.transpose %27, %15 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %29 = tosa.reshape %28 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %global164 = ml_program.global_load @global164 : tensor<48x197x197xf32>
    %global165 = ml_program.global_load @global165 : tensor<48x197x1xf32>
    %global166 = ml_program.global_load @global166 : tensor<48x197x1xf32>
    %global167 = ml_program.global_load @global167 : tensor<48x197x197xf32>
    %global174 = ml_program.global_load @global174 : tensor<4x197x768xf32>
    %global178 = ml_program.global_load @global178 : tensor<4x197x1xf32>
    %global179 = ml_program.global_load @global179 : tensor<4x197x1xf32>
    %global184 = ml_program.global_load @global184 : tensor<4x197x3072xf32>
    %global185 = ml_program.global_load @global185 : tensor<4x197x3072xf32>
    %global190 = ml_program.global_load @global190 : tensor<4x197x3072xf32>
    %global191 = ml_program.global_load @global191 : tensor<4x197x3072xf32>
    %global198 = ml_program.global_load @global198 : tensor<4x197x768xf32>
    %global202 = ml_program.global_load @global202 : tensor<4x197x1xf32>
    %global203 = ml_program.global_load @global203 : tensor<4x197x1xf32>
    %global208 = ml_program.global_load @global208 : tensor<4x197x768xf32>
    %30 = tosa.reshape %global208 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %31 = tosa.transpose %30, %15 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %32 = tosa.reshape %31 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %global211 = ml_program.global_load @global211 : tensor<48x197x197xf32>
    %global212 = ml_program.global_load @global212 : tensor<48x197x1xf32>
    %global213 = ml_program.global_load @global213 : tensor<48x197x1xf32>
    %global214 = ml_program.global_load @global214 : tensor<48x197x197xf32>
    %global221 = ml_program.global_load @global221 : tensor<4x197x768xf32>
    %global225 = ml_program.global_load @global225 : tensor<4x197x1xf32>
    %global226 = ml_program.global_load @global226 : tensor<4x197x1xf32>
    %global231 = ml_program.global_load @global231 : tensor<4x197x3072xf32>
    %global232 = ml_program.global_load @global232 : tensor<4x197x3072xf32>
    %global237 = ml_program.global_load @global237 : tensor<4x197x3072xf32>
    %global238 = ml_program.global_load @global238 : tensor<4x197x3072xf32>
    %global245 = ml_program.global_load @global245 : tensor<4x197x768xf32>
    %global249 = ml_program.global_load @global249 : tensor<4x197x1xf32>
    %global250 = ml_program.global_load @global250 : tensor<4x197x1xf32>
    %global255 = ml_program.global_load @global255 : tensor<4x197x768xf32>
    %33 = tosa.reshape %global255 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %34 = tosa.transpose %33, %15 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %35 = tosa.reshape %34 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %global258 = ml_program.global_load @global258 : tensor<48x197x197xf32>
    %global259 = ml_program.global_load @global259 : tensor<48x197x1xf32>
    %global260 = ml_program.global_load @global260 : tensor<48x197x1xf32>
    %global261 = ml_program.global_load @global261 : tensor<48x197x197xf32>
    %global268 = ml_program.global_load @global268 : tensor<4x197x768xf32>
    %global272 = ml_program.global_load @global272 : tensor<4x197x1xf32>
    %global273 = ml_program.global_load @global273 : tensor<4x197x1xf32>
    %global278 = ml_program.global_load @global278 : tensor<4x197x3072xf32>
    %global279 = ml_program.global_load @global279 : tensor<4x197x3072xf32>
    %global284 = ml_program.global_load @global284 : tensor<4x197x3072xf32>
    %global285 = ml_program.global_load @global285 : tensor<4x197x3072xf32>
    %global292 = ml_program.global_load @global292 : tensor<4x197x768xf32>
    %global296 = ml_program.global_load @global296 : tensor<4x197x1xf32>
    %global297 = ml_program.global_load @global297 : tensor<4x197x1xf32>
    %global302 = ml_program.global_load @global302 : tensor<4x197x768xf32>
    %36 = tosa.reshape %global302 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %37 = tosa.transpose %36, %15 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %38 = tosa.reshape %37 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %global305 = ml_program.global_load @global305 : tensor<48x197x197xf32>
    %global306 = ml_program.global_load @global306 : tensor<48x197x1xf32>
    %global307 = ml_program.global_load @global307 : tensor<48x197x1xf32>
    %global308 = ml_program.global_load @global308 : tensor<48x197x197xf32>
    %global315 = ml_program.global_load @global315 : tensor<4x197x768xf32>
    %global319 = ml_program.global_load @global319 : tensor<4x197x1xf32>
    %global320 = ml_program.global_load @global320 : tensor<4x197x1xf32>
    %global325 = ml_program.global_load @global325 : tensor<4x197x3072xf32>
    %global326 = ml_program.global_load @global326 : tensor<4x197x3072xf32>
    %global331 = ml_program.global_load @global331 : tensor<4x197x3072xf32>
    %global332 = ml_program.global_load @global332 : tensor<4x197x3072xf32>
    %global339 = ml_program.global_load @global339 : tensor<4x197x768xf32>
    %global343 = ml_program.global_load @global343 : tensor<4x197x1xf32>
    %global344 = ml_program.global_load @global344 : tensor<4x197x1xf32>
    %global349 = ml_program.global_load @global349 : tensor<4x197x768xf32>
    %39 = tosa.reshape %global349 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %40 = tosa.transpose %39, %15 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %41 = tosa.reshape %40 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %global352 = ml_program.global_load @global352 : tensor<48x197x197xf32>
    %global353 = ml_program.global_load @global353 : tensor<48x197x1xf32>
    %global354 = ml_program.global_load @global354 : tensor<48x197x1xf32>
    %global355 = ml_program.global_load @global355 : tensor<48x197x197xf32>
    %global362 = ml_program.global_load @global362 : tensor<4x197x768xf32>
    %global366 = ml_program.global_load @global366 : tensor<4x197x1xf32>
    %global367 = ml_program.global_load @global367 : tensor<4x197x1xf32>
    %global372 = ml_program.global_load @global372 : tensor<4x197x3072xf32>
    %global373 = ml_program.global_load @global373 : tensor<4x197x3072xf32>
    %global378 = ml_program.global_load @global378 : tensor<4x197x3072xf32>
    %global379 = ml_program.global_load @global379 : tensor<4x197x3072xf32>
    %global386 = ml_program.global_load @global386 : tensor<4x197x768xf32>
    %global390 = ml_program.global_load @global390 : tensor<4x197x1xf32>
    %global391 = ml_program.global_load @global391 : tensor<4x197x1xf32>
    %global396 = ml_program.global_load @global396 : tensor<4x197x768xf32>
    %42 = tosa.reshape %global396 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %43 = tosa.transpose %42, %15 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %44 = tosa.reshape %43 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %global399 = ml_program.global_load @global399 : tensor<48x197x197xf32>
    %global400 = ml_program.global_load @global400 : tensor<48x197x1xf32>
    %global401 = ml_program.global_load @global401 : tensor<48x197x1xf32>
    %global402 = ml_program.global_load @global402 : tensor<48x197x197xf32>
    %global409 = ml_program.global_load @global409 : tensor<4x197x768xf32>
    %global413 = ml_program.global_load @global413 : tensor<4x197x1xf32>
    %global414 = ml_program.global_load @global414 : tensor<4x197x1xf32>
    %global419 = ml_program.global_load @global419 : tensor<4x197x3072xf32>
    %global420 = ml_program.global_load @global420 : tensor<4x197x3072xf32>
    %global425 = ml_program.global_load @global425 : tensor<4x197x3072xf32>
    %global426 = ml_program.global_load @global426 : tensor<4x197x3072xf32>
    %global433 = ml_program.global_load @global433 : tensor<4x197x768xf32>
    %global437 = ml_program.global_load @global437 : tensor<4x197x1xf32>
    %global438 = ml_program.global_load @global438 : tensor<4x197x1xf32>
    %global443 = ml_program.global_load @global443 : tensor<4x197x768xf32>
    %45 = tosa.reshape %global443 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %46 = tosa.transpose %45, %15 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %47 = tosa.reshape %46 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %global446 = ml_program.global_load @global446 : tensor<48x197x197xf32>
    %global447 = ml_program.global_load @global447 : tensor<48x197x1xf32>
    %global448 = ml_program.global_load @global448 : tensor<48x197x1xf32>
    %global449 = ml_program.global_load @global449 : tensor<48x197x197xf32>
    %global456 = ml_program.global_load @global456 : tensor<4x197x768xf32>
    %global460 = ml_program.global_load @global460 : tensor<4x197x1xf32>
    %global461 = ml_program.global_load @global461 : tensor<4x197x1xf32>
    %global466 = ml_program.global_load @global466 : tensor<4x197x3072xf32>
    %global467 = ml_program.global_load @global467 : tensor<4x197x3072xf32>
    %global472 = ml_program.global_load @global472 : tensor<4x197x3072xf32>
    %global473 = ml_program.global_load @global473 : tensor<4x197x3072xf32>
    %global480 = ml_program.global_load @global480 : tensor<4x197x768xf32>
    %global484 = ml_program.global_load @global484 : tensor<4x197x1xf32>
    %global485 = ml_program.global_load @global485 : tensor<4x197x1xf32>
    %global490 = ml_program.global_load @global490 : tensor<4x197x768xf32>
    %48 = tosa.reshape %global490 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %49 = tosa.transpose %48, %15 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %50 = tosa.reshape %49 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %global493 = ml_program.global_load @global493 : tensor<48x197x197xf32>
    %global494 = ml_program.global_load @global494 : tensor<48x197x1xf32>
    %global495 = ml_program.global_load @global495 : tensor<48x197x1xf32>
    %global496 = ml_program.global_load @global496 : tensor<48x197x197xf32>
    %global503 = ml_program.global_load @global503 : tensor<4x197x768xf32>
    %global507 = ml_program.global_load @global507 : tensor<4x197x1xf32>
    %global508 = ml_program.global_load @global508 : tensor<4x197x1xf32>
    %global513 = ml_program.global_load @global513 : tensor<4x197x3072xf32>
    %global514 = ml_program.global_load @global514 : tensor<4x197x3072xf32>
    %global519 = ml_program.global_load @global519 : tensor<4x197x3072xf32>
    %global520 = ml_program.global_load @global520 : tensor<4x197x3072xf32>
    %global527 = ml_program.global_load @global527 : tensor<4x197x768xf32>
    %global531 = ml_program.global_load @global531 : tensor<4x197x1xf32>
    %global532 = ml_program.global_load @global532 : tensor<4x197x1xf32>
    %global537 = ml_program.global_load @global537 : tensor<4x197x768xf32>
    %51 = tosa.reshape %global537 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %52 = tosa.transpose %51, %15 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %53 = tosa.reshape %52 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %global540 = ml_program.global_load @global540 : tensor<48x197x197xf32>
    %global541 = ml_program.global_load @global541 : tensor<48x197x1xf32>
    %global542 = ml_program.global_load @global542 : tensor<48x197x1xf32>
    %global543 = ml_program.global_load @global543 : tensor<48x197x197xf32>
    %global550 = ml_program.global_load @global550 : tensor<4x197x768xf32>
    %global554 = ml_program.global_load @global554 : tensor<4x197x1xf32>
    %global555 = ml_program.global_load @global555 : tensor<4x197x1xf32>
    %global560 = ml_program.global_load @global560 : tensor<4x197x3072xf32>
    %global561 = ml_program.global_load @global561 : tensor<4x197x3072xf32>
    %global566 = ml_program.global_load @global566 : tensor<4x197x3072xf32>
    %global567 = ml_program.global_load @global567 : tensor<4x197x3072xf32>
    %global574 = ml_program.global_load @global574 : tensor<4x197x768xf32>
    %global578 = ml_program.global_load @global578 : tensor<4x197x1xf32>
    %global579 = ml_program.global_load @global579 : tensor<4x197x1xf32>
    %54 = tosa.reshape %arg0 {new_shape = array<i64: 4, 1, 1000>} : (tensor<4x1000xf32>) -> tensor<4x1x1000xf32>
    %55 = tosa.matmul %54, %11 : (tensor<4x1x1000xf32>, tensor<4x1000x768xf32>) -> tensor<4x1x768xf32>
    %56 = linalg.fill ins(%cst_2 : f32) outs(%cst_1 : tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %inserted_slice = tensor.insert_slice %55 into %56[0, 0, 0] [4, 1, 768] [4, 1, 1] : tensor<4x1x768xf32> into tensor<4x197x768xf32>
    %57 = tosa.mul %inserted_slice, %12 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %58 = tosa.mul %global579, %57 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %59 = tosa.mul %global574, %57 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %60 = tosa.reduce_sum %59 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %61 = tosa.pow %global578, %9 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %62 = tosa.mul %61, %10 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %63 = tosa.mul %62, %60 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    %64 = tosa.mul %63, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %65 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%64 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %66 = tosa.mul %global574, %65 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %67 = tosa.add %58, %66 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %68 = tosa.add %67, %66 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %69 = tosa.negate %68 : (tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %70 = tosa.reduce_sum %69 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %71 = tosa.mul %70, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %72 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%71 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %73 = tosa.add %68, %72 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %74 = tosa.matmul %73, %8 : (tensor<4x197x768xf32>, tensor<4x768x3072xf32>) -> tensor<4x197x3072xf32>
    %75 = tosa.mul %global567, %74 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %76 = tosa.mul %global561, %74 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %77 = tosa.mul %global566, %global566 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %78 = tosa.sub %7, %77 : (tensor<f32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %79 = tosa.mul %78, %76 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %80 = tosa.mul %global44, %79 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %81 = tosa.pow %global560, %6 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %82 = tosa.mul %81, %17 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %83 = tosa.add %80, %82 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %84 = tosa.mul %75, %16 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %85 = tosa.add %83, %84 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %86 = tosa.matmul %85, %5 : (tensor<4x197x3072xf32>, tensor<4x3072x768xf32>) -> tensor<4x197x768xf32>
    %87 = tosa.mul %86, %12 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %88 = tosa.mul %global555, %87 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %89 = tosa.mul %global550, %87 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %90 = tosa.reduce_sum %89 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %91 = tosa.pow %global554, %9 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %92 = tosa.mul %91, %10 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %93 = tosa.mul %92, %90 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    %94 = tosa.mul %93, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %95 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%94 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %96 = tosa.mul %global550, %95 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %97 = tosa.add %88, %96 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %98 = tosa.add %97, %96 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %99 = tosa.add %73, %98 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %100 = tosa.negate %98 : (tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %101 = tosa.reduce_sum %100 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %102 = tosa.mul %101, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %103 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%102 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %104 = tosa.add %99, %103 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %105 = tosa.matmul %104, %4 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %106 = tosa.reshape %105 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %107 = tosa.transpose %106, %15 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %108 = tosa.reshape %107 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %109 = tosa.transpose %53, %3 : (tensor<48x197x64xf32>, tensor<3xi32>) -> tensor<48x64x197xf32>
    %110 = tosa.matmul %108, %109 : (tensor<48x197x64xf32>, tensor<48x64x197xf32>) -> tensor<48x197x197xf32>
    %111 = tosa.transpose %global543, %3 : (tensor<48x197x197xf32>, tensor<3xi32>) -> tensor<48x197x197xf32>
    %112 = tosa.matmul %111, %108 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %113 = tosa.mul %global542, %110 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %114 = tosa.mul %global540, %110 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %115 = tosa.reduce_sum %114 {axis = 2 : i32} : (tensor<48x197x197xf32>) -> tensor<48x197x1xf32>
    %116 = tosa.mul %global541, %global541 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %117 = tosa.negate %116 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %118 = tosa.reciprocal %117 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %119 = tosa.mul %118, %115 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %120 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%119 : tensor<48x197x1xf32>) outs(%cst_0 : tensor<48x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<48x197x197xf32>
    %121 = tosa.add %113, %120 : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %122 = tosa.mul %global540, %121 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %123 = tosa.mul %global20, %122 {shift = 0 : i8} : (tensor<f32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %124 = tosa.matmul %123, %53 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %125 = tosa.add %112, %124 : (tensor<48x197x64xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %126 = tosa.matmul %109, %123 : (tensor<48x64x197xf32>, tensor<48x197x197xf32>) -> tensor<48x64x197xf32>
    %127 = tosa.transpose %126, %13 : (tensor<48x64x197xf32>, tensor<3xi64>) -> tensor<48x197x64xf32>
    %128 = tosa.add %125, %127 : (tensor<48x197x64xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %129 = tosa.reshape %128 {new_shape = array<i64: 4, 12, 197, 64>} : (tensor<48x197x64xf32>) -> tensor<4x12x197x64xf32>
    %130 = tosa.transpose %129, %15 : (tensor<4x12x197x64xf32>, tensor<4xi64>) -> tensor<4x197x12x64xf32>
    %131 = tosa.reshape %130 {new_shape = array<i64: 4, 197, 768>} : (tensor<4x197x12x64xf32>) -> tensor<4x197x768xf32>
    %132 = tosa.matmul %131, %4 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %133 = tosa.mul %132, %12 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %134 = tosa.mul %global532, %133 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %135 = tosa.mul %global527, %133 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %136 = tosa.reduce_sum %135 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %137 = tosa.pow %global531, %9 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %138 = tosa.mul %137, %10 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %139 = tosa.mul %138, %136 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    %140 = tosa.mul %139, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %141 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%140 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %142 = tosa.mul %global527, %141 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %143 = tosa.add %134, %142 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %144 = tosa.add %143, %142 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %145 = tosa.add %104, %144 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %146 = tosa.negate %144 : (tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %147 = tosa.reduce_sum %146 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %148 = tosa.mul %147, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %149 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%148 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %150 = tosa.add %145, %149 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %151 = tosa.matmul %150, %8 : (tensor<4x197x768xf32>, tensor<4x768x3072xf32>) -> tensor<4x197x3072xf32>
    %152 = tosa.mul %global520, %151 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %153 = tosa.mul %global514, %151 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %154 = tosa.mul %global519, %global519 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %155 = tosa.sub %7, %154 : (tensor<f32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %156 = tosa.mul %155, %153 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %157 = tosa.mul %global44, %156 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %158 = tosa.pow %global513, %6 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %159 = tosa.mul %158, %17 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %160 = tosa.add %157, %159 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %161 = tosa.mul %152, %16 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %162 = tosa.add %160, %161 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %163 = tosa.matmul %162, %5 : (tensor<4x197x3072xf32>, tensor<4x3072x768xf32>) -> tensor<4x197x768xf32>
    %164 = tosa.mul %163, %12 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %165 = tosa.mul %global508, %164 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %166 = tosa.mul %global503, %164 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %167 = tosa.reduce_sum %166 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %168 = tosa.pow %global507, %9 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %169 = tosa.mul %168, %10 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %170 = tosa.mul %169, %167 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    %171 = tosa.mul %170, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %172 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%171 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %173 = tosa.mul %global503, %172 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %174 = tosa.add %165, %173 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %175 = tosa.add %174, %173 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %176 = tosa.add %150, %175 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %177 = tosa.negate %175 : (tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %178 = tosa.reduce_sum %177 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %179 = tosa.mul %178, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %180 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%179 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %181 = tosa.add %176, %180 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %182 = tosa.matmul %181, %4 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %183 = tosa.reshape %182 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %184 = tosa.transpose %183, %15 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %185 = tosa.reshape %184 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %186 = tosa.transpose %50, %3 : (tensor<48x197x64xf32>, tensor<3xi32>) -> tensor<48x64x197xf32>
    %187 = tosa.matmul %185, %186 : (tensor<48x197x64xf32>, tensor<48x64x197xf32>) -> tensor<48x197x197xf32>
    %188 = tosa.transpose %global496, %3 : (tensor<48x197x197xf32>, tensor<3xi32>) -> tensor<48x197x197xf32>
    %189 = tosa.matmul %188, %185 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %190 = tosa.mul %global495, %187 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %191 = tosa.mul %global493, %187 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %192 = tosa.reduce_sum %191 {axis = 2 : i32} : (tensor<48x197x197xf32>) -> tensor<48x197x1xf32>
    %193 = tosa.mul %global494, %global494 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %194 = tosa.negate %193 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %195 = tosa.reciprocal %194 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %196 = tosa.mul %195, %192 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %197 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%196 : tensor<48x197x1xf32>) outs(%cst_0 : tensor<48x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<48x197x197xf32>
    %198 = tosa.add %190, %197 : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %199 = tosa.mul %global493, %198 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %200 = tosa.mul %global20, %199 {shift = 0 : i8} : (tensor<f32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %201 = tosa.matmul %200, %50 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %202 = tosa.add %189, %201 : (tensor<48x197x64xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %203 = tosa.matmul %186, %200 : (tensor<48x64x197xf32>, tensor<48x197x197xf32>) -> tensor<48x64x197xf32>
    %204 = tosa.transpose %203, %13 : (tensor<48x64x197xf32>, tensor<3xi64>) -> tensor<48x197x64xf32>
    %205 = tosa.add %202, %204 : (tensor<48x197x64xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %206 = tosa.reshape %205 {new_shape = array<i64: 4, 12, 197, 64>} : (tensor<48x197x64xf32>) -> tensor<4x12x197x64xf32>
    %207 = tosa.transpose %206, %15 : (tensor<4x12x197x64xf32>, tensor<4xi64>) -> tensor<4x197x12x64xf32>
    %208 = tosa.reshape %207 {new_shape = array<i64: 4, 197, 768>} : (tensor<4x197x12x64xf32>) -> tensor<4x197x768xf32>
    %209 = tosa.matmul %208, %4 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %210 = tosa.mul %209, %12 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %211 = tosa.mul %global485, %210 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %212 = tosa.mul %global480, %210 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %213 = tosa.reduce_sum %212 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %214 = tosa.pow %global484, %9 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %215 = tosa.mul %214, %10 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %216 = tosa.mul %215, %213 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    %217 = tosa.mul %216, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %218 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%217 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %219 = tosa.mul %global480, %218 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %220 = tosa.add %211, %219 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %221 = tosa.add %220, %219 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %222 = tosa.add %181, %221 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %223 = tosa.negate %221 : (tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %224 = tosa.reduce_sum %223 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %225 = tosa.mul %224, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %226 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%225 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %227 = tosa.add %222, %226 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %228 = tosa.matmul %227, %8 : (tensor<4x197x768xf32>, tensor<4x768x3072xf32>) -> tensor<4x197x3072xf32>
    %229 = tosa.mul %global473, %228 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %230 = tosa.mul %global467, %228 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %231 = tosa.mul %global472, %global472 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %232 = tosa.sub %7, %231 : (tensor<f32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %233 = tosa.mul %232, %230 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %234 = tosa.mul %global44, %233 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %235 = tosa.pow %global466, %6 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %236 = tosa.mul %235, %17 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %237 = tosa.add %234, %236 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %238 = tosa.mul %229, %16 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %239 = tosa.add %237, %238 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %240 = tosa.matmul %239, %5 : (tensor<4x197x3072xf32>, tensor<4x3072x768xf32>) -> tensor<4x197x768xf32>
    %241 = tosa.mul %240, %12 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %242 = tosa.mul %global461, %241 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %243 = tosa.mul %global456, %241 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %244 = tosa.reduce_sum %243 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %245 = tosa.pow %global460, %9 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %246 = tosa.mul %245, %10 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %247 = tosa.mul %246, %244 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    %248 = tosa.mul %247, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %249 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%248 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %250 = tosa.mul %global456, %249 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %251 = tosa.add %242, %250 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %252 = tosa.add %251, %250 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %253 = tosa.add %227, %252 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %254 = tosa.negate %252 : (tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %255 = tosa.reduce_sum %254 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %256 = tosa.mul %255, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %257 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%256 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %258 = tosa.add %253, %257 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %259 = tosa.matmul %258, %4 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %260 = tosa.reshape %259 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %261 = tosa.transpose %260, %15 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %262 = tosa.reshape %261 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %263 = tosa.transpose %47, %3 : (tensor<48x197x64xf32>, tensor<3xi32>) -> tensor<48x64x197xf32>
    %264 = tosa.matmul %262, %263 : (tensor<48x197x64xf32>, tensor<48x64x197xf32>) -> tensor<48x197x197xf32>
    %265 = tosa.transpose %global449, %3 : (tensor<48x197x197xf32>, tensor<3xi32>) -> tensor<48x197x197xf32>
    %266 = tosa.matmul %265, %262 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %267 = tosa.mul %global448, %264 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %268 = tosa.mul %global446, %264 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %269 = tosa.reduce_sum %268 {axis = 2 : i32} : (tensor<48x197x197xf32>) -> tensor<48x197x1xf32>
    %270 = tosa.mul %global447, %global447 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %271 = tosa.negate %270 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %272 = tosa.reciprocal %271 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %273 = tosa.mul %272, %269 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %274 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%273 : tensor<48x197x1xf32>) outs(%cst_0 : tensor<48x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<48x197x197xf32>
    %275 = tosa.add %267, %274 : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %276 = tosa.mul %global446, %275 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %277 = tosa.mul %global20, %276 {shift = 0 : i8} : (tensor<f32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %278 = tosa.matmul %277, %47 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %279 = tosa.add %266, %278 : (tensor<48x197x64xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %280 = tosa.matmul %263, %277 : (tensor<48x64x197xf32>, tensor<48x197x197xf32>) -> tensor<48x64x197xf32>
    %281 = tosa.transpose %280, %13 : (tensor<48x64x197xf32>, tensor<3xi64>) -> tensor<48x197x64xf32>
    %282 = tosa.add %279, %281 : (tensor<48x197x64xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %283 = tosa.reshape %282 {new_shape = array<i64: 4, 12, 197, 64>} : (tensor<48x197x64xf32>) -> tensor<4x12x197x64xf32>
    %284 = tosa.transpose %283, %15 : (tensor<4x12x197x64xf32>, tensor<4xi64>) -> tensor<4x197x12x64xf32>
    %285 = tosa.reshape %284 {new_shape = array<i64: 4, 197, 768>} : (tensor<4x197x12x64xf32>) -> tensor<4x197x768xf32>
    %286 = tosa.matmul %285, %4 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %287 = tosa.mul %286, %12 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %288 = tosa.mul %global438, %287 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %289 = tosa.mul %global433, %287 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %290 = tosa.reduce_sum %289 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %291 = tosa.pow %global437, %9 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %292 = tosa.mul %291, %10 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %293 = tosa.mul %292, %290 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    %294 = tosa.mul %293, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %295 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%294 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %296 = tosa.mul %global433, %295 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %297 = tosa.add %288, %296 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %298 = tosa.add %297, %296 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %299 = tosa.add %258, %298 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %300 = tosa.negate %298 : (tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %301 = tosa.reduce_sum %300 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %302 = tosa.mul %301, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %303 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%302 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %304 = tosa.add %299, %303 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %305 = tosa.matmul %304, %8 : (tensor<4x197x768xf32>, tensor<4x768x3072xf32>) -> tensor<4x197x3072xf32>
    %306 = tosa.mul %global426, %305 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %307 = tosa.mul %global420, %305 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %308 = tosa.mul %global425, %global425 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %309 = tosa.sub %7, %308 : (tensor<f32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %310 = tosa.mul %309, %307 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %311 = tosa.mul %global44, %310 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %312 = tosa.pow %global419, %6 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %313 = tosa.mul %312, %17 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %314 = tosa.add %311, %313 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %315 = tosa.mul %306, %16 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %316 = tosa.add %314, %315 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %317 = tosa.matmul %316, %5 : (tensor<4x197x3072xf32>, tensor<4x3072x768xf32>) -> tensor<4x197x768xf32>
    %318 = tosa.mul %317, %12 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %319 = tosa.mul %global414, %318 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %320 = tosa.mul %global409, %318 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %321 = tosa.reduce_sum %320 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %322 = tosa.pow %global413, %9 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %323 = tosa.mul %322, %10 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %324 = tosa.mul %323, %321 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    %325 = tosa.mul %324, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %326 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%325 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %327 = tosa.mul %global409, %326 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %328 = tosa.add %319, %327 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %329 = tosa.add %328, %327 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %330 = tosa.add %304, %329 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %331 = tosa.negate %329 : (tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %332 = tosa.reduce_sum %331 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %333 = tosa.mul %332, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %334 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%333 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %335 = tosa.add %330, %334 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %336 = tosa.matmul %335, %4 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %337 = tosa.reshape %336 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %338 = tosa.transpose %337, %15 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %339 = tosa.reshape %338 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %340 = tosa.transpose %44, %3 : (tensor<48x197x64xf32>, tensor<3xi32>) -> tensor<48x64x197xf32>
    %341 = tosa.matmul %339, %340 : (tensor<48x197x64xf32>, tensor<48x64x197xf32>) -> tensor<48x197x197xf32>
    %342 = tosa.transpose %global402, %3 : (tensor<48x197x197xf32>, tensor<3xi32>) -> tensor<48x197x197xf32>
    %343 = tosa.matmul %342, %339 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %344 = tosa.mul %global401, %341 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %345 = tosa.mul %global399, %341 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %346 = tosa.reduce_sum %345 {axis = 2 : i32} : (tensor<48x197x197xf32>) -> tensor<48x197x1xf32>
    %347 = tosa.mul %global400, %global400 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %348 = tosa.negate %347 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %349 = tosa.reciprocal %348 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %350 = tosa.mul %349, %346 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %351 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%350 : tensor<48x197x1xf32>) outs(%cst_0 : tensor<48x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<48x197x197xf32>
    %352 = tosa.add %344, %351 : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %353 = tosa.mul %global399, %352 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %354 = tosa.mul %global20, %353 {shift = 0 : i8} : (tensor<f32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %355 = tosa.matmul %354, %44 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %356 = tosa.add %343, %355 : (tensor<48x197x64xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %357 = tosa.matmul %340, %354 : (tensor<48x64x197xf32>, tensor<48x197x197xf32>) -> tensor<48x64x197xf32>
    %358 = tosa.transpose %357, %13 : (tensor<48x64x197xf32>, tensor<3xi64>) -> tensor<48x197x64xf32>
    %359 = tosa.add %356, %358 : (tensor<48x197x64xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %360 = tosa.reshape %359 {new_shape = array<i64: 4, 12, 197, 64>} : (tensor<48x197x64xf32>) -> tensor<4x12x197x64xf32>
    %361 = tosa.transpose %360, %15 : (tensor<4x12x197x64xf32>, tensor<4xi64>) -> tensor<4x197x12x64xf32>
    %362 = tosa.reshape %361 {new_shape = array<i64: 4, 197, 768>} : (tensor<4x197x12x64xf32>) -> tensor<4x197x768xf32>
    %363 = tosa.matmul %362, %4 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %364 = tosa.mul %363, %12 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %365 = tosa.mul %global391, %364 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %366 = tosa.mul %global386, %364 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %367 = tosa.reduce_sum %366 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %368 = tosa.pow %global390, %9 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %369 = tosa.mul %368, %10 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %370 = tosa.mul %369, %367 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    %371 = tosa.mul %370, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %372 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%371 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %373 = tosa.mul %global386, %372 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %374 = tosa.add %365, %373 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %375 = tosa.add %374, %373 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %376 = tosa.add %335, %375 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %377 = tosa.negate %375 : (tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %378 = tosa.reduce_sum %377 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %379 = tosa.mul %378, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %380 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%379 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %381 = tosa.add %376, %380 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %382 = tosa.matmul %381, %8 : (tensor<4x197x768xf32>, tensor<4x768x3072xf32>) -> tensor<4x197x3072xf32>
    %383 = tosa.mul %global379, %382 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %384 = tosa.mul %global373, %382 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %385 = tosa.mul %global378, %global378 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %386 = tosa.sub %7, %385 : (tensor<f32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %387 = tosa.mul %386, %384 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %388 = tosa.mul %global44, %387 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %389 = tosa.pow %global372, %6 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %390 = tosa.mul %389, %17 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %391 = tosa.add %388, %390 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %392 = tosa.mul %383, %16 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %393 = tosa.add %391, %392 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %394 = tosa.matmul %393, %5 : (tensor<4x197x3072xf32>, tensor<4x3072x768xf32>) -> tensor<4x197x768xf32>
    %395 = tosa.mul %394, %12 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %396 = tosa.mul %global367, %395 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %397 = tosa.mul %global362, %395 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %398 = tosa.reduce_sum %397 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %399 = tosa.pow %global366, %9 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %400 = tosa.mul %399, %10 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %401 = tosa.mul %400, %398 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    %402 = tosa.mul %401, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %403 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%402 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %404 = tosa.mul %global362, %403 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %405 = tosa.add %396, %404 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %406 = tosa.add %405, %404 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %407 = tosa.add %381, %406 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %408 = tosa.negate %406 : (tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %409 = tosa.reduce_sum %408 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %410 = tosa.mul %409, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %411 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%410 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %412 = tosa.add %407, %411 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %413 = tosa.matmul %412, %4 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %414 = tosa.reshape %413 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %415 = tosa.transpose %414, %15 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %416 = tosa.reshape %415 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %417 = tosa.transpose %41, %3 : (tensor<48x197x64xf32>, tensor<3xi32>) -> tensor<48x64x197xf32>
    %418 = tosa.matmul %416, %417 : (tensor<48x197x64xf32>, tensor<48x64x197xf32>) -> tensor<48x197x197xf32>
    %419 = tosa.transpose %global355, %3 : (tensor<48x197x197xf32>, tensor<3xi32>) -> tensor<48x197x197xf32>
    %420 = tosa.matmul %419, %416 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %421 = tosa.mul %global354, %418 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %422 = tosa.mul %global352, %418 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %423 = tosa.reduce_sum %422 {axis = 2 : i32} : (tensor<48x197x197xf32>) -> tensor<48x197x1xf32>
    %424 = tosa.mul %global353, %global353 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %425 = tosa.negate %424 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %426 = tosa.reciprocal %425 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %427 = tosa.mul %426, %423 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %428 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%427 : tensor<48x197x1xf32>) outs(%cst_0 : tensor<48x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<48x197x197xf32>
    %429 = tosa.add %421, %428 : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %430 = tosa.mul %global352, %429 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %431 = tosa.mul %global20, %430 {shift = 0 : i8} : (tensor<f32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %432 = tosa.matmul %431, %41 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %433 = tosa.add %420, %432 : (tensor<48x197x64xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %434 = tosa.matmul %417, %431 : (tensor<48x64x197xf32>, tensor<48x197x197xf32>) -> tensor<48x64x197xf32>
    %435 = tosa.transpose %434, %13 : (tensor<48x64x197xf32>, tensor<3xi64>) -> tensor<48x197x64xf32>
    %436 = tosa.add %433, %435 : (tensor<48x197x64xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %437 = tosa.reshape %436 {new_shape = array<i64: 4, 12, 197, 64>} : (tensor<48x197x64xf32>) -> tensor<4x12x197x64xf32>
    %438 = tosa.transpose %437, %15 : (tensor<4x12x197x64xf32>, tensor<4xi64>) -> tensor<4x197x12x64xf32>
    %439 = tosa.reshape %438 {new_shape = array<i64: 4, 197, 768>} : (tensor<4x197x12x64xf32>) -> tensor<4x197x768xf32>
    %440 = tosa.matmul %439, %4 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %441 = tosa.mul %440, %12 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %442 = tosa.mul %global344, %441 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %443 = tosa.mul %global339, %441 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %444 = tosa.reduce_sum %443 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %445 = tosa.pow %global343, %9 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %446 = tosa.mul %445, %10 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %447 = tosa.mul %446, %444 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    %448 = tosa.mul %447, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %449 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%448 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %450 = tosa.mul %global339, %449 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %451 = tosa.add %442, %450 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %452 = tosa.add %451, %450 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %453 = tosa.add %412, %452 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %454 = tosa.negate %452 : (tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %455 = tosa.reduce_sum %454 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %456 = tosa.mul %455, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %457 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%456 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %458 = tosa.add %453, %457 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %459 = tosa.matmul %458, %8 : (tensor<4x197x768xf32>, tensor<4x768x3072xf32>) -> tensor<4x197x3072xf32>
    %460 = tosa.mul %global332, %459 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %461 = tosa.mul %global326, %459 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %462 = tosa.mul %global331, %global331 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %463 = tosa.sub %7, %462 : (tensor<f32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %464 = tosa.mul %463, %461 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %465 = tosa.mul %global44, %464 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %466 = tosa.pow %global325, %6 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %467 = tosa.mul %466, %17 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %468 = tosa.add %465, %467 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %469 = tosa.mul %460, %16 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %470 = tosa.add %468, %469 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %471 = tosa.matmul %470, %5 : (tensor<4x197x3072xf32>, tensor<4x3072x768xf32>) -> tensor<4x197x768xf32>
    %472 = tosa.mul %471, %12 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %473 = tosa.mul %global320, %472 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %474 = tosa.mul %global315, %472 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %475 = tosa.reduce_sum %474 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %476 = tosa.pow %global319, %9 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %477 = tosa.mul %476, %10 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %478 = tosa.mul %477, %475 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    %479 = tosa.mul %478, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %480 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%479 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %481 = tosa.mul %global315, %480 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %482 = tosa.add %473, %481 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %483 = tosa.add %482, %481 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %484 = tosa.add %458, %483 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %485 = tosa.negate %483 : (tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %486 = tosa.reduce_sum %485 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %487 = tosa.mul %486, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %488 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%487 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %489 = tosa.add %484, %488 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %490 = tosa.matmul %489, %4 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %491 = tosa.reshape %490 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %492 = tosa.transpose %491, %15 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %493 = tosa.reshape %492 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %494 = tosa.transpose %38, %3 : (tensor<48x197x64xf32>, tensor<3xi32>) -> tensor<48x64x197xf32>
    %495 = tosa.matmul %493, %494 : (tensor<48x197x64xf32>, tensor<48x64x197xf32>) -> tensor<48x197x197xf32>
    %496 = tosa.transpose %global308, %3 : (tensor<48x197x197xf32>, tensor<3xi32>) -> tensor<48x197x197xf32>
    %497 = tosa.matmul %496, %493 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %498 = tosa.mul %global307, %495 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %499 = tosa.mul %global305, %495 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %500 = tosa.reduce_sum %499 {axis = 2 : i32} : (tensor<48x197x197xf32>) -> tensor<48x197x1xf32>
    %501 = tosa.mul %global306, %global306 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %502 = tosa.negate %501 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %503 = tosa.reciprocal %502 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %504 = tosa.mul %503, %500 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %505 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%504 : tensor<48x197x1xf32>) outs(%cst_0 : tensor<48x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<48x197x197xf32>
    %506 = tosa.add %498, %505 : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %507 = tosa.mul %global305, %506 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %508 = tosa.mul %global20, %507 {shift = 0 : i8} : (tensor<f32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %509 = tosa.matmul %508, %38 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %510 = tosa.add %497, %509 : (tensor<48x197x64xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %511 = tosa.matmul %494, %508 : (tensor<48x64x197xf32>, tensor<48x197x197xf32>) -> tensor<48x64x197xf32>
    %512 = tosa.transpose %511, %13 : (tensor<48x64x197xf32>, tensor<3xi64>) -> tensor<48x197x64xf32>
    %513 = tosa.add %510, %512 : (tensor<48x197x64xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %514 = tosa.reshape %513 {new_shape = array<i64: 4, 12, 197, 64>} : (tensor<48x197x64xf32>) -> tensor<4x12x197x64xf32>
    %515 = tosa.transpose %514, %15 : (tensor<4x12x197x64xf32>, tensor<4xi64>) -> tensor<4x197x12x64xf32>
    %516 = tosa.reshape %515 {new_shape = array<i64: 4, 197, 768>} : (tensor<4x197x12x64xf32>) -> tensor<4x197x768xf32>
    %517 = tosa.matmul %516, %4 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %518 = tosa.mul %517, %12 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %519 = tosa.mul %global297, %518 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %520 = tosa.mul %global292, %518 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %521 = tosa.reduce_sum %520 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %522 = tosa.pow %global296, %9 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %523 = tosa.mul %522, %10 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %524 = tosa.mul %523, %521 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    %525 = tosa.mul %524, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %526 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%525 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %527 = tosa.mul %global292, %526 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %528 = tosa.add %519, %527 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %529 = tosa.add %528, %527 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %530 = tosa.add %489, %529 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %531 = tosa.negate %529 : (tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %532 = tosa.reduce_sum %531 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %533 = tosa.mul %532, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %534 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%533 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %535 = tosa.add %530, %534 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %536 = tosa.matmul %535, %8 : (tensor<4x197x768xf32>, tensor<4x768x3072xf32>) -> tensor<4x197x3072xf32>
    %537 = tosa.mul %global285, %536 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %538 = tosa.mul %global279, %536 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %539 = tosa.mul %global284, %global284 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %540 = tosa.sub %7, %539 : (tensor<f32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %541 = tosa.mul %540, %538 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %542 = tosa.mul %global44, %541 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %543 = tosa.pow %global278, %6 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %544 = tosa.mul %543, %17 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %545 = tosa.add %542, %544 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %546 = tosa.mul %537, %16 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %547 = tosa.add %545, %546 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %548 = tosa.matmul %547, %5 : (tensor<4x197x3072xf32>, tensor<4x3072x768xf32>) -> tensor<4x197x768xf32>
    %549 = tosa.mul %548, %12 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %550 = tosa.mul %global273, %549 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %551 = tosa.mul %global268, %549 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %552 = tosa.reduce_sum %551 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %553 = tosa.pow %global272, %9 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %554 = tosa.mul %553, %10 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %555 = tosa.mul %554, %552 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    %556 = tosa.mul %555, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %557 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%556 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %558 = tosa.mul %global268, %557 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %559 = tosa.add %550, %558 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %560 = tosa.add %559, %558 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %561 = tosa.add %535, %560 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %562 = tosa.negate %560 : (tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %563 = tosa.reduce_sum %562 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %564 = tosa.mul %563, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %565 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%564 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %566 = tosa.add %561, %565 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %567 = tosa.matmul %566, %4 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %568 = tosa.reshape %567 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %569 = tosa.transpose %568, %15 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %570 = tosa.reshape %569 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %571 = tosa.transpose %35, %3 : (tensor<48x197x64xf32>, tensor<3xi32>) -> tensor<48x64x197xf32>
    %572 = tosa.matmul %570, %571 : (tensor<48x197x64xf32>, tensor<48x64x197xf32>) -> tensor<48x197x197xf32>
    %573 = tosa.transpose %global261, %3 : (tensor<48x197x197xf32>, tensor<3xi32>) -> tensor<48x197x197xf32>
    %574 = tosa.matmul %573, %570 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %575 = tosa.mul %global260, %572 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %576 = tosa.mul %global258, %572 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %577 = tosa.reduce_sum %576 {axis = 2 : i32} : (tensor<48x197x197xf32>) -> tensor<48x197x1xf32>
    %578 = tosa.mul %global259, %global259 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %579 = tosa.negate %578 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %580 = tosa.reciprocal %579 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %581 = tosa.mul %580, %577 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %582 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%581 : tensor<48x197x1xf32>) outs(%cst_0 : tensor<48x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<48x197x197xf32>
    %583 = tosa.add %575, %582 : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %584 = tosa.mul %global258, %583 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %585 = tosa.mul %global20, %584 {shift = 0 : i8} : (tensor<f32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %586 = tosa.matmul %585, %35 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %587 = tosa.add %574, %586 : (tensor<48x197x64xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %588 = tosa.matmul %571, %585 : (tensor<48x64x197xf32>, tensor<48x197x197xf32>) -> tensor<48x64x197xf32>
    %589 = tosa.transpose %588, %13 : (tensor<48x64x197xf32>, tensor<3xi64>) -> tensor<48x197x64xf32>
    %590 = tosa.add %587, %589 : (tensor<48x197x64xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %591 = tosa.reshape %590 {new_shape = array<i64: 4, 12, 197, 64>} : (tensor<48x197x64xf32>) -> tensor<4x12x197x64xf32>
    %592 = tosa.transpose %591, %15 : (tensor<4x12x197x64xf32>, tensor<4xi64>) -> tensor<4x197x12x64xf32>
    %593 = tosa.reshape %592 {new_shape = array<i64: 4, 197, 768>} : (tensor<4x197x12x64xf32>) -> tensor<4x197x768xf32>
    %594 = tosa.matmul %593, %4 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %595 = tosa.mul %594, %12 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %596 = tosa.mul %global250, %595 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %597 = tosa.mul %global245, %595 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %598 = tosa.reduce_sum %597 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %599 = tosa.pow %global249, %9 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %600 = tosa.mul %599, %10 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %601 = tosa.mul %600, %598 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    %602 = tosa.mul %601, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %603 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%602 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %604 = tosa.mul %global245, %603 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %605 = tosa.add %596, %604 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %606 = tosa.add %605, %604 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %607 = tosa.add %566, %606 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %608 = tosa.negate %606 : (tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %609 = tosa.reduce_sum %608 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %610 = tosa.mul %609, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %611 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%610 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %612 = tosa.add %607, %611 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %613 = tosa.matmul %612, %8 : (tensor<4x197x768xf32>, tensor<4x768x3072xf32>) -> tensor<4x197x3072xf32>
    %614 = tosa.mul %global238, %613 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %615 = tosa.mul %global232, %613 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %616 = tosa.mul %global237, %global237 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %617 = tosa.sub %7, %616 : (tensor<f32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %618 = tosa.mul %617, %615 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %619 = tosa.mul %global44, %618 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %620 = tosa.pow %global231, %6 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %621 = tosa.mul %620, %17 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %622 = tosa.add %619, %621 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %623 = tosa.mul %614, %16 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %624 = tosa.add %622, %623 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %625 = tosa.matmul %624, %5 : (tensor<4x197x3072xf32>, tensor<4x3072x768xf32>) -> tensor<4x197x768xf32>
    %626 = tosa.mul %625, %12 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %627 = tosa.mul %global226, %626 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %628 = tosa.mul %global221, %626 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %629 = tosa.reduce_sum %628 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %630 = tosa.pow %global225, %9 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %631 = tosa.mul %630, %10 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %632 = tosa.mul %631, %629 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    %633 = tosa.mul %632, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %634 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%633 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %635 = tosa.mul %global221, %634 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %636 = tosa.add %627, %635 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %637 = tosa.add %636, %635 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %638 = tosa.add %612, %637 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %639 = tosa.negate %637 : (tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %640 = tosa.reduce_sum %639 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %641 = tosa.mul %640, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %642 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%641 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %643 = tosa.add %638, %642 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %644 = tosa.matmul %643, %4 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %645 = tosa.reshape %644 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %646 = tosa.transpose %645, %15 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %647 = tosa.reshape %646 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %648 = tosa.transpose %32, %3 : (tensor<48x197x64xf32>, tensor<3xi32>) -> tensor<48x64x197xf32>
    %649 = tosa.matmul %647, %648 : (tensor<48x197x64xf32>, tensor<48x64x197xf32>) -> tensor<48x197x197xf32>
    %650 = tosa.transpose %global214, %3 : (tensor<48x197x197xf32>, tensor<3xi32>) -> tensor<48x197x197xf32>
    %651 = tosa.matmul %650, %647 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %652 = tosa.mul %global213, %649 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %653 = tosa.mul %global211, %649 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %654 = tosa.reduce_sum %653 {axis = 2 : i32} : (tensor<48x197x197xf32>) -> tensor<48x197x1xf32>
    %655 = tosa.mul %global212, %global212 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %656 = tosa.negate %655 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %657 = tosa.reciprocal %656 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %658 = tosa.mul %657, %654 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %659 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%658 : tensor<48x197x1xf32>) outs(%cst_0 : tensor<48x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<48x197x197xf32>
    %660 = tosa.add %652, %659 : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %661 = tosa.mul %global211, %660 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %662 = tosa.mul %global20, %661 {shift = 0 : i8} : (tensor<f32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %663 = tosa.matmul %662, %32 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %664 = tosa.add %651, %663 : (tensor<48x197x64xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %665 = tosa.matmul %648, %662 : (tensor<48x64x197xf32>, tensor<48x197x197xf32>) -> tensor<48x64x197xf32>
    %666 = tosa.transpose %665, %13 : (tensor<48x64x197xf32>, tensor<3xi64>) -> tensor<48x197x64xf32>
    %667 = tosa.add %664, %666 : (tensor<48x197x64xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %668 = tosa.reshape %667 {new_shape = array<i64: 4, 12, 197, 64>} : (tensor<48x197x64xf32>) -> tensor<4x12x197x64xf32>
    %669 = tosa.transpose %668, %15 : (tensor<4x12x197x64xf32>, tensor<4xi64>) -> tensor<4x197x12x64xf32>
    %670 = tosa.reshape %669 {new_shape = array<i64: 4, 197, 768>} : (tensor<4x197x12x64xf32>) -> tensor<4x197x768xf32>
    %671 = tosa.matmul %670, %4 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %672 = tosa.mul %671, %12 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %673 = tosa.mul %global203, %672 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %674 = tosa.mul %global198, %672 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %675 = tosa.reduce_sum %674 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %676 = tosa.pow %global202, %9 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %677 = tosa.mul %676, %10 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %678 = tosa.mul %677, %675 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    %679 = tosa.mul %678, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %680 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%679 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %681 = tosa.mul %global198, %680 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %682 = tosa.add %673, %681 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %683 = tosa.add %682, %681 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %684 = tosa.add %643, %683 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %685 = tosa.negate %683 : (tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %686 = tosa.reduce_sum %685 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %687 = tosa.mul %686, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %688 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%687 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %689 = tosa.add %684, %688 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %690 = tosa.matmul %689, %8 : (tensor<4x197x768xf32>, tensor<4x768x3072xf32>) -> tensor<4x197x3072xf32>
    %691 = tosa.mul %global191, %690 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %692 = tosa.mul %global185, %690 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %693 = tosa.mul %global190, %global190 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %694 = tosa.sub %7, %693 : (tensor<f32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %695 = tosa.mul %694, %692 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %696 = tosa.mul %global44, %695 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %697 = tosa.pow %global184, %6 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %698 = tosa.mul %697, %17 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %699 = tosa.add %696, %698 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %700 = tosa.mul %691, %16 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %701 = tosa.add %699, %700 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %702 = tosa.matmul %701, %5 : (tensor<4x197x3072xf32>, tensor<4x3072x768xf32>) -> tensor<4x197x768xf32>
    %703 = tosa.mul %702, %12 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %704 = tosa.mul %global179, %703 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %705 = tosa.mul %global174, %703 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %706 = tosa.reduce_sum %705 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %707 = tosa.pow %global178, %9 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %708 = tosa.mul %707, %10 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %709 = tosa.mul %708, %706 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    %710 = tosa.mul %709, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %711 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%710 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %712 = tosa.mul %global174, %711 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %713 = tosa.add %704, %712 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %714 = tosa.add %713, %712 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %715 = tosa.add %689, %714 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %716 = tosa.negate %714 : (tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %717 = tosa.reduce_sum %716 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %718 = tosa.mul %717, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %719 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%718 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %720 = tosa.add %715, %719 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %721 = tosa.matmul %720, %4 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %722 = tosa.reshape %721 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %723 = tosa.transpose %722, %15 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %724 = tosa.reshape %723 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %725 = tosa.transpose %29, %3 : (tensor<48x197x64xf32>, tensor<3xi32>) -> tensor<48x64x197xf32>
    %726 = tosa.matmul %724, %725 : (tensor<48x197x64xf32>, tensor<48x64x197xf32>) -> tensor<48x197x197xf32>
    %727 = tosa.transpose %global167, %3 : (tensor<48x197x197xf32>, tensor<3xi32>) -> tensor<48x197x197xf32>
    %728 = tosa.matmul %727, %724 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %729 = tosa.mul %global166, %726 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %730 = tosa.mul %global164, %726 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %731 = tosa.reduce_sum %730 {axis = 2 : i32} : (tensor<48x197x197xf32>) -> tensor<48x197x1xf32>
    %732 = tosa.mul %global165, %global165 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %733 = tosa.negate %732 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %734 = tosa.reciprocal %733 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %735 = tosa.mul %734, %731 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %736 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%735 : tensor<48x197x1xf32>) outs(%cst_0 : tensor<48x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<48x197x197xf32>
    %737 = tosa.add %729, %736 : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %738 = tosa.mul %global164, %737 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %739 = tosa.mul %global20, %738 {shift = 0 : i8} : (tensor<f32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %740 = tosa.matmul %739, %29 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %741 = tosa.add %728, %740 : (tensor<48x197x64xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %742 = tosa.matmul %725, %739 : (tensor<48x64x197xf32>, tensor<48x197x197xf32>) -> tensor<48x64x197xf32>
    %743 = tosa.transpose %742, %13 : (tensor<48x64x197xf32>, tensor<3xi64>) -> tensor<48x197x64xf32>
    %744 = tosa.add %741, %743 : (tensor<48x197x64xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %745 = tosa.reshape %744 {new_shape = array<i64: 4, 12, 197, 64>} : (tensor<48x197x64xf32>) -> tensor<4x12x197x64xf32>
    %746 = tosa.transpose %745, %15 : (tensor<4x12x197x64xf32>, tensor<4xi64>) -> tensor<4x197x12x64xf32>
    %747 = tosa.reshape %746 {new_shape = array<i64: 4, 197, 768>} : (tensor<4x197x12x64xf32>) -> tensor<4x197x768xf32>
    %748 = tosa.matmul %747, %4 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %749 = tosa.mul %748, %12 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %750 = tosa.mul %global156, %749 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %751 = tosa.mul %global151, %749 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %752 = tosa.reduce_sum %751 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %753 = tosa.pow %global155, %9 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %754 = tosa.mul %753, %10 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %755 = tosa.mul %754, %752 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    %756 = tosa.mul %755, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %757 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%756 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %758 = tosa.mul %global151, %757 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %759 = tosa.add %750, %758 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %760 = tosa.add %759, %758 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %761 = tosa.add %720, %760 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %762 = tosa.negate %760 : (tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %763 = tosa.reduce_sum %762 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %764 = tosa.mul %763, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %765 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%764 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %766 = tosa.add %761, %765 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %767 = tosa.matmul %766, %8 : (tensor<4x197x768xf32>, tensor<4x768x3072xf32>) -> tensor<4x197x3072xf32>
    %768 = tosa.mul %global144, %767 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %769 = tosa.mul %global138, %767 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %770 = tosa.mul %global143, %global143 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %771 = tosa.sub %7, %770 : (tensor<f32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %772 = tosa.mul %771, %769 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %773 = tosa.mul %global44, %772 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %774 = tosa.pow %global137, %6 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %775 = tosa.mul %774, %17 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %776 = tosa.add %773, %775 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %777 = tosa.mul %768, %16 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %778 = tosa.add %776, %777 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %779 = tosa.matmul %778, %5 : (tensor<4x197x3072xf32>, tensor<4x3072x768xf32>) -> tensor<4x197x768xf32>
    %780 = tosa.mul %779, %12 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %781 = tosa.mul %global132, %780 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %782 = tosa.mul %global127, %780 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %783 = tosa.reduce_sum %782 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %784 = tosa.pow %global131, %9 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %785 = tosa.mul %784, %10 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %786 = tosa.mul %785, %783 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    %787 = tosa.mul %786, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %788 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%787 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %789 = tosa.mul %global127, %788 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %790 = tosa.add %781, %789 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %791 = tosa.add %790, %789 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %792 = tosa.add %766, %791 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %793 = tosa.negate %791 : (tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %794 = tosa.reduce_sum %793 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %795 = tosa.mul %794, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %796 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%795 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %797 = tosa.add %792, %796 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %798 = tosa.matmul %797, %4 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %799 = tosa.reshape %798 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %800 = tosa.transpose %799, %15 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %801 = tosa.reshape %800 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %802 = tosa.transpose %26, %3 : (tensor<48x197x64xf32>, tensor<3xi32>) -> tensor<48x64x197xf32>
    %803 = tosa.matmul %801, %802 : (tensor<48x197x64xf32>, tensor<48x64x197xf32>) -> tensor<48x197x197xf32>
    %804 = tosa.transpose %global120, %3 : (tensor<48x197x197xf32>, tensor<3xi32>) -> tensor<48x197x197xf32>
    %805 = tosa.matmul %804, %801 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %806 = tosa.mul %global119, %803 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %807 = tosa.mul %global117, %803 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %808 = tosa.reduce_sum %807 {axis = 2 : i32} : (tensor<48x197x197xf32>) -> tensor<48x197x1xf32>
    %809 = tosa.mul %global118, %global118 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %810 = tosa.negate %809 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %811 = tosa.reciprocal %810 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %812 = tosa.mul %811, %808 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %813 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%812 : tensor<48x197x1xf32>) outs(%cst_0 : tensor<48x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<48x197x197xf32>
    %814 = tosa.add %806, %813 : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %815 = tosa.mul %global117, %814 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %816 = tosa.mul %global20, %815 {shift = 0 : i8} : (tensor<f32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %817 = tosa.matmul %816, %26 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %818 = tosa.add %805, %817 : (tensor<48x197x64xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %819 = tosa.matmul %802, %816 : (tensor<48x64x197xf32>, tensor<48x197x197xf32>) -> tensor<48x64x197xf32>
    %820 = tosa.transpose %819, %13 : (tensor<48x64x197xf32>, tensor<3xi64>) -> tensor<48x197x64xf32>
    %821 = tosa.add %818, %820 : (tensor<48x197x64xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %822 = tosa.reshape %821 {new_shape = array<i64: 4, 12, 197, 64>} : (tensor<48x197x64xf32>) -> tensor<4x12x197x64xf32>
    %823 = tosa.transpose %822, %15 : (tensor<4x12x197x64xf32>, tensor<4xi64>) -> tensor<4x197x12x64xf32>
    %824 = tosa.reshape %823 {new_shape = array<i64: 4, 197, 768>} : (tensor<4x197x12x64xf32>) -> tensor<4x197x768xf32>
    %825 = tosa.matmul %824, %4 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %826 = tosa.mul %825, %12 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %827 = tosa.mul %global109, %826 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %828 = tosa.mul %global104, %826 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %829 = tosa.reduce_sum %828 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %830 = tosa.pow %global108, %9 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %831 = tosa.mul %830, %10 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %832 = tosa.mul %831, %829 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    %833 = tosa.mul %832, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %834 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%833 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %835 = tosa.mul %global104, %834 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %836 = tosa.add %827, %835 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %837 = tosa.add %836, %835 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %838 = tosa.add %797, %837 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %839 = tosa.negate %837 : (tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %840 = tosa.reduce_sum %839 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %841 = tosa.mul %840, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %842 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%841 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %843 = tosa.add %838, %842 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %844 = tosa.matmul %843, %8 : (tensor<4x197x768xf32>, tensor<4x768x3072xf32>) -> tensor<4x197x3072xf32>
    %845 = tosa.mul %global97, %844 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %846 = tosa.mul %global91, %844 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %847 = tosa.mul %global96, %global96 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %848 = tosa.sub %7, %847 : (tensor<f32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %849 = tosa.mul %848, %846 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %850 = tosa.mul %global44, %849 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %851 = tosa.pow %global90, %6 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %852 = tosa.mul %851, %17 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %853 = tosa.add %850, %852 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %854 = tosa.mul %845, %16 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %855 = tosa.add %853, %854 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %856 = tosa.matmul %855, %5 : (tensor<4x197x3072xf32>, tensor<4x3072x768xf32>) -> tensor<4x197x768xf32>
    %857 = tosa.mul %856, %12 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %858 = tosa.mul %global85, %857 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %859 = tosa.mul %global80, %857 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %860 = tosa.reduce_sum %859 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %861 = tosa.pow %global84, %9 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %862 = tosa.mul %861, %10 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %863 = tosa.mul %862, %860 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    %864 = tosa.mul %863, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %865 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%864 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %866 = tosa.mul %global80, %865 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %867 = tosa.add %858, %866 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %868 = tosa.add %867, %866 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %869 = tosa.add %843, %868 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %870 = tosa.negate %868 : (tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %871 = tosa.reduce_sum %870 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %872 = tosa.mul %871, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %873 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%872 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %874 = tosa.add %869, %873 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %875 = tosa.matmul %874, %4 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %876 = tosa.reshape %875 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %877 = tosa.transpose %876, %15 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %878 = tosa.reshape %877 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %879 = tosa.transpose %23, %3 : (tensor<48x197x64xf32>, tensor<3xi32>) -> tensor<48x64x197xf32>
    %880 = tosa.matmul %878, %879 : (tensor<48x197x64xf32>, tensor<48x64x197xf32>) -> tensor<48x197x197xf32>
    %881 = tosa.transpose %global73, %3 : (tensor<48x197x197xf32>, tensor<3xi32>) -> tensor<48x197x197xf32>
    %882 = tosa.matmul %881, %878 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %883 = tosa.mul %global72, %880 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %884 = tosa.mul %global70, %880 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %885 = tosa.reduce_sum %884 {axis = 2 : i32} : (tensor<48x197x197xf32>) -> tensor<48x197x1xf32>
    %886 = tosa.mul %global71, %global71 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %887 = tosa.negate %886 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %888 = tosa.reciprocal %887 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %889 = tosa.mul %888, %885 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %890 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%889 : tensor<48x197x1xf32>) outs(%cst_0 : tensor<48x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<48x197x197xf32>
    %891 = tosa.add %883, %890 : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %892 = tosa.mul %global70, %891 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %893 = tosa.mul %global20, %892 {shift = 0 : i8} : (tensor<f32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %894 = tosa.matmul %893, %23 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %895 = tosa.add %882, %894 : (tensor<48x197x64xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %896 = tosa.matmul %879, %893 : (tensor<48x64x197xf32>, tensor<48x197x197xf32>) -> tensor<48x64x197xf32>
    %897 = tosa.transpose %896, %13 : (tensor<48x64x197xf32>, tensor<3xi64>) -> tensor<48x197x64xf32>
    %898 = tosa.add %895, %897 : (tensor<48x197x64xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %899 = tosa.reshape %898 {new_shape = array<i64: 4, 12, 197, 64>} : (tensor<48x197x64xf32>) -> tensor<4x12x197x64xf32>
    %900 = tosa.transpose %899, %15 : (tensor<4x12x197x64xf32>, tensor<4xi64>) -> tensor<4x197x12x64xf32>
    %901 = tosa.reshape %900 {new_shape = array<i64: 4, 197, 768>} : (tensor<4x197x12x64xf32>) -> tensor<4x197x768xf32>
    %902 = tosa.matmul %901, %4 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %903 = tosa.mul %902, %12 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %904 = tosa.mul %global62, %903 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %905 = tosa.mul %global57, %903 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %906 = tosa.reduce_sum %905 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %907 = tosa.pow %global61, %9 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %908 = tosa.mul %907, %10 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %909 = tosa.mul %908, %906 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    %910 = tosa.mul %909, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %911 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%910 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %912 = tosa.mul %global57, %911 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %913 = tosa.add %904, %912 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %914 = tosa.add %913, %912 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %915 = tosa.add %874, %914 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %916 = tosa.negate %914 : (tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %917 = tosa.reduce_sum %916 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %918 = tosa.mul %917, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %919 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%918 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %920 = tosa.add %915, %919 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %921 = tosa.matmul %920, %8 : (tensor<4x197x768xf32>, tensor<4x768x3072xf32>) -> tensor<4x197x3072xf32>
    %922 = tosa.mul %global50, %921 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %923 = tosa.mul %global43, %921 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %924 = tosa.mul %global49, %global49 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %925 = tosa.sub %7, %924 : (tensor<f32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %926 = tosa.mul %925, %923 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %927 = tosa.mul %global44, %926 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %928 = tosa.pow %global42, %6 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %929 = tosa.mul %928, %17 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %930 = tosa.add %927, %929 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %931 = tosa.mul %922, %16 {shift = 0 : i8} : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %932 = tosa.add %930, %931 : (tensor<4x197x3072xf32>, tensor<4x197x3072xf32>) -> tensor<4x197x3072xf32>
    %933 = tosa.matmul %932, %5 : (tensor<4x197x3072xf32>, tensor<4x3072x768xf32>) -> tensor<4x197x768xf32>
    %934 = tosa.mul %933, %12 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %935 = tosa.mul %global37, %934 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %936 = tosa.mul %global32, %934 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %937 = tosa.reduce_sum %936 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %938 = tosa.pow %global36, %9 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %939 = tosa.mul %938, %10 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %940 = tosa.mul %939, %937 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    %941 = tosa.mul %940, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %942 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%941 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %943 = tosa.mul %global32, %942 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %944 = tosa.add %935, %943 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %945 = tosa.add %944, %943 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %946 = tosa.add %920, %945 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %947 = tosa.negate %945 : (tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %948 = tosa.reduce_sum %947 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %949 = tosa.mul %948, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %950 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%949 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %951 = tosa.add %946, %950 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %952 = tosa.matmul %951, %4 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %953 = tosa.reshape %952 {new_shape = array<i64: 4, 197, 12, 64>} : (tensor<4x197x768xf32>) -> tensor<4x197x12x64xf32>
    %954 = tosa.transpose %953, %15 : (tensor<4x197x12x64xf32>, tensor<4xi64>) -> tensor<4x12x197x64xf32>
    %955 = tosa.reshape %954 {new_shape = array<i64: 48, 197, 64>} : (tensor<4x12x197x64xf32>) -> tensor<48x197x64xf32>
    %956 = tosa.transpose %20, %3 : (tensor<48x197x64xf32>, tensor<3xi32>) -> tensor<48x64x197xf32>
    %957 = tosa.matmul %955, %956 : (tensor<48x197x64xf32>, tensor<48x64x197xf32>) -> tensor<48x197x197xf32>
    %958 = tosa.transpose %global25, %3 : (tensor<48x197x197xf32>, tensor<3xi32>) -> tensor<48x197x197xf32>
    %959 = tosa.matmul %958, %955 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %960 = tosa.mul %global24, %957 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %961 = tosa.mul %global22, %957 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %962 = tosa.reduce_sum %961 {axis = 2 : i32} : (tensor<48x197x197xf32>) -> tensor<48x197x1xf32>
    %963 = tosa.mul %global23, %global23 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %964 = tosa.negate %963 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %965 = tosa.reciprocal %964 : (tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %966 = tosa.mul %965, %962 {shift = 0 : i8} : (tensor<48x197x1xf32>, tensor<48x197x1xf32>) -> tensor<48x197x1xf32>
    %967 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%966 : tensor<48x197x1xf32>) outs(%cst_0 : tensor<48x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<48x197x197xf32>
    %968 = tosa.add %960, %967 : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %969 = tosa.mul %global22, %968 {shift = 0 : i8} : (tensor<48x197x197xf32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %970 = tosa.mul %global20, %969 {shift = 0 : i8} : (tensor<f32>, tensor<48x197x197xf32>) -> tensor<48x197x197xf32>
    %971 = tosa.matmul %970, %20 : (tensor<48x197x197xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %972 = tosa.add %959, %971 : (tensor<48x197x64xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %973 = tosa.matmul %956, %970 : (tensor<48x64x197xf32>, tensor<48x197x197xf32>) -> tensor<48x64x197xf32>
    %974 = tosa.transpose %973, %13 : (tensor<48x64x197xf32>, tensor<3xi64>) -> tensor<48x197x64xf32>
    %975 = tosa.add %972, %974 : (tensor<48x197x64xf32>, tensor<48x197x64xf32>) -> tensor<48x197x64xf32>
    %976 = tosa.reshape %975 {new_shape = array<i64: 4, 12, 197, 64>} : (tensor<48x197x64xf32>) -> tensor<4x12x197x64xf32>
    %977 = tosa.transpose %976, %15 : (tensor<4x12x197x64xf32>, tensor<4xi64>) -> tensor<4x197x12x64xf32>
    %978 = tosa.reshape %977 {new_shape = array<i64: 4, 197, 768>} : (tensor<4x197x12x64xf32>) -> tensor<4x197x768xf32>
    %979 = tosa.matmul %978, %4 : (tensor<4x197x768xf32>, tensor<4x768x768xf32>) -> tensor<4x197x768xf32>
    %980 = tosa.mul %979, %12 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<768xf32>) -> tensor<4x197x768xf32>
    %981 = tosa.mul %global13, %980 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %982 = tosa.mul %global8, %980 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %983 = tosa.reduce_sum %982 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %984 = tosa.pow %global12, %9 : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %985 = tosa.mul %984, %10 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %986 = tosa.mul %985, %983 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<4x197x1xf32>) -> tensor<4x197x1xf32>
    %987 = tosa.mul %986, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %988 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%987 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %989 = tosa.mul %global8, %988 {shift = 0 : i8} : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %990 = tosa.add %981, %989 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %991 = tosa.add %990, %989 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %992 = tosa.add %951, %991 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %993 = tosa.negate %991 : (tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %994 = tosa.reduce_sum %993 {axis = 2 : i32} : (tensor<4x197x768xf32>) -> tensor<4x197x1xf32>
    %995 = tosa.mul %994, %14 {shift = 0 : i8} : (tensor<4x197x1xf32>, tensor<f32>) -> tensor<4x197x1xf32>
    %996 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%995 : tensor<4x197x1xf32>) outs(%cst_1 : tensor<4x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x197x768xf32>
    %997 = tosa.add %992, %996 : (tensor<4x197x768xf32>, tensor<4x197x768xf32>) -> tensor<4x197x768xf32>
    %extracted_slice = tensor.extract_slice %997[0, 1, 0] [4, 196, 768] [4, 1, 1] : tensor<4x197x768xf32> to tensor<4x196x768xf32>
    %998 = tosa.transpose %extracted_slice, %13 : (tensor<4x196x768xf32>, tensor<3xi64>) -> tensor<4x768x196xf32>
    %999 = tosa.reshape %998 {new_shape = array<i64: 4, 768, 14, 14>} : (tensor<4x768x196xf32>) -> tensor<4x768x14x14xf32>
    %1000 = tosa.transpose %999, %2 : (tensor<4x768x14x14xf32>, tensor<4xi64>) -> tensor<4x14x14x768xf32>
    %1001 = tosa.transpose_conv2d %1000, %1, %cst {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 4, 224, 224, 3>, stride = array<i64: 16, 16>} : (tensor<4x14x14x768xf32>, tensor<3x16x16x768xf32>, tensor<3xf32>) -> tensor<4x224x224x3xf32>
    %1002 = tosa.transpose %1001, %0 : (tensor<4x224x224x3xf32>, tensor<4xi64>) -> tensor<4x3x224x224xf32>
    return %1002 : tensor<4x3x224x224xf32>
  }
}

