#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
module {
  ml_program.global private mutable @global579(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global578(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global574(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global567(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global566(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global561(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global560(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global555(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global554(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global550(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global543(dense<1.000000e+00> : tensor<12x197x197xf16>) : tensor<12x197x197xf16>
  ml_program.global private mutable @global542(dense<1.000000e+00> : tensor<12x197x1xf16>) : tensor<12x197x1xf16>
  ml_program.global private mutable @global541(dense<1.000000e+00> : tensor<12x197x1xf16>) : tensor<12x197x1xf16>
  ml_program.global private mutable @global540(dense<1.000000e+00> : tensor<12x197x197xf16>) : tensor<12x197x197xf16>
  ml_program.global private mutable @global537(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global532(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global531(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global527(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global520(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global519(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global514(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global513(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global508(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global507(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global503(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global496(dense<1.000000e+00> : tensor<12x197x197xf16>) : tensor<12x197x197xf16>
  ml_program.global private mutable @global495(dense<1.000000e+00> : tensor<12x197x1xf16>) : tensor<12x197x1xf16>
  ml_program.global private mutable @global494(dense<1.000000e+00> : tensor<12x197x1xf16>) : tensor<12x197x1xf16>
  ml_program.global private mutable @global493(dense<1.000000e+00> : tensor<12x197x197xf16>) : tensor<12x197x197xf16>
  ml_program.global private mutable @global490(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global485(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global484(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global480(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global473(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global472(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global467(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global466(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global461(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global460(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global456(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global449(dense<1.000000e+00> : tensor<12x197x197xf16>) : tensor<12x197x197xf16>
  ml_program.global private mutable @global448(dense<1.000000e+00> : tensor<12x197x1xf16>) : tensor<12x197x1xf16>
  ml_program.global private mutable @global447(dense<1.000000e+00> : tensor<12x197x1xf16>) : tensor<12x197x1xf16>
  ml_program.global private mutable @global446(dense<1.000000e+00> : tensor<12x197x197xf16>) : tensor<12x197x197xf16>
  ml_program.global private mutable @global443(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global438(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global437(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global433(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global426(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global425(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global420(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global419(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global414(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global413(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global409(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global402(dense<1.000000e+00> : tensor<12x197x197xf16>) : tensor<12x197x197xf16>
  ml_program.global private mutable @global401(dense<1.000000e+00> : tensor<12x197x1xf16>) : tensor<12x197x1xf16>
  ml_program.global private mutable @global400(dense<1.000000e+00> : tensor<12x197x1xf16>) : tensor<12x197x1xf16>
  ml_program.global private mutable @global399(dense<1.000000e+00> : tensor<12x197x197xf16>) : tensor<12x197x197xf16>
  ml_program.global private mutable @global396(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global391(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global390(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global386(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global379(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global378(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global373(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global372(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global367(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global366(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global362(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global355(dense<1.000000e+00> : tensor<12x197x197xf16>) : tensor<12x197x197xf16>
  ml_program.global private mutable @global354(dense<1.000000e+00> : tensor<12x197x1xf16>) : tensor<12x197x1xf16>
  ml_program.global private mutable @global353(dense<1.000000e+00> : tensor<12x197x1xf16>) : tensor<12x197x1xf16>
  ml_program.global private mutable @global352(dense<1.000000e+00> : tensor<12x197x197xf16>) : tensor<12x197x197xf16>
  ml_program.global private mutable @global349(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global344(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global343(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global339(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global332(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global331(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global326(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global325(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global320(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global319(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global315(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global308(dense<1.000000e+00> : tensor<12x197x197xf16>) : tensor<12x197x197xf16>
  ml_program.global private mutable @global307(dense<1.000000e+00> : tensor<12x197x1xf16>) : tensor<12x197x1xf16>
  ml_program.global private mutable @global306(dense<1.000000e+00> : tensor<12x197x1xf16>) : tensor<12x197x1xf16>
  ml_program.global private mutable @global305(dense<1.000000e+00> : tensor<12x197x197xf16>) : tensor<12x197x197xf16>
  ml_program.global private mutable @global302(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global297(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global296(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global292(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global285(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global284(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global279(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global278(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global273(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global272(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global268(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global261(dense<1.000000e+00> : tensor<12x197x197xf16>) : tensor<12x197x197xf16>
  ml_program.global private mutable @global260(dense<1.000000e+00> : tensor<12x197x1xf16>) : tensor<12x197x1xf16>
  ml_program.global private mutable @global259(dense<1.000000e+00> : tensor<12x197x1xf16>) : tensor<12x197x1xf16>
  ml_program.global private mutable @global258(dense<1.000000e+00> : tensor<12x197x197xf16>) : tensor<12x197x197xf16>
  ml_program.global private mutable @global255(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global250(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global249(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global245(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global238(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global237(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global232(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global231(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global226(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global225(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global221(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global214(dense<1.000000e+00> : tensor<12x197x197xf16>) : tensor<12x197x197xf16>
  ml_program.global private mutable @global213(dense<1.000000e+00> : tensor<12x197x1xf16>) : tensor<12x197x1xf16>
  ml_program.global private mutable @global212(dense<1.000000e+00> : tensor<12x197x1xf16>) : tensor<12x197x1xf16>
  ml_program.global private mutable @global211(dense<1.000000e+00> : tensor<12x197x197xf16>) : tensor<12x197x197xf16>
  ml_program.global private mutable @global208(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global203(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global202(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global198(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global191(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global190(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global185(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global184(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global179(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global178(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global174(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global167(dense<1.000000e+00> : tensor<12x197x197xf16>) : tensor<12x197x197xf16>
  ml_program.global private mutable @global166(dense<1.000000e+00> : tensor<12x197x1xf16>) : tensor<12x197x1xf16>
  ml_program.global private mutable @global165(dense<1.000000e+00> : tensor<12x197x1xf16>) : tensor<12x197x1xf16>
  ml_program.global private mutable @global164(dense<1.000000e+00> : tensor<12x197x197xf16>) : tensor<12x197x197xf16>
  ml_program.global private mutable @global161(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global156(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global155(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global151(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global144(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global143(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global138(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global137(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global132(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global131(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global127(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global120(dense<1.000000e+00> : tensor<12x197x197xf16>) : tensor<12x197x197xf16>
  ml_program.global private mutable @global119(dense<1.000000e+00> : tensor<12x197x1xf16>) : tensor<12x197x1xf16>
  ml_program.global private mutable @global118(dense<1.000000e+00> : tensor<12x197x1xf16>) : tensor<12x197x1xf16>
  ml_program.global private mutable @global117(dense<1.000000e+00> : tensor<12x197x197xf16>) : tensor<12x197x197xf16>
  ml_program.global private mutable @global114(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global109(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global108(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global104(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global97(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global96(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global91(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global90(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global85(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global84(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global80(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global73(dense<1.000000e+00> : tensor<12x197x197xf16>) : tensor<12x197x197xf16>
  ml_program.global private mutable @global72(dense<1.000000e+00> : tensor<12x197x1xf16>) : tensor<12x197x1xf16>
  ml_program.global private mutable @global71(dense<1.000000e+00> : tensor<12x197x1xf16>) : tensor<12x197x1xf16>
  ml_program.global private mutable @global70(dense<1.000000e+00> : tensor<12x197x197xf16>) : tensor<12x197x197xf16>
  ml_program.global private mutable @global67(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global62(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global61(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global57(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global50(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global49(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global44(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global43(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global42(dense<1.000000e+00> : tensor<1x197x3072xf16>) : tensor<1x197x3072xf16>
  ml_program.global private mutable @global37(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global36(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global32(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global25(dense<1.000000e+00> : tensor<12x197x197xf16>) : tensor<12x197x197xf16>
  ml_program.global private mutable @global24(dense<1.000000e+00> : tensor<12x197x1xf16>) : tensor<12x197x1xf16>
  ml_program.global private mutable @global23(dense<1.000000e+00> : tensor<12x197x1xf16>) : tensor<12x197x1xf16>
  ml_program.global private mutable @global22(dense<1.000000e+00> : tensor<12x197x197xf16>) : tensor<12x197x197xf16>
  ml_program.global private mutable @global20(dense<1.000000e+00> : tensor<f16>) : tensor<f16>
  ml_program.global private mutable @global18(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  ml_program.global private mutable @global13(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global12(dense<1.000000e+00> : tensor<1x197x1xf16>) : tensor<1x197x1xf16>
  ml_program.global private mutable @global8(dense<1.000000e+00> : tensor<1x197x768xf16>) : tensor<1x197x768xf16>
  func.func @forward(%arg0: tensor<1x3x224x224xf16>) -> tensor<1x1000xf16> {
    %cst = arith.constant dense<0.000000e+00> : tensor<1x197x768xf16>
    %0 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1000xf16>}> : () -> tensor<1000xf16>
    %1 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x768x1000xf16>}> : () -> tensor<1x768x1000xf16>
    %2 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x3072x768xf16>}> : () -> tensor<1x3072x768xf16>
    %3 = "tosa.const"() <{value = dense<3.000000e+00> : tensor<1x197x3072xf16>}> : () -> tensor<1x197x3072xf16>
    %4 = "tosa.const"() <{value = dense<4.471500e-02> : tensor<1x197x3072xf16>}> : () -> tensor<1x197x3072xf16>
    %5 = "tosa.const"() <{value = dense<1.57079637> : tensor<1x197x3072xf16>}> : () -> tensor<1x197x3072xf16>
    %6 = "tosa.const"() <{value = dense<5.000000e-01> : tensor<1x197x3072xf16>}> : () -> tensor<1x197x3072xf16>
    %7 = "tosa.const"() <{value = dense<1.000000e+00> : tensor<1x197x3072xf16>}> : () -> tensor<1x197x3072xf16>
    %8 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<3072xf16>}> : () -> tensor<3072xf16>
    %9 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x768x3072xf16>}> : () -> tensor<1x768x3072xf16>
    %10 = "tosa.const"() <{value = dense<6.400000e+01> : tensor<f16>}> : () -> tensor<f16>
    %11 = "tosa.const"() <{value = dense<[0, 2, 1, 3]> : tensor<4xi64>}> : () -> tensor<4xi64>
    %12 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x768x768xf16>}> : () -> tensor<1x768x768xf16>
    %13 = "tosa.const"() <{value = dense<9.99999997E-7> : tensor<f16>}> : () -> tensor<f16>
    %14 = "tosa.const"() <{value = dense<0.00130208337> : tensor<f16>}> : () -> tensor<f16>
    %15 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x197x768xf16>}> : () -> tensor<1x197x768xf16>
    %16 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x1x768xf16>}> : () -> tensor<1x1x768xf16>
    %17 = "tosa.const"() <{value = dense<[0, 2, 1]> : tensor<3xi64>}> : () -> tensor<3xi64>
    %18 = "tosa.const"() <{value = dense<[0, 3, 1, 2]> : tensor<4xi64>}> : () -> tensor<4xi64>
    %19 = "tosa.const"() <{value = dense<[0, 2, 3, 1]> : tensor<4xi64>}> : () -> tensor<4xi64>
    %20 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<768xf16>}> : () -> tensor<768xf16>
    %21 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<768x16x16x3xf16>}> : () -> tensor<768x16x16x3xf16>
    %22 = tosa.transpose %arg0, %19 : (tensor<1x3x224x224xf16>, tensor<4xi64>) -> tensor<1x224x224x3xf16>
    %23 = tosa.conv2d %22, %21, %20 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 16, 16>} : (tensor<1x224x224x3xf16>, tensor<768x16x16x3xf16>, tensor<768xf16>) -> tensor<1x14x14x768xf16>
    %24 = tosa.transpose %23, %18 : (tensor<1x14x14x768xf16>, tensor<4xi64>) -> tensor<1x768x14x14xf16>
    %25 = tosa.reshape %24 {new_shape = array<i64: 1, 768, 196>} : (tensor<1x768x14x14xf16>) -> tensor<1x768x196xf16>
    %26 = tosa.transpose %25, %17 : (tensor<1x768x196xf16>, tensor<3xi64>) -> tensor<1x196x768xf16>
    %inserted_slice = tensor.insert_slice %16 into %cst[0, 0, 0] [1, 1, 768] [1, 1, 1] : tensor<1x1x768xf16> into tensor<1x197x768xf16>
    %inserted_slice_0 = tensor.insert_slice %26 into %inserted_slice[0, 1, 0] [1, 196, 768] [1, 1, 1] : tensor<1x196x768xf16> into tensor<1x197x768xf16>
    %27 = tosa.add %inserted_slice_0, %15 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %28 = tosa.reduce_sum %27 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %29 = tosa.mul %28, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %30 = tosa.sub %27, %29 : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global8 = %30 : tensor<1x197x768xf16>
    %31 = tosa.mul %30, %30 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %32 = tosa.reduce_sum %31 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %33 = tosa.mul %32, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %34 = tosa.add %33, %13 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global12 = %34 : tensor<1x197x1xf16>
    %35 = tosa.rsqrt %34 : (tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global13 = %35 : tensor<1x197x1xf16>
    %36 = tosa.mul %30, %35 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    %37 = tosa.mul %36, %20 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %38 = tosa.add %37, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %39 = tosa.matmul %38, %12 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %40 = tosa.add %39, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global18 = %40 : tensor<1x197x768xf16>
    %41 = tosa.reshape %40 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %42 = tosa.transpose %41, %11 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %43 = tosa.reshape %42 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %44 = tosa.transpose %43, %17 : (tensor<12x197x64xf16>, tensor<3xi64>) -> tensor<12x64x197xf16>
    %45 = tosa.matmul %43, %44 : (tensor<12x197x64xf16>, tensor<12x64x197xf16>) -> tensor<12x197x197xf16>
    %46 = tosa.rsqrt %10 : (tensor<f16>) -> tensor<f16>
    ml_program.global_store @global20 = %46 : tensor<f16>
    %47 = tosa.mul %45, %46 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<f16>) -> tensor<12x197x197xf16>
    %48 = tosa.exp %47 : (tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    ml_program.global_store @global22 = %48 : tensor<12x197x197xf16>
    %49 = tosa.reduce_sum %48 {axis = 2 : i32} : (tensor<12x197x197xf16>) -> tensor<12x197x1xf16>
    ml_program.global_store @global23 = %49 : tensor<12x197x1xf16>
    %50 = tosa.reciprocal %49 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    ml_program.global_store @global24 = %50 : tensor<12x197x1xf16>
    %51 = tosa.mul %48, %50 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x1xf16>) -> tensor<12x197x197xf16>
    ml_program.global_store @global25 = %51 : tensor<12x197x197xf16>
    %52 = tosa.matmul %51, %43 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %53 = tosa.reshape %52 {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf16>) -> tensor<1x12x197x64xf16>
    %54 = tosa.transpose %53, %11 : (tensor<1x12x197x64xf16>, tensor<4xi64>) -> tensor<1x197x12x64xf16>
    %55 = tosa.reshape %54 {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf16>) -> tensor<1x197x768xf16>
    %56 = tosa.matmul %55, %12 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %57 = tosa.add %56, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %58 = tosa.add %57, %27 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %59 = tosa.reduce_sum %58 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %60 = tosa.mul %59, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %61 = tosa.sub %58, %60 : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global32 = %61 : tensor<1x197x768xf16>
    %62 = tosa.mul %61, %61 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %63 = tosa.reduce_sum %62 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %64 = tosa.mul %63, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %65 = tosa.add %64, %13 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global36 = %65 : tensor<1x197x1xf16>
    %66 = tosa.rsqrt %65 : (tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global37 = %66 : tensor<1x197x1xf16>
    %67 = tosa.mul %61, %66 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    %68 = tosa.mul %67, %20 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %69 = tosa.add %68, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %70 = tosa.matmul %69, %9 : (tensor<1x197x768xf16>, tensor<1x768x3072xf16>) -> tensor<1x197x3072xf16>
    %71 = tosa.add %70, %8 : (tensor<1x197x3072xf16>, tensor<3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global42 = %71 : tensor<1x197x3072xf16>
    %72 = tosa.mul %71, %6 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global43 = %72 : tensor<1x197x3072xf16>
    %73 = tosa.rsqrt %5 : (tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global44 = %73 : tensor<1x197x3072xf16>
    %74 = tosa.pow %71, %3 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %75 = tosa.mul %74, %4 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %76 = tosa.add %71, %75 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %77 = tosa.mul %73, %76 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %78 = tosa.tanh %77 : (tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global49 = %78 : tensor<1x197x3072xf16>
    %79 = tosa.add %78, %7 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global50 = %79 : tensor<1x197x3072xf16>
    %80 = tosa.mul %72, %79 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %81 = tosa.matmul %80, %2 : (tensor<1x197x3072xf16>, tensor<1x3072x768xf16>) -> tensor<1x197x768xf16>
    %82 = tosa.add %81, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %83 = tosa.add %58, %82 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %84 = tosa.reduce_sum %83 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %85 = tosa.mul %84, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %86 = tosa.sub %83, %85 : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global57 = %86 : tensor<1x197x768xf16>
    %87 = tosa.mul %86, %86 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %88 = tosa.reduce_sum %87 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %89 = tosa.mul %88, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %90 = tosa.add %89, %13 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global61 = %90 : tensor<1x197x1xf16>
    %91 = tosa.rsqrt %90 : (tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global62 = %91 : tensor<1x197x1xf16>
    %92 = tosa.mul %86, %91 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    %93 = tosa.mul %92, %20 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %94 = tosa.add %93, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %95 = tosa.matmul %94, %12 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %96 = tosa.add %95, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global67 = %96 : tensor<1x197x768xf16>
    %97 = tosa.reshape %96 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %98 = tosa.transpose %97, %11 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %99 = tosa.reshape %98 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %100 = tosa.transpose %99, %17 : (tensor<12x197x64xf16>, tensor<3xi64>) -> tensor<12x64x197xf16>
    %101 = tosa.matmul %99, %100 : (tensor<12x197x64xf16>, tensor<12x64x197xf16>) -> tensor<12x197x197xf16>
    %102 = tosa.mul %101, %46 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<f16>) -> tensor<12x197x197xf16>
    %103 = tosa.exp %102 : (tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    ml_program.global_store @global70 = %103 : tensor<12x197x197xf16>
    %104 = tosa.reduce_sum %103 {axis = 2 : i32} : (tensor<12x197x197xf16>) -> tensor<12x197x1xf16>
    ml_program.global_store @global71 = %104 : tensor<12x197x1xf16>
    %105 = tosa.reciprocal %104 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    ml_program.global_store @global72 = %105 : tensor<12x197x1xf16>
    %106 = tosa.mul %103, %105 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x1xf16>) -> tensor<12x197x197xf16>
    ml_program.global_store @global73 = %106 : tensor<12x197x197xf16>
    %107 = tosa.matmul %106, %99 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %108 = tosa.reshape %107 {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf16>) -> tensor<1x12x197x64xf16>
    %109 = tosa.transpose %108, %11 : (tensor<1x12x197x64xf16>, tensor<4xi64>) -> tensor<1x197x12x64xf16>
    %110 = tosa.reshape %109 {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf16>) -> tensor<1x197x768xf16>
    %111 = tosa.matmul %110, %12 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %112 = tosa.add %111, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %113 = tosa.add %112, %83 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %114 = tosa.reduce_sum %113 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %115 = tosa.mul %114, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %116 = tosa.sub %113, %115 : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global80 = %116 : tensor<1x197x768xf16>
    %117 = tosa.mul %116, %116 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %118 = tosa.reduce_sum %117 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %119 = tosa.mul %118, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %120 = tosa.add %119, %13 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global84 = %120 : tensor<1x197x1xf16>
    %121 = tosa.rsqrt %120 : (tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global85 = %121 : tensor<1x197x1xf16>
    %122 = tosa.mul %116, %121 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    %123 = tosa.mul %122, %20 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %124 = tosa.add %123, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %125 = tosa.matmul %124, %9 : (tensor<1x197x768xf16>, tensor<1x768x3072xf16>) -> tensor<1x197x3072xf16>
    %126 = tosa.add %125, %8 : (tensor<1x197x3072xf16>, tensor<3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global90 = %126 : tensor<1x197x3072xf16>
    %127 = tosa.mul %126, %6 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global91 = %127 : tensor<1x197x3072xf16>
    %128 = tosa.pow %126, %3 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %129 = tosa.mul %128, %4 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %130 = tosa.add %126, %129 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %131 = tosa.mul %73, %130 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %132 = tosa.tanh %131 : (tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global96 = %132 : tensor<1x197x3072xf16>
    %133 = tosa.add %132, %7 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global97 = %133 : tensor<1x197x3072xf16>
    %134 = tosa.mul %127, %133 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %135 = tosa.matmul %134, %2 : (tensor<1x197x3072xf16>, tensor<1x3072x768xf16>) -> tensor<1x197x768xf16>
    %136 = tosa.add %135, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %137 = tosa.add %113, %136 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %138 = tosa.reduce_sum %137 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %139 = tosa.mul %138, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %140 = tosa.sub %137, %139 : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global104 = %140 : tensor<1x197x768xf16>
    %141 = tosa.mul %140, %140 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %142 = tosa.reduce_sum %141 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %143 = tosa.mul %142, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %144 = tosa.add %143, %13 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global108 = %144 : tensor<1x197x1xf16>
    %145 = tosa.rsqrt %144 : (tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global109 = %145 : tensor<1x197x1xf16>
    %146 = tosa.mul %140, %145 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    %147 = tosa.mul %146, %20 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %148 = tosa.add %147, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %149 = tosa.matmul %148, %12 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %150 = tosa.add %149, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global114 = %150 : tensor<1x197x768xf16>
    %151 = tosa.reshape %150 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %152 = tosa.transpose %151, %11 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %153 = tosa.reshape %152 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %154 = tosa.transpose %153, %17 : (tensor<12x197x64xf16>, tensor<3xi64>) -> tensor<12x64x197xf16>
    %155 = tosa.matmul %153, %154 : (tensor<12x197x64xf16>, tensor<12x64x197xf16>) -> tensor<12x197x197xf16>
    %156 = tosa.mul %155, %46 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<f16>) -> tensor<12x197x197xf16>
    %157 = tosa.exp %156 : (tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    ml_program.global_store @global117 = %157 : tensor<12x197x197xf16>
    %158 = tosa.reduce_sum %157 {axis = 2 : i32} : (tensor<12x197x197xf16>) -> tensor<12x197x1xf16>
    ml_program.global_store @global118 = %158 : tensor<12x197x1xf16>
    %159 = tosa.reciprocal %158 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    ml_program.global_store @global119 = %159 : tensor<12x197x1xf16>
    %160 = tosa.mul %157, %159 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x1xf16>) -> tensor<12x197x197xf16>
    ml_program.global_store @global120 = %160 : tensor<12x197x197xf16>
    %161 = tosa.matmul %160, %153 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %162 = tosa.reshape %161 {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf16>) -> tensor<1x12x197x64xf16>
    %163 = tosa.transpose %162, %11 : (tensor<1x12x197x64xf16>, tensor<4xi64>) -> tensor<1x197x12x64xf16>
    %164 = tosa.reshape %163 {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf16>) -> tensor<1x197x768xf16>
    %165 = tosa.matmul %164, %12 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %166 = tosa.add %165, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %167 = tosa.add %166, %137 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %168 = tosa.reduce_sum %167 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %169 = tosa.mul %168, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %170 = tosa.sub %167, %169 : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global127 = %170 : tensor<1x197x768xf16>
    %171 = tosa.mul %170, %170 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %172 = tosa.reduce_sum %171 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %173 = tosa.mul %172, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %174 = tosa.add %173, %13 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global131 = %174 : tensor<1x197x1xf16>
    %175 = tosa.rsqrt %174 : (tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global132 = %175 : tensor<1x197x1xf16>
    %176 = tosa.mul %170, %175 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    %177 = tosa.mul %176, %20 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %178 = tosa.add %177, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %179 = tosa.matmul %178, %9 : (tensor<1x197x768xf16>, tensor<1x768x3072xf16>) -> tensor<1x197x3072xf16>
    %180 = tosa.add %179, %8 : (tensor<1x197x3072xf16>, tensor<3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global137 = %180 : tensor<1x197x3072xf16>
    %181 = tosa.mul %180, %6 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global138 = %181 : tensor<1x197x3072xf16>
    %182 = tosa.pow %180, %3 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %183 = tosa.mul %182, %4 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %184 = tosa.add %180, %183 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %185 = tosa.mul %73, %184 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %186 = tosa.tanh %185 : (tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global143 = %186 : tensor<1x197x3072xf16>
    %187 = tosa.add %186, %7 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global144 = %187 : tensor<1x197x3072xf16>
    %188 = tosa.mul %181, %187 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %189 = tosa.matmul %188, %2 : (tensor<1x197x3072xf16>, tensor<1x3072x768xf16>) -> tensor<1x197x768xf16>
    %190 = tosa.add %189, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %191 = tosa.add %167, %190 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %192 = tosa.reduce_sum %191 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %193 = tosa.mul %192, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %194 = tosa.sub %191, %193 : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global151 = %194 : tensor<1x197x768xf16>
    %195 = tosa.mul %194, %194 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %196 = tosa.reduce_sum %195 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %197 = tosa.mul %196, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %198 = tosa.add %197, %13 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global155 = %198 : tensor<1x197x1xf16>
    %199 = tosa.rsqrt %198 : (tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global156 = %199 : tensor<1x197x1xf16>
    %200 = tosa.mul %194, %199 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    %201 = tosa.mul %200, %20 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %202 = tosa.add %201, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %203 = tosa.matmul %202, %12 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %204 = tosa.add %203, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global161 = %204 : tensor<1x197x768xf16>
    %205 = tosa.reshape %204 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %206 = tosa.transpose %205, %11 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %207 = tosa.reshape %206 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %208 = tosa.transpose %207, %17 : (tensor<12x197x64xf16>, tensor<3xi64>) -> tensor<12x64x197xf16>
    %209 = tosa.matmul %207, %208 : (tensor<12x197x64xf16>, tensor<12x64x197xf16>) -> tensor<12x197x197xf16>
    %210 = tosa.mul %209, %46 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<f16>) -> tensor<12x197x197xf16>
    %211 = tosa.exp %210 : (tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    ml_program.global_store @global164 = %211 : tensor<12x197x197xf16>
    %212 = tosa.reduce_sum %211 {axis = 2 : i32} : (tensor<12x197x197xf16>) -> tensor<12x197x1xf16>
    ml_program.global_store @global165 = %212 : tensor<12x197x1xf16>
    %213 = tosa.reciprocal %212 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    ml_program.global_store @global166 = %213 : tensor<12x197x1xf16>
    %214 = tosa.mul %211, %213 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x1xf16>) -> tensor<12x197x197xf16>
    ml_program.global_store @global167 = %214 : tensor<12x197x197xf16>
    %215 = tosa.matmul %214, %207 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %216 = tosa.reshape %215 {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf16>) -> tensor<1x12x197x64xf16>
    %217 = tosa.transpose %216, %11 : (tensor<1x12x197x64xf16>, tensor<4xi64>) -> tensor<1x197x12x64xf16>
    %218 = tosa.reshape %217 {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf16>) -> tensor<1x197x768xf16>
    %219 = tosa.matmul %218, %12 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %220 = tosa.add %219, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %221 = tosa.add %220, %191 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %222 = tosa.reduce_sum %221 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %223 = tosa.mul %222, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %224 = tosa.sub %221, %223 : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global174 = %224 : tensor<1x197x768xf16>
    %225 = tosa.mul %224, %224 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %226 = tosa.reduce_sum %225 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %227 = tosa.mul %226, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %228 = tosa.add %227, %13 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global178 = %228 : tensor<1x197x1xf16>
    %229 = tosa.rsqrt %228 : (tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global179 = %229 : tensor<1x197x1xf16>
    %230 = tosa.mul %224, %229 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    %231 = tosa.mul %230, %20 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %232 = tosa.add %231, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %233 = tosa.matmul %232, %9 : (tensor<1x197x768xf16>, tensor<1x768x3072xf16>) -> tensor<1x197x3072xf16>
    %234 = tosa.add %233, %8 : (tensor<1x197x3072xf16>, tensor<3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global184 = %234 : tensor<1x197x3072xf16>
    %235 = tosa.mul %234, %6 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global185 = %235 : tensor<1x197x3072xf16>
    %236 = tosa.pow %234, %3 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %237 = tosa.mul %236, %4 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %238 = tosa.add %234, %237 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %239 = tosa.mul %73, %238 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %240 = tosa.tanh %239 : (tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global190 = %240 : tensor<1x197x3072xf16>
    %241 = tosa.add %240, %7 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global191 = %241 : tensor<1x197x3072xf16>
    %242 = tosa.mul %235, %241 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %243 = tosa.matmul %242, %2 : (tensor<1x197x3072xf16>, tensor<1x3072x768xf16>) -> tensor<1x197x768xf16>
    %244 = tosa.add %243, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %245 = tosa.add %221, %244 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %246 = tosa.reduce_sum %245 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %247 = tosa.mul %246, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %248 = tosa.sub %245, %247 : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global198 = %248 : tensor<1x197x768xf16>
    %249 = tosa.mul %248, %248 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %250 = tosa.reduce_sum %249 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %251 = tosa.mul %250, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %252 = tosa.add %251, %13 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global202 = %252 : tensor<1x197x1xf16>
    %253 = tosa.rsqrt %252 : (tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global203 = %253 : tensor<1x197x1xf16>
    %254 = tosa.mul %248, %253 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    %255 = tosa.mul %254, %20 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %256 = tosa.add %255, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %257 = tosa.matmul %256, %12 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %258 = tosa.add %257, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global208 = %258 : tensor<1x197x768xf16>
    %259 = tosa.reshape %258 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %260 = tosa.transpose %259, %11 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %261 = tosa.reshape %260 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %262 = tosa.transpose %261, %17 : (tensor<12x197x64xf16>, tensor<3xi64>) -> tensor<12x64x197xf16>
    %263 = tosa.matmul %261, %262 : (tensor<12x197x64xf16>, tensor<12x64x197xf16>) -> tensor<12x197x197xf16>
    %264 = tosa.mul %263, %46 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<f16>) -> tensor<12x197x197xf16>
    %265 = tosa.exp %264 : (tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    ml_program.global_store @global211 = %265 : tensor<12x197x197xf16>
    %266 = tosa.reduce_sum %265 {axis = 2 : i32} : (tensor<12x197x197xf16>) -> tensor<12x197x1xf16>
    ml_program.global_store @global212 = %266 : tensor<12x197x1xf16>
    %267 = tosa.reciprocal %266 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    ml_program.global_store @global213 = %267 : tensor<12x197x1xf16>
    %268 = tosa.mul %265, %267 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x1xf16>) -> tensor<12x197x197xf16>
    ml_program.global_store @global214 = %268 : tensor<12x197x197xf16>
    %269 = tosa.matmul %268, %261 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %270 = tosa.reshape %269 {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf16>) -> tensor<1x12x197x64xf16>
    %271 = tosa.transpose %270, %11 : (tensor<1x12x197x64xf16>, tensor<4xi64>) -> tensor<1x197x12x64xf16>
    %272 = tosa.reshape %271 {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf16>) -> tensor<1x197x768xf16>
    %273 = tosa.matmul %272, %12 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %274 = tosa.add %273, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %275 = tosa.add %274, %245 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %276 = tosa.reduce_sum %275 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %277 = tosa.mul %276, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %278 = tosa.sub %275, %277 : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global221 = %278 : tensor<1x197x768xf16>
    %279 = tosa.mul %278, %278 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %280 = tosa.reduce_sum %279 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %281 = tosa.mul %280, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %282 = tosa.add %281, %13 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global225 = %282 : tensor<1x197x1xf16>
    %283 = tosa.rsqrt %282 : (tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global226 = %283 : tensor<1x197x1xf16>
    %284 = tosa.mul %278, %283 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    %285 = tosa.mul %284, %20 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %286 = tosa.add %285, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %287 = tosa.matmul %286, %9 : (tensor<1x197x768xf16>, tensor<1x768x3072xf16>) -> tensor<1x197x3072xf16>
    %288 = tosa.add %287, %8 : (tensor<1x197x3072xf16>, tensor<3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global231 = %288 : tensor<1x197x3072xf16>
    %289 = tosa.mul %288, %6 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global232 = %289 : tensor<1x197x3072xf16>
    %290 = tosa.pow %288, %3 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %291 = tosa.mul %290, %4 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %292 = tosa.add %288, %291 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %293 = tosa.mul %73, %292 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %294 = tosa.tanh %293 : (tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global237 = %294 : tensor<1x197x3072xf16>
    %295 = tosa.add %294, %7 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global238 = %295 : tensor<1x197x3072xf16>
    %296 = tosa.mul %289, %295 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %297 = tosa.matmul %296, %2 : (tensor<1x197x3072xf16>, tensor<1x3072x768xf16>) -> tensor<1x197x768xf16>
    %298 = tosa.add %297, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %299 = tosa.add %275, %298 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %300 = tosa.reduce_sum %299 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %301 = tosa.mul %300, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %302 = tosa.sub %299, %301 : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global245 = %302 : tensor<1x197x768xf16>
    %303 = tosa.mul %302, %302 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %304 = tosa.reduce_sum %303 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %305 = tosa.mul %304, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %306 = tosa.add %305, %13 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global249 = %306 : tensor<1x197x1xf16>
    %307 = tosa.rsqrt %306 : (tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global250 = %307 : tensor<1x197x1xf16>
    %308 = tosa.mul %302, %307 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    %309 = tosa.mul %308, %20 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %310 = tosa.add %309, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %311 = tosa.matmul %310, %12 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %312 = tosa.add %311, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global255 = %312 : tensor<1x197x768xf16>
    %313 = tosa.reshape %312 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %314 = tosa.transpose %313, %11 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %315 = tosa.reshape %314 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %316 = tosa.transpose %315, %17 : (tensor<12x197x64xf16>, tensor<3xi64>) -> tensor<12x64x197xf16>
    %317 = tosa.matmul %315, %316 : (tensor<12x197x64xf16>, tensor<12x64x197xf16>) -> tensor<12x197x197xf16>
    %318 = tosa.mul %317, %46 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<f16>) -> tensor<12x197x197xf16>
    %319 = tosa.exp %318 : (tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    ml_program.global_store @global258 = %319 : tensor<12x197x197xf16>
    %320 = tosa.reduce_sum %319 {axis = 2 : i32} : (tensor<12x197x197xf16>) -> tensor<12x197x1xf16>
    ml_program.global_store @global259 = %320 : tensor<12x197x1xf16>
    %321 = tosa.reciprocal %320 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    ml_program.global_store @global260 = %321 : tensor<12x197x1xf16>
    %322 = tosa.mul %319, %321 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x1xf16>) -> tensor<12x197x197xf16>
    ml_program.global_store @global261 = %322 : tensor<12x197x197xf16>
    %323 = tosa.matmul %322, %315 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %324 = tosa.reshape %323 {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf16>) -> tensor<1x12x197x64xf16>
    %325 = tosa.transpose %324, %11 : (tensor<1x12x197x64xf16>, tensor<4xi64>) -> tensor<1x197x12x64xf16>
    %326 = tosa.reshape %325 {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf16>) -> tensor<1x197x768xf16>
    %327 = tosa.matmul %326, %12 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %328 = tosa.add %327, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %329 = tosa.add %328, %299 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %330 = tosa.reduce_sum %329 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %331 = tosa.mul %330, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %332 = tosa.sub %329, %331 : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global268 = %332 : tensor<1x197x768xf16>
    %333 = tosa.mul %332, %332 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %334 = tosa.reduce_sum %333 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %335 = tosa.mul %334, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %336 = tosa.add %335, %13 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global272 = %336 : tensor<1x197x1xf16>
    %337 = tosa.rsqrt %336 : (tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global273 = %337 : tensor<1x197x1xf16>
    %338 = tosa.mul %332, %337 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    %339 = tosa.mul %338, %20 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %340 = tosa.add %339, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %341 = tosa.matmul %340, %9 : (tensor<1x197x768xf16>, tensor<1x768x3072xf16>) -> tensor<1x197x3072xf16>
    %342 = tosa.add %341, %8 : (tensor<1x197x3072xf16>, tensor<3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global278 = %342 : tensor<1x197x3072xf16>
    %343 = tosa.mul %342, %6 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global279 = %343 : tensor<1x197x3072xf16>
    %344 = tosa.pow %342, %3 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %345 = tosa.mul %344, %4 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %346 = tosa.add %342, %345 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %347 = tosa.mul %73, %346 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %348 = tosa.tanh %347 : (tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global284 = %348 : tensor<1x197x3072xf16>
    %349 = tosa.add %348, %7 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global285 = %349 : tensor<1x197x3072xf16>
    %350 = tosa.mul %343, %349 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %351 = tosa.matmul %350, %2 : (tensor<1x197x3072xf16>, tensor<1x3072x768xf16>) -> tensor<1x197x768xf16>
    %352 = tosa.add %351, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %353 = tosa.add %329, %352 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %354 = tosa.reduce_sum %353 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %355 = tosa.mul %354, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %356 = tosa.sub %353, %355 : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global292 = %356 : tensor<1x197x768xf16>
    %357 = tosa.mul %356, %356 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %358 = tosa.reduce_sum %357 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %359 = tosa.mul %358, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %360 = tosa.add %359, %13 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global296 = %360 : tensor<1x197x1xf16>
    %361 = tosa.rsqrt %360 : (tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global297 = %361 : tensor<1x197x1xf16>
    %362 = tosa.mul %356, %361 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    %363 = tosa.mul %362, %20 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %364 = tosa.add %363, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %365 = tosa.matmul %364, %12 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %366 = tosa.add %365, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global302 = %366 : tensor<1x197x768xf16>
    %367 = tosa.reshape %366 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %368 = tosa.transpose %367, %11 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %369 = tosa.reshape %368 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %370 = tosa.transpose %369, %17 : (tensor<12x197x64xf16>, tensor<3xi64>) -> tensor<12x64x197xf16>
    %371 = tosa.matmul %369, %370 : (tensor<12x197x64xf16>, tensor<12x64x197xf16>) -> tensor<12x197x197xf16>
    %372 = tosa.mul %371, %46 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<f16>) -> tensor<12x197x197xf16>
    %373 = tosa.exp %372 : (tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    ml_program.global_store @global305 = %373 : tensor<12x197x197xf16>
    %374 = tosa.reduce_sum %373 {axis = 2 : i32} : (tensor<12x197x197xf16>) -> tensor<12x197x1xf16>
    ml_program.global_store @global306 = %374 : tensor<12x197x1xf16>
    %375 = tosa.reciprocal %374 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    ml_program.global_store @global307 = %375 : tensor<12x197x1xf16>
    %376 = tosa.mul %373, %375 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x1xf16>) -> tensor<12x197x197xf16>
    ml_program.global_store @global308 = %376 : tensor<12x197x197xf16>
    %377 = tosa.matmul %376, %369 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %378 = tosa.reshape %377 {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf16>) -> tensor<1x12x197x64xf16>
    %379 = tosa.transpose %378, %11 : (tensor<1x12x197x64xf16>, tensor<4xi64>) -> tensor<1x197x12x64xf16>
    %380 = tosa.reshape %379 {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf16>) -> tensor<1x197x768xf16>
    %381 = tosa.matmul %380, %12 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %382 = tosa.add %381, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %383 = tosa.add %382, %353 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %384 = tosa.reduce_sum %383 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %385 = tosa.mul %384, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %386 = tosa.sub %383, %385 : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global315 = %386 : tensor<1x197x768xf16>
    %387 = tosa.mul %386, %386 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %388 = tosa.reduce_sum %387 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %389 = tosa.mul %388, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %390 = tosa.add %389, %13 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global319 = %390 : tensor<1x197x1xf16>
    %391 = tosa.rsqrt %390 : (tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global320 = %391 : tensor<1x197x1xf16>
    %392 = tosa.mul %386, %391 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    %393 = tosa.mul %392, %20 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %394 = tosa.add %393, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %395 = tosa.matmul %394, %9 : (tensor<1x197x768xf16>, tensor<1x768x3072xf16>) -> tensor<1x197x3072xf16>
    %396 = tosa.add %395, %8 : (tensor<1x197x3072xf16>, tensor<3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global325 = %396 : tensor<1x197x3072xf16>
    %397 = tosa.mul %396, %6 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global326 = %397 : tensor<1x197x3072xf16>
    %398 = tosa.pow %396, %3 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %399 = tosa.mul %398, %4 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %400 = tosa.add %396, %399 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %401 = tosa.mul %73, %400 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %402 = tosa.tanh %401 : (tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global331 = %402 : tensor<1x197x3072xf16>
    %403 = tosa.add %402, %7 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global332 = %403 : tensor<1x197x3072xf16>
    %404 = tosa.mul %397, %403 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %405 = tosa.matmul %404, %2 : (tensor<1x197x3072xf16>, tensor<1x3072x768xf16>) -> tensor<1x197x768xf16>
    %406 = tosa.add %405, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %407 = tosa.add %383, %406 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %408 = tosa.reduce_sum %407 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %409 = tosa.mul %408, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %410 = tosa.sub %407, %409 : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global339 = %410 : tensor<1x197x768xf16>
    %411 = tosa.mul %410, %410 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %412 = tosa.reduce_sum %411 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %413 = tosa.mul %412, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %414 = tosa.add %413, %13 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global343 = %414 : tensor<1x197x1xf16>
    %415 = tosa.rsqrt %414 : (tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global344 = %415 : tensor<1x197x1xf16>
    %416 = tosa.mul %410, %415 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    %417 = tosa.mul %416, %20 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %418 = tosa.add %417, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %419 = tosa.matmul %418, %12 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %420 = tosa.add %419, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global349 = %420 : tensor<1x197x768xf16>
    %421 = tosa.reshape %420 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %422 = tosa.transpose %421, %11 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %423 = tosa.reshape %422 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %424 = tosa.transpose %423, %17 : (tensor<12x197x64xf16>, tensor<3xi64>) -> tensor<12x64x197xf16>
    %425 = tosa.matmul %423, %424 : (tensor<12x197x64xf16>, tensor<12x64x197xf16>) -> tensor<12x197x197xf16>
    %426 = tosa.mul %425, %46 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<f16>) -> tensor<12x197x197xf16>
    %427 = tosa.exp %426 : (tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    ml_program.global_store @global352 = %427 : tensor<12x197x197xf16>
    %428 = tosa.reduce_sum %427 {axis = 2 : i32} : (tensor<12x197x197xf16>) -> tensor<12x197x1xf16>
    ml_program.global_store @global353 = %428 : tensor<12x197x1xf16>
    %429 = tosa.reciprocal %428 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    ml_program.global_store @global354 = %429 : tensor<12x197x1xf16>
    %430 = tosa.mul %427, %429 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x1xf16>) -> tensor<12x197x197xf16>
    ml_program.global_store @global355 = %430 : tensor<12x197x197xf16>
    %431 = tosa.matmul %430, %423 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %432 = tosa.reshape %431 {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf16>) -> tensor<1x12x197x64xf16>
    %433 = tosa.transpose %432, %11 : (tensor<1x12x197x64xf16>, tensor<4xi64>) -> tensor<1x197x12x64xf16>
    %434 = tosa.reshape %433 {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf16>) -> tensor<1x197x768xf16>
    %435 = tosa.matmul %434, %12 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %436 = tosa.add %435, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %437 = tosa.add %436, %407 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %438 = tosa.reduce_sum %437 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %439 = tosa.mul %438, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %440 = tosa.sub %437, %439 : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global362 = %440 : tensor<1x197x768xf16>
    %441 = tosa.mul %440, %440 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %442 = tosa.reduce_sum %441 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %443 = tosa.mul %442, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %444 = tosa.add %443, %13 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global366 = %444 : tensor<1x197x1xf16>
    %445 = tosa.rsqrt %444 : (tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global367 = %445 : tensor<1x197x1xf16>
    %446 = tosa.mul %440, %445 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    %447 = tosa.mul %446, %20 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %448 = tosa.add %447, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %449 = tosa.matmul %448, %9 : (tensor<1x197x768xf16>, tensor<1x768x3072xf16>) -> tensor<1x197x3072xf16>
    %450 = tosa.add %449, %8 : (tensor<1x197x3072xf16>, tensor<3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global372 = %450 : tensor<1x197x3072xf16>
    %451 = tosa.mul %450, %6 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global373 = %451 : tensor<1x197x3072xf16>
    %452 = tosa.pow %450, %3 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %453 = tosa.mul %452, %4 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %454 = tosa.add %450, %453 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %455 = tosa.mul %73, %454 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %456 = tosa.tanh %455 : (tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global378 = %456 : tensor<1x197x3072xf16>
    %457 = tosa.add %456, %7 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global379 = %457 : tensor<1x197x3072xf16>
    %458 = tosa.mul %451, %457 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %459 = tosa.matmul %458, %2 : (tensor<1x197x3072xf16>, tensor<1x3072x768xf16>) -> tensor<1x197x768xf16>
    %460 = tosa.add %459, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %461 = tosa.add %437, %460 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %462 = tosa.reduce_sum %461 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %463 = tosa.mul %462, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %464 = tosa.sub %461, %463 : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global386 = %464 : tensor<1x197x768xf16>
    %465 = tosa.mul %464, %464 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %466 = tosa.reduce_sum %465 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %467 = tosa.mul %466, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %468 = tosa.add %467, %13 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global390 = %468 : tensor<1x197x1xf16>
    %469 = tosa.rsqrt %468 : (tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global391 = %469 : tensor<1x197x1xf16>
    %470 = tosa.mul %464, %469 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    %471 = tosa.mul %470, %20 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %472 = tosa.add %471, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %473 = tosa.matmul %472, %12 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %474 = tosa.add %473, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global396 = %474 : tensor<1x197x768xf16>
    %475 = tosa.reshape %474 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %476 = tosa.transpose %475, %11 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %477 = tosa.reshape %476 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %478 = tosa.transpose %477, %17 : (tensor<12x197x64xf16>, tensor<3xi64>) -> tensor<12x64x197xf16>
    %479 = tosa.matmul %477, %478 : (tensor<12x197x64xf16>, tensor<12x64x197xf16>) -> tensor<12x197x197xf16>
    %480 = tosa.mul %479, %46 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<f16>) -> tensor<12x197x197xf16>
    %481 = tosa.exp %480 : (tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    ml_program.global_store @global399 = %481 : tensor<12x197x197xf16>
    %482 = tosa.reduce_sum %481 {axis = 2 : i32} : (tensor<12x197x197xf16>) -> tensor<12x197x1xf16>
    ml_program.global_store @global400 = %482 : tensor<12x197x1xf16>
    %483 = tosa.reciprocal %482 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    ml_program.global_store @global401 = %483 : tensor<12x197x1xf16>
    %484 = tosa.mul %481, %483 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x1xf16>) -> tensor<12x197x197xf16>
    ml_program.global_store @global402 = %484 : tensor<12x197x197xf16>
    %485 = tosa.matmul %484, %477 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %486 = tosa.reshape %485 {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf16>) -> tensor<1x12x197x64xf16>
    %487 = tosa.transpose %486, %11 : (tensor<1x12x197x64xf16>, tensor<4xi64>) -> tensor<1x197x12x64xf16>
    %488 = tosa.reshape %487 {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf16>) -> tensor<1x197x768xf16>
    %489 = tosa.matmul %488, %12 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %490 = tosa.add %489, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %491 = tosa.add %490, %461 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %492 = tosa.reduce_sum %491 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %493 = tosa.mul %492, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %494 = tosa.sub %491, %493 : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global409 = %494 : tensor<1x197x768xf16>
    %495 = tosa.mul %494, %494 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %496 = tosa.reduce_sum %495 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %497 = tosa.mul %496, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %498 = tosa.add %497, %13 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global413 = %498 : tensor<1x197x1xf16>
    %499 = tosa.rsqrt %498 : (tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global414 = %499 : tensor<1x197x1xf16>
    %500 = tosa.mul %494, %499 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    %501 = tosa.mul %500, %20 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %502 = tosa.add %501, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %503 = tosa.matmul %502, %9 : (tensor<1x197x768xf16>, tensor<1x768x3072xf16>) -> tensor<1x197x3072xf16>
    %504 = tosa.add %503, %8 : (tensor<1x197x3072xf16>, tensor<3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global419 = %504 : tensor<1x197x3072xf16>
    %505 = tosa.mul %504, %6 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global420 = %505 : tensor<1x197x3072xf16>
    %506 = tosa.pow %504, %3 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %507 = tosa.mul %506, %4 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %508 = tosa.add %504, %507 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %509 = tosa.mul %73, %508 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %510 = tosa.tanh %509 : (tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global425 = %510 : tensor<1x197x3072xf16>
    %511 = tosa.add %510, %7 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global426 = %511 : tensor<1x197x3072xf16>
    %512 = tosa.mul %505, %511 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %513 = tosa.matmul %512, %2 : (tensor<1x197x3072xf16>, tensor<1x3072x768xf16>) -> tensor<1x197x768xf16>
    %514 = tosa.add %513, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %515 = tosa.add %491, %514 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %516 = tosa.reduce_sum %515 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %517 = tosa.mul %516, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %518 = tosa.sub %515, %517 : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global433 = %518 : tensor<1x197x768xf16>
    %519 = tosa.mul %518, %518 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %520 = tosa.reduce_sum %519 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %521 = tosa.mul %520, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %522 = tosa.add %521, %13 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global437 = %522 : tensor<1x197x1xf16>
    %523 = tosa.rsqrt %522 : (tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global438 = %523 : tensor<1x197x1xf16>
    %524 = tosa.mul %518, %523 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    %525 = tosa.mul %524, %20 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %526 = tosa.add %525, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %527 = tosa.matmul %526, %12 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %528 = tosa.add %527, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global443 = %528 : tensor<1x197x768xf16>
    %529 = tosa.reshape %528 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %530 = tosa.transpose %529, %11 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %531 = tosa.reshape %530 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %532 = tosa.transpose %531, %17 : (tensor<12x197x64xf16>, tensor<3xi64>) -> tensor<12x64x197xf16>
    %533 = tosa.matmul %531, %532 : (tensor<12x197x64xf16>, tensor<12x64x197xf16>) -> tensor<12x197x197xf16>
    %534 = tosa.mul %533, %46 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<f16>) -> tensor<12x197x197xf16>
    %535 = tosa.exp %534 : (tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    ml_program.global_store @global446 = %535 : tensor<12x197x197xf16>
    %536 = tosa.reduce_sum %535 {axis = 2 : i32} : (tensor<12x197x197xf16>) -> tensor<12x197x1xf16>
    ml_program.global_store @global447 = %536 : tensor<12x197x1xf16>
    %537 = tosa.reciprocal %536 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    ml_program.global_store @global448 = %537 : tensor<12x197x1xf16>
    %538 = tosa.mul %535, %537 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x1xf16>) -> tensor<12x197x197xf16>
    ml_program.global_store @global449 = %538 : tensor<12x197x197xf16>
    %539 = tosa.matmul %538, %531 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %540 = tosa.reshape %539 {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf16>) -> tensor<1x12x197x64xf16>
    %541 = tosa.transpose %540, %11 : (tensor<1x12x197x64xf16>, tensor<4xi64>) -> tensor<1x197x12x64xf16>
    %542 = tosa.reshape %541 {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf16>) -> tensor<1x197x768xf16>
    %543 = tosa.matmul %542, %12 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %544 = tosa.add %543, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %545 = tosa.add %544, %515 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %546 = tosa.reduce_sum %545 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %547 = tosa.mul %546, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %548 = tosa.sub %545, %547 : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global456 = %548 : tensor<1x197x768xf16>
    %549 = tosa.mul %548, %548 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %550 = tosa.reduce_sum %549 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %551 = tosa.mul %550, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %552 = tosa.add %551, %13 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global460 = %552 : tensor<1x197x1xf16>
    %553 = tosa.rsqrt %552 : (tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global461 = %553 : tensor<1x197x1xf16>
    %554 = tosa.mul %548, %553 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    %555 = tosa.mul %554, %20 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %556 = tosa.add %555, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %557 = tosa.matmul %556, %9 : (tensor<1x197x768xf16>, tensor<1x768x3072xf16>) -> tensor<1x197x3072xf16>
    %558 = tosa.add %557, %8 : (tensor<1x197x3072xf16>, tensor<3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global466 = %558 : tensor<1x197x3072xf16>
    %559 = tosa.mul %558, %6 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global467 = %559 : tensor<1x197x3072xf16>
    %560 = tosa.pow %558, %3 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %561 = tosa.mul %560, %4 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %562 = tosa.add %558, %561 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %563 = tosa.mul %73, %562 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %564 = tosa.tanh %563 : (tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global472 = %564 : tensor<1x197x3072xf16>
    %565 = tosa.add %564, %7 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global473 = %565 : tensor<1x197x3072xf16>
    %566 = tosa.mul %559, %565 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %567 = tosa.matmul %566, %2 : (tensor<1x197x3072xf16>, tensor<1x3072x768xf16>) -> tensor<1x197x768xf16>
    %568 = tosa.add %567, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %569 = tosa.add %545, %568 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %570 = tosa.reduce_sum %569 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %571 = tosa.mul %570, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %572 = tosa.sub %569, %571 : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global480 = %572 : tensor<1x197x768xf16>
    %573 = tosa.mul %572, %572 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %574 = tosa.reduce_sum %573 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %575 = tosa.mul %574, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %576 = tosa.add %575, %13 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global484 = %576 : tensor<1x197x1xf16>
    %577 = tosa.rsqrt %576 : (tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global485 = %577 : tensor<1x197x1xf16>
    %578 = tosa.mul %572, %577 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    %579 = tosa.mul %578, %20 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %580 = tosa.add %579, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %581 = tosa.matmul %580, %12 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %582 = tosa.add %581, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global490 = %582 : tensor<1x197x768xf16>
    %583 = tosa.reshape %582 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %584 = tosa.transpose %583, %11 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %585 = tosa.reshape %584 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %586 = tosa.transpose %585, %17 : (tensor<12x197x64xf16>, tensor<3xi64>) -> tensor<12x64x197xf16>
    %587 = tosa.matmul %585, %586 : (tensor<12x197x64xf16>, tensor<12x64x197xf16>) -> tensor<12x197x197xf16>
    %588 = tosa.mul %587, %46 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<f16>) -> tensor<12x197x197xf16>
    %589 = tosa.exp %588 : (tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    ml_program.global_store @global493 = %589 : tensor<12x197x197xf16>
    %590 = tosa.reduce_sum %589 {axis = 2 : i32} : (tensor<12x197x197xf16>) -> tensor<12x197x1xf16>
    ml_program.global_store @global494 = %590 : tensor<12x197x1xf16>
    %591 = tosa.reciprocal %590 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    ml_program.global_store @global495 = %591 : tensor<12x197x1xf16>
    %592 = tosa.mul %589, %591 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x1xf16>) -> tensor<12x197x197xf16>
    ml_program.global_store @global496 = %592 : tensor<12x197x197xf16>
    %593 = tosa.matmul %592, %585 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %594 = tosa.reshape %593 {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf16>) -> tensor<1x12x197x64xf16>
    %595 = tosa.transpose %594, %11 : (tensor<1x12x197x64xf16>, tensor<4xi64>) -> tensor<1x197x12x64xf16>
    %596 = tosa.reshape %595 {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf16>) -> tensor<1x197x768xf16>
    %597 = tosa.matmul %596, %12 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %598 = tosa.add %597, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %599 = tosa.add %598, %569 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %600 = tosa.reduce_sum %599 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %601 = tosa.mul %600, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %602 = tosa.sub %599, %601 : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global503 = %602 : tensor<1x197x768xf16>
    %603 = tosa.mul %602, %602 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %604 = tosa.reduce_sum %603 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %605 = tosa.mul %604, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %606 = tosa.add %605, %13 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global507 = %606 : tensor<1x197x1xf16>
    %607 = tosa.rsqrt %606 : (tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global508 = %607 : tensor<1x197x1xf16>
    %608 = tosa.mul %602, %607 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    %609 = tosa.mul %608, %20 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %610 = tosa.add %609, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %611 = tosa.matmul %610, %9 : (tensor<1x197x768xf16>, tensor<1x768x3072xf16>) -> tensor<1x197x3072xf16>
    %612 = tosa.add %611, %8 : (tensor<1x197x3072xf16>, tensor<3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global513 = %612 : tensor<1x197x3072xf16>
    %613 = tosa.mul %612, %6 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global514 = %613 : tensor<1x197x3072xf16>
    %614 = tosa.pow %612, %3 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %615 = tosa.mul %614, %4 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %616 = tosa.add %612, %615 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %617 = tosa.mul %73, %616 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %618 = tosa.tanh %617 : (tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global519 = %618 : tensor<1x197x3072xf16>
    %619 = tosa.add %618, %7 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global520 = %619 : tensor<1x197x3072xf16>
    %620 = tosa.mul %613, %619 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %621 = tosa.matmul %620, %2 : (tensor<1x197x3072xf16>, tensor<1x3072x768xf16>) -> tensor<1x197x768xf16>
    %622 = tosa.add %621, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %623 = tosa.add %599, %622 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %624 = tosa.reduce_sum %623 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %625 = tosa.mul %624, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %626 = tosa.sub %623, %625 : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global527 = %626 : tensor<1x197x768xf16>
    %627 = tosa.mul %626, %626 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %628 = tosa.reduce_sum %627 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %629 = tosa.mul %628, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %630 = tosa.add %629, %13 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global531 = %630 : tensor<1x197x1xf16>
    %631 = tosa.rsqrt %630 : (tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global532 = %631 : tensor<1x197x1xf16>
    %632 = tosa.mul %626, %631 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    %633 = tosa.mul %632, %20 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %634 = tosa.add %633, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %635 = tosa.matmul %634, %12 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %636 = tosa.add %635, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global537 = %636 : tensor<1x197x768xf16>
    %637 = tosa.reshape %636 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %638 = tosa.transpose %637, %11 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %639 = tosa.reshape %638 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %640 = tosa.transpose %639, %17 : (tensor<12x197x64xf16>, tensor<3xi64>) -> tensor<12x64x197xf16>
    %641 = tosa.matmul %639, %640 : (tensor<12x197x64xf16>, tensor<12x64x197xf16>) -> tensor<12x197x197xf16>
    %642 = tosa.mul %641, %46 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<f16>) -> tensor<12x197x197xf16>
    %643 = tosa.exp %642 : (tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    ml_program.global_store @global540 = %643 : tensor<12x197x197xf16>
    %644 = tosa.reduce_sum %643 {axis = 2 : i32} : (tensor<12x197x197xf16>) -> tensor<12x197x1xf16>
    ml_program.global_store @global541 = %644 : tensor<12x197x1xf16>
    %645 = tosa.reciprocal %644 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    ml_program.global_store @global542 = %645 : tensor<12x197x1xf16>
    %646 = tosa.mul %643, %645 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x1xf16>) -> tensor<12x197x197xf16>
    ml_program.global_store @global543 = %646 : tensor<12x197x197xf16>
    %647 = tosa.matmul %646, %639 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %648 = tosa.reshape %647 {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf16>) -> tensor<1x12x197x64xf16>
    %649 = tosa.transpose %648, %11 : (tensor<1x12x197x64xf16>, tensor<4xi64>) -> tensor<1x197x12x64xf16>
    %650 = tosa.reshape %649 {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf16>) -> tensor<1x197x768xf16>
    %651 = tosa.matmul %650, %12 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %652 = tosa.add %651, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %653 = tosa.add %652, %623 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %654 = tosa.reduce_sum %653 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %655 = tosa.mul %654, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %656 = tosa.sub %653, %655 : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global550 = %656 : tensor<1x197x768xf16>
    %657 = tosa.mul %656, %656 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %658 = tosa.reduce_sum %657 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %659 = tosa.mul %658, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %660 = tosa.add %659, %13 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global554 = %660 : tensor<1x197x1xf16>
    %661 = tosa.rsqrt %660 : (tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global555 = %661 : tensor<1x197x1xf16>
    %662 = tosa.mul %656, %661 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    %663 = tosa.mul %662, %20 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %664 = tosa.add %663, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %665 = tosa.matmul %664, %9 : (tensor<1x197x768xf16>, tensor<1x768x3072xf16>) -> tensor<1x197x3072xf16>
    %666 = tosa.add %665, %8 : (tensor<1x197x3072xf16>, tensor<3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global560 = %666 : tensor<1x197x3072xf16>
    %667 = tosa.mul %666, %6 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global561 = %667 : tensor<1x197x3072xf16>
    %668 = tosa.pow %666, %3 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %669 = tosa.mul %668, %4 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %670 = tosa.add %666, %669 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %671 = tosa.mul %73, %670 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %672 = tosa.tanh %671 : (tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global566 = %672 : tensor<1x197x3072xf16>
    %673 = tosa.add %672, %7 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    ml_program.global_store @global567 = %673 : tensor<1x197x3072xf16>
    %674 = tosa.mul %667, %673 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %675 = tosa.matmul %674, %2 : (tensor<1x197x3072xf16>, tensor<1x3072x768xf16>) -> tensor<1x197x768xf16>
    %676 = tosa.add %675, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %677 = tosa.add %653, %676 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %678 = tosa.reduce_sum %677 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %679 = tosa.mul %678, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %680 = tosa.sub %677, %679 : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    ml_program.global_store @global574 = %680 : tensor<1x197x768xf16>
    %681 = tosa.mul %680, %680 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %682 = tosa.reduce_sum %681 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %683 = tosa.mul %682, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %684 = tosa.add %683, %13 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global578 = %684 : tensor<1x197x1xf16>
    %685 = tosa.rsqrt %684 : (tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    ml_program.global_store @global579 = %685 : tensor<1x197x1xf16>
    %686 = tosa.mul %680, %685 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x1xf16>) -> tensor<1x197x768xf16>
    %687 = tosa.mul %686, %20 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %688 = tosa.add %687, %20 : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %extracted_slice = tensor.extract_slice %688[0, 0, 0] [1, 1, 768] [1, 1, 1] : tensor<1x197x768xf16> to tensor<1x1x768xf16>
    %689 = tosa.matmul %extracted_slice, %1 : (tensor<1x1x768xf16>, tensor<1x768x1000xf16>) -> tensor<1x1x1000xf16>
    %690 = tosa.add %689, %0 : (tensor<1x1x1000xf16>, tensor<1000xf16>) -> tensor<1x1x1000xf16>
    %691 = tosa.reshape %690 {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf16>) -> tensor<1x1000xf16>
    return %691 : tensor<1x1000xf16>
  }
  func.func @dforward(%arg0: tensor<1x1000xf16>) -> tensor<1x3x224x224xf16> {
    %cst = arith.constant dense<0.000000e+00> : tensor<3xf16>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<12x197x197xf16>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<1x197x768xf16>
    %0 = "tosa.const"() <{value = dense<[0, 3, 1, 2]> : tensor<4xi64>}> : () -> tensor<4xi64>
    %1 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<3x16x16x768xf16>}> : () -> tensor<3x16x16x768xf16>
    %2 = "tosa.const"() <{value = dense<[0, 2, 3, 1]> : tensor<4xi64>}> : () -> tensor<4xi64>
    %3 = "tosa.const"() <{value = dense<[0, 2, 1]> : tensor<3xi32>}> : () -> tensor<3xi32>
    %4 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x768x768xf16>}> : () -> tensor<1x768x768xf16>
    %5 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x3072x768xf16>}> : () -> tensor<1x3072x768xf16>
    %6 = "tosa.const"() <{value = dense<2.000000e+00> : tensor<1x197x3072xf16>}> : () -> tensor<1x197x3072xf16>
    %7 = "tosa.const"() <{value = dense<1.000000e+00> : tensor<f16>}> : () -> tensor<f16>
    %8 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x768x3072xf16>}> : () -> tensor<1x768x3072xf16>
    %9 = "tosa.const"() <{value = dense<-1.500000e+00> : tensor<f16>}> : () -> tensor<f16>
    %10 = "tosa.const"() <{value = dense<-5.000000e-01> : tensor<f16>}> : () -> tensor<f16>
    %cst_2 = arith.constant 0.000000e+00 : f16
    %11 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x1000x768xf16>}> : () -> tensor<1x1000x768xf16>
    %12 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<768xf16>}> : () -> tensor<768xf16>
    %13 = "tosa.const"() <{value = dense<[0, 2, 1]> : tensor<3xi64>}> : () -> tensor<3xi64>
    %14 = "tosa.const"() <{value = dense<0.00130208337> : tensor<f16>}> : () -> tensor<f16>
    %15 = "tosa.const"() <{value = dense<[0, 2, 1, 3]> : tensor<4xi64>}> : () -> tensor<4xi64>
    %16 = "tosa.const"() <{value = dense<5.000000e-01> : tensor<1x197x3072xf16>}> : () -> tensor<1x197x3072xf16>
    %17 = "tosa.const"() <{value = dense<3.000000e+00> : tensor<1x197x3072xf16>}> : () -> tensor<1x197x3072xf16>
    %global8 = ml_program.global_load @global8 : tensor<1x197x768xf16>
    %global12 = ml_program.global_load @global12 : tensor<1x197x1xf16>
    %global13 = ml_program.global_load @global13 : tensor<1x197x1xf16>
    %global18 = ml_program.global_load @global18 : tensor<1x197x768xf16>
    %18 = tosa.reshape %global18 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %19 = tosa.transpose %18, %15 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %20 = tosa.reshape %19 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %global20 = ml_program.global_load @global20 : tensor<f16>
    %global22 = ml_program.global_load @global22 : tensor<12x197x197xf16>
    %global23 = ml_program.global_load @global23 : tensor<12x197x1xf16>
    %global24 = ml_program.global_load @global24 : tensor<12x197x1xf16>
    %global25 = ml_program.global_load @global25 : tensor<12x197x197xf16>
    %global32 = ml_program.global_load @global32 : tensor<1x197x768xf16>
    %global36 = ml_program.global_load @global36 : tensor<1x197x1xf16>
    %global37 = ml_program.global_load @global37 : tensor<1x197x1xf16>
    %global42 = ml_program.global_load @global42 : tensor<1x197x3072xf16>
    %global43 = ml_program.global_load @global43 : tensor<1x197x3072xf16>
    %global44 = ml_program.global_load @global44 : tensor<1x197x3072xf16>
    %global49 = ml_program.global_load @global49 : tensor<1x197x3072xf16>
    %global50 = ml_program.global_load @global50 : tensor<1x197x3072xf16>
    %global57 = ml_program.global_load @global57 : tensor<1x197x768xf16>
    %global61 = ml_program.global_load @global61 : tensor<1x197x1xf16>
    %global62 = ml_program.global_load @global62 : tensor<1x197x1xf16>
    %global67 = ml_program.global_load @global67 : tensor<1x197x768xf16>
    %21 = tosa.reshape %global67 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %22 = tosa.transpose %21, %15 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %23 = tosa.reshape %22 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %global70 = ml_program.global_load @global70 : tensor<12x197x197xf16>
    %global71 = ml_program.global_load @global71 : tensor<12x197x1xf16>
    %global72 = ml_program.global_load @global72 : tensor<12x197x1xf16>
    %global73 = ml_program.global_load @global73 : tensor<12x197x197xf16>
    %global80 = ml_program.global_load @global80 : tensor<1x197x768xf16>
    %global84 = ml_program.global_load @global84 : tensor<1x197x1xf16>
    %global85 = ml_program.global_load @global85 : tensor<1x197x1xf16>
    %global90 = ml_program.global_load @global90 : tensor<1x197x3072xf16>
    %global91 = ml_program.global_load @global91 : tensor<1x197x3072xf16>
    %global96 = ml_program.global_load @global96 : tensor<1x197x3072xf16>
    %global97 = ml_program.global_load @global97 : tensor<1x197x3072xf16>
    %global104 = ml_program.global_load @global104 : tensor<1x197x768xf16>
    %global108 = ml_program.global_load @global108 : tensor<1x197x1xf16>
    %global109 = ml_program.global_load @global109 : tensor<1x197x1xf16>
    %global114 = ml_program.global_load @global114 : tensor<1x197x768xf16>
    %24 = tosa.reshape %global114 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %25 = tosa.transpose %24, %15 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %26 = tosa.reshape %25 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %global117 = ml_program.global_load @global117 : tensor<12x197x197xf16>
    %global118 = ml_program.global_load @global118 : tensor<12x197x1xf16>
    %global119 = ml_program.global_load @global119 : tensor<12x197x1xf16>
    %global120 = ml_program.global_load @global120 : tensor<12x197x197xf16>
    %global127 = ml_program.global_load @global127 : tensor<1x197x768xf16>
    %global131 = ml_program.global_load @global131 : tensor<1x197x1xf16>
    %global132 = ml_program.global_load @global132 : tensor<1x197x1xf16>
    %global137 = ml_program.global_load @global137 : tensor<1x197x3072xf16>
    %global138 = ml_program.global_load @global138 : tensor<1x197x3072xf16>
    %global143 = ml_program.global_load @global143 : tensor<1x197x3072xf16>
    %global144 = ml_program.global_load @global144 : tensor<1x197x3072xf16>
    %global151 = ml_program.global_load @global151 : tensor<1x197x768xf16>
    %global155 = ml_program.global_load @global155 : tensor<1x197x1xf16>
    %global156 = ml_program.global_load @global156 : tensor<1x197x1xf16>
    %global161 = ml_program.global_load @global161 : tensor<1x197x768xf16>
    %27 = tosa.reshape %global161 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %28 = tosa.transpose %27, %15 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %29 = tosa.reshape %28 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %global164 = ml_program.global_load @global164 : tensor<12x197x197xf16>
    %global165 = ml_program.global_load @global165 : tensor<12x197x1xf16>
    %global166 = ml_program.global_load @global166 : tensor<12x197x1xf16>
    %global167 = ml_program.global_load @global167 : tensor<12x197x197xf16>
    %global174 = ml_program.global_load @global174 : tensor<1x197x768xf16>
    %global178 = ml_program.global_load @global178 : tensor<1x197x1xf16>
    %global179 = ml_program.global_load @global179 : tensor<1x197x1xf16>
    %global184 = ml_program.global_load @global184 : tensor<1x197x3072xf16>
    %global185 = ml_program.global_load @global185 : tensor<1x197x3072xf16>
    %global190 = ml_program.global_load @global190 : tensor<1x197x3072xf16>
    %global191 = ml_program.global_load @global191 : tensor<1x197x3072xf16>
    %global198 = ml_program.global_load @global198 : tensor<1x197x768xf16>
    %global202 = ml_program.global_load @global202 : tensor<1x197x1xf16>
    %global203 = ml_program.global_load @global203 : tensor<1x197x1xf16>
    %global208 = ml_program.global_load @global208 : tensor<1x197x768xf16>
    %30 = tosa.reshape %global208 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %31 = tosa.transpose %30, %15 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %32 = tosa.reshape %31 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %global211 = ml_program.global_load @global211 : tensor<12x197x197xf16>
    %global212 = ml_program.global_load @global212 : tensor<12x197x1xf16>
    %global213 = ml_program.global_load @global213 : tensor<12x197x1xf16>
    %global214 = ml_program.global_load @global214 : tensor<12x197x197xf16>
    %global221 = ml_program.global_load @global221 : tensor<1x197x768xf16>
    %global225 = ml_program.global_load @global225 : tensor<1x197x1xf16>
    %global226 = ml_program.global_load @global226 : tensor<1x197x1xf16>
    %global231 = ml_program.global_load @global231 : tensor<1x197x3072xf16>
    %global232 = ml_program.global_load @global232 : tensor<1x197x3072xf16>
    %global237 = ml_program.global_load @global237 : tensor<1x197x3072xf16>
    %global238 = ml_program.global_load @global238 : tensor<1x197x3072xf16>
    %global245 = ml_program.global_load @global245 : tensor<1x197x768xf16>
    %global249 = ml_program.global_load @global249 : tensor<1x197x1xf16>
    %global250 = ml_program.global_load @global250 : tensor<1x197x1xf16>
    %global255 = ml_program.global_load @global255 : tensor<1x197x768xf16>
    %33 = tosa.reshape %global255 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %34 = tosa.transpose %33, %15 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %35 = tosa.reshape %34 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %global258 = ml_program.global_load @global258 : tensor<12x197x197xf16>
    %global259 = ml_program.global_load @global259 : tensor<12x197x1xf16>
    %global260 = ml_program.global_load @global260 : tensor<12x197x1xf16>
    %global261 = ml_program.global_load @global261 : tensor<12x197x197xf16>
    %global268 = ml_program.global_load @global268 : tensor<1x197x768xf16>
    %global272 = ml_program.global_load @global272 : tensor<1x197x1xf16>
    %global273 = ml_program.global_load @global273 : tensor<1x197x1xf16>
    %global278 = ml_program.global_load @global278 : tensor<1x197x3072xf16>
    %global279 = ml_program.global_load @global279 : tensor<1x197x3072xf16>
    %global284 = ml_program.global_load @global284 : tensor<1x197x3072xf16>
    %global285 = ml_program.global_load @global285 : tensor<1x197x3072xf16>
    %global292 = ml_program.global_load @global292 : tensor<1x197x768xf16>
    %global296 = ml_program.global_load @global296 : tensor<1x197x1xf16>
    %global297 = ml_program.global_load @global297 : tensor<1x197x1xf16>
    %global302 = ml_program.global_load @global302 : tensor<1x197x768xf16>
    %36 = tosa.reshape %global302 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %37 = tosa.transpose %36, %15 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %38 = tosa.reshape %37 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %global305 = ml_program.global_load @global305 : tensor<12x197x197xf16>
    %global306 = ml_program.global_load @global306 : tensor<12x197x1xf16>
    %global307 = ml_program.global_load @global307 : tensor<12x197x1xf16>
    %global308 = ml_program.global_load @global308 : tensor<12x197x197xf16>
    %global315 = ml_program.global_load @global315 : tensor<1x197x768xf16>
    %global319 = ml_program.global_load @global319 : tensor<1x197x1xf16>
    %global320 = ml_program.global_load @global320 : tensor<1x197x1xf16>
    %global325 = ml_program.global_load @global325 : tensor<1x197x3072xf16>
    %global326 = ml_program.global_load @global326 : tensor<1x197x3072xf16>
    %global331 = ml_program.global_load @global331 : tensor<1x197x3072xf16>
    %global332 = ml_program.global_load @global332 : tensor<1x197x3072xf16>
    %global339 = ml_program.global_load @global339 : tensor<1x197x768xf16>
    %global343 = ml_program.global_load @global343 : tensor<1x197x1xf16>
    %global344 = ml_program.global_load @global344 : tensor<1x197x1xf16>
    %global349 = ml_program.global_load @global349 : tensor<1x197x768xf16>
    %39 = tosa.reshape %global349 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %40 = tosa.transpose %39, %15 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %41 = tosa.reshape %40 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %global352 = ml_program.global_load @global352 : tensor<12x197x197xf16>
    %global353 = ml_program.global_load @global353 : tensor<12x197x1xf16>
    %global354 = ml_program.global_load @global354 : tensor<12x197x1xf16>
    %global355 = ml_program.global_load @global355 : tensor<12x197x197xf16>
    %global362 = ml_program.global_load @global362 : tensor<1x197x768xf16>
    %global366 = ml_program.global_load @global366 : tensor<1x197x1xf16>
    %global367 = ml_program.global_load @global367 : tensor<1x197x1xf16>
    %global372 = ml_program.global_load @global372 : tensor<1x197x3072xf16>
    %global373 = ml_program.global_load @global373 : tensor<1x197x3072xf16>
    %global378 = ml_program.global_load @global378 : tensor<1x197x3072xf16>
    %global379 = ml_program.global_load @global379 : tensor<1x197x3072xf16>
    %global386 = ml_program.global_load @global386 : tensor<1x197x768xf16>
    %global390 = ml_program.global_load @global390 : tensor<1x197x1xf16>
    %global391 = ml_program.global_load @global391 : tensor<1x197x1xf16>
    %global396 = ml_program.global_load @global396 : tensor<1x197x768xf16>
    %42 = tosa.reshape %global396 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %43 = tosa.transpose %42, %15 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %44 = tosa.reshape %43 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %global399 = ml_program.global_load @global399 : tensor<12x197x197xf16>
    %global400 = ml_program.global_load @global400 : tensor<12x197x1xf16>
    %global401 = ml_program.global_load @global401 : tensor<12x197x1xf16>
    %global402 = ml_program.global_load @global402 : tensor<12x197x197xf16>
    %global409 = ml_program.global_load @global409 : tensor<1x197x768xf16>
    %global413 = ml_program.global_load @global413 : tensor<1x197x1xf16>
    %global414 = ml_program.global_load @global414 : tensor<1x197x1xf16>
    %global419 = ml_program.global_load @global419 : tensor<1x197x3072xf16>
    %global420 = ml_program.global_load @global420 : tensor<1x197x3072xf16>
    %global425 = ml_program.global_load @global425 : tensor<1x197x3072xf16>
    %global426 = ml_program.global_load @global426 : tensor<1x197x3072xf16>
    %global433 = ml_program.global_load @global433 : tensor<1x197x768xf16>
    %global437 = ml_program.global_load @global437 : tensor<1x197x1xf16>
    %global438 = ml_program.global_load @global438 : tensor<1x197x1xf16>
    %global443 = ml_program.global_load @global443 : tensor<1x197x768xf16>
    %45 = tosa.reshape %global443 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %46 = tosa.transpose %45, %15 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %47 = tosa.reshape %46 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %global446 = ml_program.global_load @global446 : tensor<12x197x197xf16>
    %global447 = ml_program.global_load @global447 : tensor<12x197x1xf16>
    %global448 = ml_program.global_load @global448 : tensor<12x197x1xf16>
    %global449 = ml_program.global_load @global449 : tensor<12x197x197xf16>
    %global456 = ml_program.global_load @global456 : tensor<1x197x768xf16>
    %global460 = ml_program.global_load @global460 : tensor<1x197x1xf16>
    %global461 = ml_program.global_load @global461 : tensor<1x197x1xf16>
    %global466 = ml_program.global_load @global466 : tensor<1x197x3072xf16>
    %global467 = ml_program.global_load @global467 : tensor<1x197x3072xf16>
    %global472 = ml_program.global_load @global472 : tensor<1x197x3072xf16>
    %global473 = ml_program.global_load @global473 : tensor<1x197x3072xf16>
    %global480 = ml_program.global_load @global480 : tensor<1x197x768xf16>
    %global484 = ml_program.global_load @global484 : tensor<1x197x1xf16>
    %global485 = ml_program.global_load @global485 : tensor<1x197x1xf16>
    %global490 = ml_program.global_load @global490 : tensor<1x197x768xf16>
    %48 = tosa.reshape %global490 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %49 = tosa.transpose %48, %15 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %50 = tosa.reshape %49 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %global493 = ml_program.global_load @global493 : tensor<12x197x197xf16>
    %global494 = ml_program.global_load @global494 : tensor<12x197x1xf16>
    %global495 = ml_program.global_load @global495 : tensor<12x197x1xf16>
    %global496 = ml_program.global_load @global496 : tensor<12x197x197xf16>
    %global503 = ml_program.global_load @global503 : tensor<1x197x768xf16>
    %global507 = ml_program.global_load @global507 : tensor<1x197x1xf16>
    %global508 = ml_program.global_load @global508 : tensor<1x197x1xf16>
    %global513 = ml_program.global_load @global513 : tensor<1x197x3072xf16>
    %global514 = ml_program.global_load @global514 : tensor<1x197x3072xf16>
    %global519 = ml_program.global_load @global519 : tensor<1x197x3072xf16>
    %global520 = ml_program.global_load @global520 : tensor<1x197x3072xf16>
    %global527 = ml_program.global_load @global527 : tensor<1x197x768xf16>
    %global531 = ml_program.global_load @global531 : tensor<1x197x1xf16>
    %global532 = ml_program.global_load @global532 : tensor<1x197x1xf16>
    %global537 = ml_program.global_load @global537 : tensor<1x197x768xf16>
    %51 = tosa.reshape %global537 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %52 = tosa.transpose %51, %15 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %53 = tosa.reshape %52 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %global540 = ml_program.global_load @global540 : tensor<12x197x197xf16>
    %global541 = ml_program.global_load @global541 : tensor<12x197x1xf16>
    %global542 = ml_program.global_load @global542 : tensor<12x197x1xf16>
    %global543 = ml_program.global_load @global543 : tensor<12x197x197xf16>
    %global550 = ml_program.global_load @global550 : tensor<1x197x768xf16>
    %global554 = ml_program.global_load @global554 : tensor<1x197x1xf16>
    %global555 = ml_program.global_load @global555 : tensor<1x197x1xf16>
    %global560 = ml_program.global_load @global560 : tensor<1x197x3072xf16>
    %global561 = ml_program.global_load @global561 : tensor<1x197x3072xf16>
    %global566 = ml_program.global_load @global566 : tensor<1x197x3072xf16>
    %global567 = ml_program.global_load @global567 : tensor<1x197x3072xf16>
    %global574 = ml_program.global_load @global574 : tensor<1x197x768xf16>
    %global578 = ml_program.global_load @global578 : tensor<1x197x1xf16>
    %global579 = ml_program.global_load @global579 : tensor<1x197x1xf16>
    %54 = tosa.reshape %arg0 {new_shape = array<i64: 1, 1, 1000>} : (tensor<1x1000xf16>) -> tensor<1x1x1000xf16>
    %55 = tosa.matmul %54, %11 : (tensor<1x1x1000xf16>, tensor<1x1000x768xf16>) -> tensor<1x1x768xf16>
    %56 = linalg.fill ins(%cst_2 : f16) outs(%cst_1 : tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %inserted_slice = tensor.insert_slice %55 into %56[0, 0, 0] [1, 1, 768] [1, 1, 1] : tensor<1x1x768xf16> into tensor<1x197x768xf16>
    %57 = tosa.mul %inserted_slice, %12 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %58 = tosa.mul %global579, %57 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %59 = tosa.mul %global574, %57 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %60 = tosa.reduce_sum %59 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %61 = tosa.pow %global578, %9 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %62 = tosa.mul %61, %10 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %63 = tosa.mul %62, %60 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    %64 = tosa.mul %63, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %65 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%64 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %66 = tosa.mul %global574, %65 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %67 = tosa.add %58, %66 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %68 = tosa.add %67, %66 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %69 = tosa.negate %68 : (tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %70 = tosa.reduce_sum %69 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %71 = tosa.mul %70, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %72 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%71 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %73 = tosa.add %68, %72 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %74 = tosa.matmul %73, %8 : (tensor<1x197x768xf16>, tensor<1x768x3072xf16>) -> tensor<1x197x3072xf16>
    %75 = tosa.mul %global567, %74 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %76 = tosa.mul %global561, %74 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %77 = tosa.mul %global566, %global566 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %78 = tosa.sub %7, %77 : (tensor<f16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %79 = tosa.mul %78, %76 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %80 = tosa.mul %global44, %79 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %81 = tosa.pow %global560, %6 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %82 = tosa.mul %81, %17 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %83 = tosa.add %80, %82 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %84 = tosa.mul %75, %16 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %85 = tosa.add %83, %84 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %86 = tosa.matmul %85, %5 : (tensor<1x197x3072xf16>, tensor<1x3072x768xf16>) -> tensor<1x197x768xf16>
    %87 = tosa.mul %86, %12 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %88 = tosa.mul %global555, %87 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %89 = tosa.mul %global550, %87 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %90 = tosa.reduce_sum %89 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %91 = tosa.pow %global554, %9 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %92 = tosa.mul %91, %10 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %93 = tosa.mul %92, %90 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    %94 = tosa.mul %93, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %95 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%94 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %96 = tosa.mul %global550, %95 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %97 = tosa.add %88, %96 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %98 = tosa.add %97, %96 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %99 = tosa.add %73, %98 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %100 = tosa.negate %98 : (tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %101 = tosa.reduce_sum %100 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %102 = tosa.mul %101, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %103 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%102 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %104 = tosa.add %99, %103 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %105 = tosa.matmul %104, %4 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %106 = tosa.reshape %105 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %107 = tosa.transpose %106, %15 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %108 = tosa.reshape %107 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %109 = tosa.transpose %53, %3 : (tensor<12x197x64xf16>, tensor<3xi32>) -> tensor<12x64x197xf16>
    %110 = tosa.matmul %108, %109 : (tensor<12x197x64xf16>, tensor<12x64x197xf16>) -> tensor<12x197x197xf16>
    %111 = tosa.transpose %global543, %3 : (tensor<12x197x197xf16>, tensor<3xi32>) -> tensor<12x197x197xf16>
    %112 = tosa.matmul %111, %108 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %113 = tosa.mul %global542, %110 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %114 = tosa.mul %global540, %110 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %115 = tosa.reduce_sum %114 {axis = 2 : i32} : (tensor<12x197x197xf16>) -> tensor<12x197x1xf16>
    %116 = tosa.mul %global541, %global541 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %117 = tosa.negate %116 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %118 = tosa.reciprocal %117 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %119 = tosa.mul %118, %115 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %120 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%119 : tensor<12x197x1xf16>) outs(%cst_0 : tensor<12x197x197xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<12x197x197xf16>
    %121 = tosa.add %113, %120 : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %122 = tosa.mul %global540, %121 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %123 = tosa.mul %global20, %122 {shift = 0 : i8} : (tensor<f16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %124 = tosa.matmul %123, %53 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %125 = tosa.add %112, %124 : (tensor<12x197x64xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %126 = tosa.matmul %109, %123 : (tensor<12x64x197xf16>, tensor<12x197x197xf16>) -> tensor<12x64x197xf16>
    %127 = tosa.transpose %126, %13 : (tensor<12x64x197xf16>, tensor<3xi64>) -> tensor<12x197x64xf16>
    %128 = tosa.add %125, %127 : (tensor<12x197x64xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %129 = tosa.reshape %128 {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf16>) -> tensor<1x12x197x64xf16>
    %130 = tosa.transpose %129, %15 : (tensor<1x12x197x64xf16>, tensor<4xi64>) -> tensor<1x197x12x64xf16>
    %131 = tosa.reshape %130 {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf16>) -> tensor<1x197x768xf16>
    %132 = tosa.matmul %131, %4 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %133 = tosa.mul %132, %12 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %134 = tosa.mul %global532, %133 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %135 = tosa.mul %global527, %133 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %136 = tosa.reduce_sum %135 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %137 = tosa.pow %global531, %9 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %138 = tosa.mul %137, %10 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %139 = tosa.mul %138, %136 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    %140 = tosa.mul %139, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %141 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%140 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %142 = tosa.mul %global527, %141 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %143 = tosa.add %134, %142 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %144 = tosa.add %143, %142 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %145 = tosa.add %104, %144 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %146 = tosa.negate %144 : (tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %147 = tosa.reduce_sum %146 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %148 = tosa.mul %147, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %149 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%148 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %150 = tosa.add %145, %149 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %151 = tosa.matmul %150, %8 : (tensor<1x197x768xf16>, tensor<1x768x3072xf16>) -> tensor<1x197x3072xf16>
    %152 = tosa.mul %global520, %151 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %153 = tosa.mul %global514, %151 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %154 = tosa.mul %global519, %global519 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %155 = tosa.sub %7, %154 : (tensor<f16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %156 = tosa.mul %155, %153 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %157 = tosa.mul %global44, %156 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %158 = tosa.pow %global513, %6 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %159 = tosa.mul %158, %17 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %160 = tosa.add %157, %159 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %161 = tosa.mul %152, %16 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %162 = tosa.add %160, %161 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %163 = tosa.matmul %162, %5 : (tensor<1x197x3072xf16>, tensor<1x3072x768xf16>) -> tensor<1x197x768xf16>
    %164 = tosa.mul %163, %12 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %165 = tosa.mul %global508, %164 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %166 = tosa.mul %global503, %164 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %167 = tosa.reduce_sum %166 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %168 = tosa.pow %global507, %9 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %169 = tosa.mul %168, %10 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %170 = tosa.mul %169, %167 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    %171 = tosa.mul %170, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %172 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%171 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %173 = tosa.mul %global503, %172 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %174 = tosa.add %165, %173 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %175 = tosa.add %174, %173 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %176 = tosa.add %150, %175 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %177 = tosa.negate %175 : (tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %178 = tosa.reduce_sum %177 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %179 = tosa.mul %178, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %180 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%179 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %181 = tosa.add %176, %180 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %182 = tosa.matmul %181, %4 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %183 = tosa.reshape %182 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %184 = tosa.transpose %183, %15 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %185 = tosa.reshape %184 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %186 = tosa.transpose %50, %3 : (tensor<12x197x64xf16>, tensor<3xi32>) -> tensor<12x64x197xf16>
    %187 = tosa.matmul %185, %186 : (tensor<12x197x64xf16>, tensor<12x64x197xf16>) -> tensor<12x197x197xf16>
    %188 = tosa.transpose %global496, %3 : (tensor<12x197x197xf16>, tensor<3xi32>) -> tensor<12x197x197xf16>
    %189 = tosa.matmul %188, %185 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %190 = tosa.mul %global495, %187 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %191 = tosa.mul %global493, %187 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %192 = tosa.reduce_sum %191 {axis = 2 : i32} : (tensor<12x197x197xf16>) -> tensor<12x197x1xf16>
    %193 = tosa.mul %global494, %global494 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %194 = tosa.negate %193 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %195 = tosa.reciprocal %194 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %196 = tosa.mul %195, %192 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %197 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%196 : tensor<12x197x1xf16>) outs(%cst_0 : tensor<12x197x197xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<12x197x197xf16>
    %198 = tosa.add %190, %197 : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %199 = tosa.mul %global493, %198 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %200 = tosa.mul %global20, %199 {shift = 0 : i8} : (tensor<f16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %201 = tosa.matmul %200, %50 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %202 = tosa.add %189, %201 : (tensor<12x197x64xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %203 = tosa.matmul %186, %200 : (tensor<12x64x197xf16>, tensor<12x197x197xf16>) -> tensor<12x64x197xf16>
    %204 = tosa.transpose %203, %13 : (tensor<12x64x197xf16>, tensor<3xi64>) -> tensor<12x197x64xf16>
    %205 = tosa.add %202, %204 : (tensor<12x197x64xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %206 = tosa.reshape %205 {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf16>) -> tensor<1x12x197x64xf16>
    %207 = tosa.transpose %206, %15 : (tensor<1x12x197x64xf16>, tensor<4xi64>) -> tensor<1x197x12x64xf16>
    %208 = tosa.reshape %207 {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf16>) -> tensor<1x197x768xf16>
    %209 = tosa.matmul %208, %4 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %210 = tosa.mul %209, %12 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %211 = tosa.mul %global485, %210 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %212 = tosa.mul %global480, %210 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %213 = tosa.reduce_sum %212 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %214 = tosa.pow %global484, %9 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %215 = tosa.mul %214, %10 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %216 = tosa.mul %215, %213 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    %217 = tosa.mul %216, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %218 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%217 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %219 = tosa.mul %global480, %218 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %220 = tosa.add %211, %219 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %221 = tosa.add %220, %219 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %222 = tosa.add %181, %221 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %223 = tosa.negate %221 : (tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %224 = tosa.reduce_sum %223 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %225 = tosa.mul %224, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %226 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%225 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %227 = tosa.add %222, %226 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %228 = tosa.matmul %227, %8 : (tensor<1x197x768xf16>, tensor<1x768x3072xf16>) -> tensor<1x197x3072xf16>
    %229 = tosa.mul %global473, %228 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %230 = tosa.mul %global467, %228 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %231 = tosa.mul %global472, %global472 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %232 = tosa.sub %7, %231 : (tensor<f16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %233 = tosa.mul %232, %230 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %234 = tosa.mul %global44, %233 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %235 = tosa.pow %global466, %6 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %236 = tosa.mul %235, %17 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %237 = tosa.add %234, %236 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %238 = tosa.mul %229, %16 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %239 = tosa.add %237, %238 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %240 = tosa.matmul %239, %5 : (tensor<1x197x3072xf16>, tensor<1x3072x768xf16>) -> tensor<1x197x768xf16>
    %241 = tosa.mul %240, %12 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %242 = tosa.mul %global461, %241 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %243 = tosa.mul %global456, %241 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %244 = tosa.reduce_sum %243 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %245 = tosa.pow %global460, %9 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %246 = tosa.mul %245, %10 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %247 = tosa.mul %246, %244 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    %248 = tosa.mul %247, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %249 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%248 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %250 = tosa.mul %global456, %249 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %251 = tosa.add %242, %250 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %252 = tosa.add %251, %250 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %253 = tosa.add %227, %252 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %254 = tosa.negate %252 : (tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %255 = tosa.reduce_sum %254 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %256 = tosa.mul %255, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %257 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%256 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %258 = tosa.add %253, %257 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %259 = tosa.matmul %258, %4 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %260 = tosa.reshape %259 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %261 = tosa.transpose %260, %15 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %262 = tosa.reshape %261 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %263 = tosa.transpose %47, %3 : (tensor<12x197x64xf16>, tensor<3xi32>) -> tensor<12x64x197xf16>
    %264 = tosa.matmul %262, %263 : (tensor<12x197x64xf16>, tensor<12x64x197xf16>) -> tensor<12x197x197xf16>
    %265 = tosa.transpose %global449, %3 : (tensor<12x197x197xf16>, tensor<3xi32>) -> tensor<12x197x197xf16>
    %266 = tosa.matmul %265, %262 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %267 = tosa.mul %global448, %264 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %268 = tosa.mul %global446, %264 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %269 = tosa.reduce_sum %268 {axis = 2 : i32} : (tensor<12x197x197xf16>) -> tensor<12x197x1xf16>
    %270 = tosa.mul %global447, %global447 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %271 = tosa.negate %270 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %272 = tosa.reciprocal %271 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %273 = tosa.mul %272, %269 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %274 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%273 : tensor<12x197x1xf16>) outs(%cst_0 : tensor<12x197x197xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<12x197x197xf16>
    %275 = tosa.add %267, %274 : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %276 = tosa.mul %global446, %275 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %277 = tosa.mul %global20, %276 {shift = 0 : i8} : (tensor<f16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %278 = tosa.matmul %277, %47 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %279 = tosa.add %266, %278 : (tensor<12x197x64xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %280 = tosa.matmul %263, %277 : (tensor<12x64x197xf16>, tensor<12x197x197xf16>) -> tensor<12x64x197xf16>
    %281 = tosa.transpose %280, %13 : (tensor<12x64x197xf16>, tensor<3xi64>) -> tensor<12x197x64xf16>
    %282 = tosa.add %279, %281 : (tensor<12x197x64xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %283 = tosa.reshape %282 {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf16>) -> tensor<1x12x197x64xf16>
    %284 = tosa.transpose %283, %15 : (tensor<1x12x197x64xf16>, tensor<4xi64>) -> tensor<1x197x12x64xf16>
    %285 = tosa.reshape %284 {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf16>) -> tensor<1x197x768xf16>
    %286 = tosa.matmul %285, %4 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %287 = tosa.mul %286, %12 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %288 = tosa.mul %global438, %287 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %289 = tosa.mul %global433, %287 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %290 = tosa.reduce_sum %289 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %291 = tosa.pow %global437, %9 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %292 = tosa.mul %291, %10 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %293 = tosa.mul %292, %290 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    %294 = tosa.mul %293, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %295 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%294 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %296 = tosa.mul %global433, %295 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %297 = tosa.add %288, %296 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %298 = tosa.add %297, %296 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %299 = tosa.add %258, %298 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %300 = tosa.negate %298 : (tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %301 = tosa.reduce_sum %300 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %302 = tosa.mul %301, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %303 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%302 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %304 = tosa.add %299, %303 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %305 = tosa.matmul %304, %8 : (tensor<1x197x768xf16>, tensor<1x768x3072xf16>) -> tensor<1x197x3072xf16>
    %306 = tosa.mul %global426, %305 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %307 = tosa.mul %global420, %305 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %308 = tosa.mul %global425, %global425 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %309 = tosa.sub %7, %308 : (tensor<f16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %310 = tosa.mul %309, %307 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %311 = tosa.mul %global44, %310 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %312 = tosa.pow %global419, %6 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %313 = tosa.mul %312, %17 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %314 = tosa.add %311, %313 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %315 = tosa.mul %306, %16 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %316 = tosa.add %314, %315 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %317 = tosa.matmul %316, %5 : (tensor<1x197x3072xf16>, tensor<1x3072x768xf16>) -> tensor<1x197x768xf16>
    %318 = tosa.mul %317, %12 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %319 = tosa.mul %global414, %318 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %320 = tosa.mul %global409, %318 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %321 = tosa.reduce_sum %320 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %322 = tosa.pow %global413, %9 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %323 = tosa.mul %322, %10 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %324 = tosa.mul %323, %321 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    %325 = tosa.mul %324, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %326 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%325 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %327 = tosa.mul %global409, %326 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %328 = tosa.add %319, %327 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %329 = tosa.add %328, %327 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %330 = tosa.add %304, %329 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %331 = tosa.negate %329 : (tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %332 = tosa.reduce_sum %331 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %333 = tosa.mul %332, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %334 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%333 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %335 = tosa.add %330, %334 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %336 = tosa.matmul %335, %4 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %337 = tosa.reshape %336 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %338 = tosa.transpose %337, %15 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %339 = tosa.reshape %338 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %340 = tosa.transpose %44, %3 : (tensor<12x197x64xf16>, tensor<3xi32>) -> tensor<12x64x197xf16>
    %341 = tosa.matmul %339, %340 : (tensor<12x197x64xf16>, tensor<12x64x197xf16>) -> tensor<12x197x197xf16>
    %342 = tosa.transpose %global402, %3 : (tensor<12x197x197xf16>, tensor<3xi32>) -> tensor<12x197x197xf16>
    %343 = tosa.matmul %342, %339 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %344 = tosa.mul %global401, %341 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %345 = tosa.mul %global399, %341 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %346 = tosa.reduce_sum %345 {axis = 2 : i32} : (tensor<12x197x197xf16>) -> tensor<12x197x1xf16>
    %347 = tosa.mul %global400, %global400 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %348 = tosa.negate %347 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %349 = tosa.reciprocal %348 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %350 = tosa.mul %349, %346 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %351 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%350 : tensor<12x197x1xf16>) outs(%cst_0 : tensor<12x197x197xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<12x197x197xf16>
    %352 = tosa.add %344, %351 : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %353 = tosa.mul %global399, %352 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %354 = tosa.mul %global20, %353 {shift = 0 : i8} : (tensor<f16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %355 = tosa.matmul %354, %44 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %356 = tosa.add %343, %355 : (tensor<12x197x64xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %357 = tosa.matmul %340, %354 : (tensor<12x64x197xf16>, tensor<12x197x197xf16>) -> tensor<12x64x197xf16>
    %358 = tosa.transpose %357, %13 : (tensor<12x64x197xf16>, tensor<3xi64>) -> tensor<12x197x64xf16>
    %359 = tosa.add %356, %358 : (tensor<12x197x64xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %360 = tosa.reshape %359 {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf16>) -> tensor<1x12x197x64xf16>
    %361 = tosa.transpose %360, %15 : (tensor<1x12x197x64xf16>, tensor<4xi64>) -> tensor<1x197x12x64xf16>
    %362 = tosa.reshape %361 {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf16>) -> tensor<1x197x768xf16>
    %363 = tosa.matmul %362, %4 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %364 = tosa.mul %363, %12 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %365 = tosa.mul %global391, %364 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %366 = tosa.mul %global386, %364 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %367 = tosa.reduce_sum %366 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %368 = tosa.pow %global390, %9 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %369 = tosa.mul %368, %10 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %370 = tosa.mul %369, %367 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    %371 = tosa.mul %370, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %372 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%371 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %373 = tosa.mul %global386, %372 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %374 = tosa.add %365, %373 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %375 = tosa.add %374, %373 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %376 = tosa.add %335, %375 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %377 = tosa.negate %375 : (tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %378 = tosa.reduce_sum %377 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %379 = tosa.mul %378, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %380 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%379 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %381 = tosa.add %376, %380 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %382 = tosa.matmul %381, %8 : (tensor<1x197x768xf16>, tensor<1x768x3072xf16>) -> tensor<1x197x3072xf16>
    %383 = tosa.mul %global379, %382 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %384 = tosa.mul %global373, %382 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %385 = tosa.mul %global378, %global378 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %386 = tosa.sub %7, %385 : (tensor<f16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %387 = tosa.mul %386, %384 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %388 = tosa.mul %global44, %387 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %389 = tosa.pow %global372, %6 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %390 = tosa.mul %389, %17 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %391 = tosa.add %388, %390 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %392 = tosa.mul %383, %16 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %393 = tosa.add %391, %392 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %394 = tosa.matmul %393, %5 : (tensor<1x197x3072xf16>, tensor<1x3072x768xf16>) -> tensor<1x197x768xf16>
    %395 = tosa.mul %394, %12 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %396 = tosa.mul %global367, %395 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %397 = tosa.mul %global362, %395 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %398 = tosa.reduce_sum %397 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %399 = tosa.pow %global366, %9 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %400 = tosa.mul %399, %10 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %401 = tosa.mul %400, %398 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    %402 = tosa.mul %401, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %403 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%402 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %404 = tosa.mul %global362, %403 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %405 = tosa.add %396, %404 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %406 = tosa.add %405, %404 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %407 = tosa.add %381, %406 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %408 = tosa.negate %406 : (tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %409 = tosa.reduce_sum %408 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %410 = tosa.mul %409, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %411 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%410 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %412 = tosa.add %407, %411 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %413 = tosa.matmul %412, %4 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %414 = tosa.reshape %413 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %415 = tosa.transpose %414, %15 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %416 = tosa.reshape %415 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %417 = tosa.transpose %41, %3 : (tensor<12x197x64xf16>, tensor<3xi32>) -> tensor<12x64x197xf16>
    %418 = tosa.matmul %416, %417 : (tensor<12x197x64xf16>, tensor<12x64x197xf16>) -> tensor<12x197x197xf16>
    %419 = tosa.transpose %global355, %3 : (tensor<12x197x197xf16>, tensor<3xi32>) -> tensor<12x197x197xf16>
    %420 = tosa.matmul %419, %416 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %421 = tosa.mul %global354, %418 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %422 = tosa.mul %global352, %418 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %423 = tosa.reduce_sum %422 {axis = 2 : i32} : (tensor<12x197x197xf16>) -> tensor<12x197x1xf16>
    %424 = tosa.mul %global353, %global353 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %425 = tosa.negate %424 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %426 = tosa.reciprocal %425 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %427 = tosa.mul %426, %423 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %428 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%427 : tensor<12x197x1xf16>) outs(%cst_0 : tensor<12x197x197xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<12x197x197xf16>
    %429 = tosa.add %421, %428 : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %430 = tosa.mul %global352, %429 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %431 = tosa.mul %global20, %430 {shift = 0 : i8} : (tensor<f16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %432 = tosa.matmul %431, %41 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %433 = tosa.add %420, %432 : (tensor<12x197x64xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %434 = tosa.matmul %417, %431 : (tensor<12x64x197xf16>, tensor<12x197x197xf16>) -> tensor<12x64x197xf16>
    %435 = tosa.transpose %434, %13 : (tensor<12x64x197xf16>, tensor<3xi64>) -> tensor<12x197x64xf16>
    %436 = tosa.add %433, %435 : (tensor<12x197x64xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %437 = tosa.reshape %436 {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf16>) -> tensor<1x12x197x64xf16>
    %438 = tosa.transpose %437, %15 : (tensor<1x12x197x64xf16>, tensor<4xi64>) -> tensor<1x197x12x64xf16>
    %439 = tosa.reshape %438 {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf16>) -> tensor<1x197x768xf16>
    %440 = tosa.matmul %439, %4 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %441 = tosa.mul %440, %12 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %442 = tosa.mul %global344, %441 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %443 = tosa.mul %global339, %441 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %444 = tosa.reduce_sum %443 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %445 = tosa.pow %global343, %9 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %446 = tosa.mul %445, %10 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %447 = tosa.mul %446, %444 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    %448 = tosa.mul %447, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %449 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%448 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %450 = tosa.mul %global339, %449 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %451 = tosa.add %442, %450 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %452 = tosa.add %451, %450 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %453 = tosa.add %412, %452 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %454 = tosa.negate %452 : (tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %455 = tosa.reduce_sum %454 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %456 = tosa.mul %455, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %457 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%456 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %458 = tosa.add %453, %457 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %459 = tosa.matmul %458, %8 : (tensor<1x197x768xf16>, tensor<1x768x3072xf16>) -> tensor<1x197x3072xf16>
    %460 = tosa.mul %global332, %459 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %461 = tosa.mul %global326, %459 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %462 = tosa.mul %global331, %global331 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %463 = tosa.sub %7, %462 : (tensor<f16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %464 = tosa.mul %463, %461 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %465 = tosa.mul %global44, %464 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %466 = tosa.pow %global325, %6 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %467 = tosa.mul %466, %17 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %468 = tosa.add %465, %467 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %469 = tosa.mul %460, %16 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %470 = tosa.add %468, %469 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %471 = tosa.matmul %470, %5 : (tensor<1x197x3072xf16>, tensor<1x3072x768xf16>) -> tensor<1x197x768xf16>
    %472 = tosa.mul %471, %12 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %473 = tosa.mul %global320, %472 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %474 = tosa.mul %global315, %472 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %475 = tosa.reduce_sum %474 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %476 = tosa.pow %global319, %9 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %477 = tosa.mul %476, %10 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %478 = tosa.mul %477, %475 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    %479 = tosa.mul %478, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %480 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%479 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %481 = tosa.mul %global315, %480 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %482 = tosa.add %473, %481 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %483 = tosa.add %482, %481 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %484 = tosa.add %458, %483 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %485 = tosa.negate %483 : (tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %486 = tosa.reduce_sum %485 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %487 = tosa.mul %486, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %488 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%487 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %489 = tosa.add %484, %488 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %490 = tosa.matmul %489, %4 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %491 = tosa.reshape %490 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %492 = tosa.transpose %491, %15 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %493 = tosa.reshape %492 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %494 = tosa.transpose %38, %3 : (tensor<12x197x64xf16>, tensor<3xi32>) -> tensor<12x64x197xf16>
    %495 = tosa.matmul %493, %494 : (tensor<12x197x64xf16>, tensor<12x64x197xf16>) -> tensor<12x197x197xf16>
    %496 = tosa.transpose %global308, %3 : (tensor<12x197x197xf16>, tensor<3xi32>) -> tensor<12x197x197xf16>
    %497 = tosa.matmul %496, %493 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %498 = tosa.mul %global307, %495 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %499 = tosa.mul %global305, %495 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %500 = tosa.reduce_sum %499 {axis = 2 : i32} : (tensor<12x197x197xf16>) -> tensor<12x197x1xf16>
    %501 = tosa.mul %global306, %global306 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %502 = tosa.negate %501 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %503 = tosa.reciprocal %502 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %504 = tosa.mul %503, %500 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %505 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%504 : tensor<12x197x1xf16>) outs(%cst_0 : tensor<12x197x197xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<12x197x197xf16>
    %506 = tosa.add %498, %505 : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %507 = tosa.mul %global305, %506 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %508 = tosa.mul %global20, %507 {shift = 0 : i8} : (tensor<f16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %509 = tosa.matmul %508, %38 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %510 = tosa.add %497, %509 : (tensor<12x197x64xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %511 = tosa.matmul %494, %508 : (tensor<12x64x197xf16>, tensor<12x197x197xf16>) -> tensor<12x64x197xf16>
    %512 = tosa.transpose %511, %13 : (tensor<12x64x197xf16>, tensor<3xi64>) -> tensor<12x197x64xf16>
    %513 = tosa.add %510, %512 : (tensor<12x197x64xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %514 = tosa.reshape %513 {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf16>) -> tensor<1x12x197x64xf16>
    %515 = tosa.transpose %514, %15 : (tensor<1x12x197x64xf16>, tensor<4xi64>) -> tensor<1x197x12x64xf16>
    %516 = tosa.reshape %515 {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf16>) -> tensor<1x197x768xf16>
    %517 = tosa.matmul %516, %4 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %518 = tosa.mul %517, %12 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %519 = tosa.mul %global297, %518 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %520 = tosa.mul %global292, %518 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %521 = tosa.reduce_sum %520 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %522 = tosa.pow %global296, %9 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %523 = tosa.mul %522, %10 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %524 = tosa.mul %523, %521 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    %525 = tosa.mul %524, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %526 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%525 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %527 = tosa.mul %global292, %526 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %528 = tosa.add %519, %527 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %529 = tosa.add %528, %527 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %530 = tosa.add %489, %529 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %531 = tosa.negate %529 : (tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %532 = tosa.reduce_sum %531 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %533 = tosa.mul %532, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %534 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%533 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %535 = tosa.add %530, %534 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %536 = tosa.matmul %535, %8 : (tensor<1x197x768xf16>, tensor<1x768x3072xf16>) -> tensor<1x197x3072xf16>
    %537 = tosa.mul %global285, %536 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %538 = tosa.mul %global279, %536 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %539 = tosa.mul %global284, %global284 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %540 = tosa.sub %7, %539 : (tensor<f16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %541 = tosa.mul %540, %538 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %542 = tosa.mul %global44, %541 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %543 = tosa.pow %global278, %6 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %544 = tosa.mul %543, %17 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %545 = tosa.add %542, %544 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %546 = tosa.mul %537, %16 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %547 = tosa.add %545, %546 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %548 = tosa.matmul %547, %5 : (tensor<1x197x3072xf16>, tensor<1x3072x768xf16>) -> tensor<1x197x768xf16>
    %549 = tosa.mul %548, %12 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %550 = tosa.mul %global273, %549 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %551 = tosa.mul %global268, %549 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %552 = tosa.reduce_sum %551 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %553 = tosa.pow %global272, %9 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %554 = tosa.mul %553, %10 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %555 = tosa.mul %554, %552 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    %556 = tosa.mul %555, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %557 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%556 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %558 = tosa.mul %global268, %557 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %559 = tosa.add %550, %558 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %560 = tosa.add %559, %558 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %561 = tosa.add %535, %560 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %562 = tosa.negate %560 : (tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %563 = tosa.reduce_sum %562 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %564 = tosa.mul %563, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %565 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%564 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %566 = tosa.add %561, %565 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %567 = tosa.matmul %566, %4 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %568 = tosa.reshape %567 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %569 = tosa.transpose %568, %15 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %570 = tosa.reshape %569 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %571 = tosa.transpose %35, %3 : (tensor<12x197x64xf16>, tensor<3xi32>) -> tensor<12x64x197xf16>
    %572 = tosa.matmul %570, %571 : (tensor<12x197x64xf16>, tensor<12x64x197xf16>) -> tensor<12x197x197xf16>
    %573 = tosa.transpose %global261, %3 : (tensor<12x197x197xf16>, tensor<3xi32>) -> tensor<12x197x197xf16>
    %574 = tosa.matmul %573, %570 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %575 = tosa.mul %global260, %572 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %576 = tosa.mul %global258, %572 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %577 = tosa.reduce_sum %576 {axis = 2 : i32} : (tensor<12x197x197xf16>) -> tensor<12x197x1xf16>
    %578 = tosa.mul %global259, %global259 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %579 = tosa.negate %578 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %580 = tosa.reciprocal %579 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %581 = tosa.mul %580, %577 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %582 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%581 : tensor<12x197x1xf16>) outs(%cst_0 : tensor<12x197x197xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<12x197x197xf16>
    %583 = tosa.add %575, %582 : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %584 = tosa.mul %global258, %583 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %585 = tosa.mul %global20, %584 {shift = 0 : i8} : (tensor<f16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %586 = tosa.matmul %585, %35 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %587 = tosa.add %574, %586 : (tensor<12x197x64xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %588 = tosa.matmul %571, %585 : (tensor<12x64x197xf16>, tensor<12x197x197xf16>) -> tensor<12x64x197xf16>
    %589 = tosa.transpose %588, %13 : (tensor<12x64x197xf16>, tensor<3xi64>) -> tensor<12x197x64xf16>
    %590 = tosa.add %587, %589 : (tensor<12x197x64xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %591 = tosa.reshape %590 {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf16>) -> tensor<1x12x197x64xf16>
    %592 = tosa.transpose %591, %15 : (tensor<1x12x197x64xf16>, tensor<4xi64>) -> tensor<1x197x12x64xf16>
    %593 = tosa.reshape %592 {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf16>) -> tensor<1x197x768xf16>
    %594 = tosa.matmul %593, %4 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %595 = tosa.mul %594, %12 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %596 = tosa.mul %global250, %595 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %597 = tosa.mul %global245, %595 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %598 = tosa.reduce_sum %597 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %599 = tosa.pow %global249, %9 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %600 = tosa.mul %599, %10 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %601 = tosa.mul %600, %598 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    %602 = tosa.mul %601, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %603 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%602 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %604 = tosa.mul %global245, %603 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %605 = tosa.add %596, %604 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %606 = tosa.add %605, %604 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %607 = tosa.add %566, %606 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %608 = tosa.negate %606 : (tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %609 = tosa.reduce_sum %608 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %610 = tosa.mul %609, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %611 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%610 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %612 = tosa.add %607, %611 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %613 = tosa.matmul %612, %8 : (tensor<1x197x768xf16>, tensor<1x768x3072xf16>) -> tensor<1x197x3072xf16>
    %614 = tosa.mul %global238, %613 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %615 = tosa.mul %global232, %613 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %616 = tosa.mul %global237, %global237 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %617 = tosa.sub %7, %616 : (tensor<f16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %618 = tosa.mul %617, %615 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %619 = tosa.mul %global44, %618 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %620 = tosa.pow %global231, %6 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %621 = tosa.mul %620, %17 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %622 = tosa.add %619, %621 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %623 = tosa.mul %614, %16 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %624 = tosa.add %622, %623 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %625 = tosa.matmul %624, %5 : (tensor<1x197x3072xf16>, tensor<1x3072x768xf16>) -> tensor<1x197x768xf16>
    %626 = tosa.mul %625, %12 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %627 = tosa.mul %global226, %626 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %628 = tosa.mul %global221, %626 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %629 = tosa.reduce_sum %628 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %630 = tosa.pow %global225, %9 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %631 = tosa.mul %630, %10 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %632 = tosa.mul %631, %629 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    %633 = tosa.mul %632, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %634 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%633 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %635 = tosa.mul %global221, %634 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %636 = tosa.add %627, %635 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %637 = tosa.add %636, %635 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %638 = tosa.add %612, %637 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %639 = tosa.negate %637 : (tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %640 = tosa.reduce_sum %639 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %641 = tosa.mul %640, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %642 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%641 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %643 = tosa.add %638, %642 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %644 = tosa.matmul %643, %4 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %645 = tosa.reshape %644 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %646 = tosa.transpose %645, %15 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %647 = tosa.reshape %646 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %648 = tosa.transpose %32, %3 : (tensor<12x197x64xf16>, tensor<3xi32>) -> tensor<12x64x197xf16>
    %649 = tosa.matmul %647, %648 : (tensor<12x197x64xf16>, tensor<12x64x197xf16>) -> tensor<12x197x197xf16>
    %650 = tosa.transpose %global214, %3 : (tensor<12x197x197xf16>, tensor<3xi32>) -> tensor<12x197x197xf16>
    %651 = tosa.matmul %650, %647 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %652 = tosa.mul %global213, %649 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %653 = tosa.mul %global211, %649 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %654 = tosa.reduce_sum %653 {axis = 2 : i32} : (tensor<12x197x197xf16>) -> tensor<12x197x1xf16>
    %655 = tosa.mul %global212, %global212 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %656 = tosa.negate %655 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %657 = tosa.reciprocal %656 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %658 = tosa.mul %657, %654 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %659 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%658 : tensor<12x197x1xf16>) outs(%cst_0 : tensor<12x197x197xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<12x197x197xf16>
    %660 = tosa.add %652, %659 : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %661 = tosa.mul %global211, %660 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %662 = tosa.mul %global20, %661 {shift = 0 : i8} : (tensor<f16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %663 = tosa.matmul %662, %32 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %664 = tosa.add %651, %663 : (tensor<12x197x64xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %665 = tosa.matmul %648, %662 : (tensor<12x64x197xf16>, tensor<12x197x197xf16>) -> tensor<12x64x197xf16>
    %666 = tosa.transpose %665, %13 : (tensor<12x64x197xf16>, tensor<3xi64>) -> tensor<12x197x64xf16>
    %667 = tosa.add %664, %666 : (tensor<12x197x64xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %668 = tosa.reshape %667 {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf16>) -> tensor<1x12x197x64xf16>
    %669 = tosa.transpose %668, %15 : (tensor<1x12x197x64xf16>, tensor<4xi64>) -> tensor<1x197x12x64xf16>
    %670 = tosa.reshape %669 {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf16>) -> tensor<1x197x768xf16>
    %671 = tosa.matmul %670, %4 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %672 = tosa.mul %671, %12 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %673 = tosa.mul %global203, %672 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %674 = tosa.mul %global198, %672 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %675 = tosa.reduce_sum %674 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %676 = tosa.pow %global202, %9 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %677 = tosa.mul %676, %10 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %678 = tosa.mul %677, %675 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    %679 = tosa.mul %678, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %680 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%679 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %681 = tosa.mul %global198, %680 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %682 = tosa.add %673, %681 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %683 = tosa.add %682, %681 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %684 = tosa.add %643, %683 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %685 = tosa.negate %683 : (tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %686 = tosa.reduce_sum %685 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %687 = tosa.mul %686, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %688 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%687 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %689 = tosa.add %684, %688 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %690 = tosa.matmul %689, %8 : (tensor<1x197x768xf16>, tensor<1x768x3072xf16>) -> tensor<1x197x3072xf16>
    %691 = tosa.mul %global191, %690 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %692 = tosa.mul %global185, %690 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %693 = tosa.mul %global190, %global190 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %694 = tosa.sub %7, %693 : (tensor<f16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %695 = tosa.mul %694, %692 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %696 = tosa.mul %global44, %695 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %697 = tosa.pow %global184, %6 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %698 = tosa.mul %697, %17 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %699 = tosa.add %696, %698 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %700 = tosa.mul %691, %16 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %701 = tosa.add %699, %700 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %702 = tosa.matmul %701, %5 : (tensor<1x197x3072xf16>, tensor<1x3072x768xf16>) -> tensor<1x197x768xf16>
    %703 = tosa.mul %702, %12 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %704 = tosa.mul %global179, %703 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %705 = tosa.mul %global174, %703 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %706 = tosa.reduce_sum %705 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %707 = tosa.pow %global178, %9 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %708 = tosa.mul %707, %10 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %709 = tosa.mul %708, %706 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    %710 = tosa.mul %709, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %711 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%710 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %712 = tosa.mul %global174, %711 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %713 = tosa.add %704, %712 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %714 = tosa.add %713, %712 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %715 = tosa.add %689, %714 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %716 = tosa.negate %714 : (tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %717 = tosa.reduce_sum %716 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %718 = tosa.mul %717, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %719 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%718 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %720 = tosa.add %715, %719 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %721 = tosa.matmul %720, %4 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %722 = tosa.reshape %721 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %723 = tosa.transpose %722, %15 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %724 = tosa.reshape %723 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %725 = tosa.transpose %29, %3 : (tensor<12x197x64xf16>, tensor<3xi32>) -> tensor<12x64x197xf16>
    %726 = tosa.matmul %724, %725 : (tensor<12x197x64xf16>, tensor<12x64x197xf16>) -> tensor<12x197x197xf16>
    %727 = tosa.transpose %global167, %3 : (tensor<12x197x197xf16>, tensor<3xi32>) -> tensor<12x197x197xf16>
    %728 = tosa.matmul %727, %724 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %729 = tosa.mul %global166, %726 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %730 = tosa.mul %global164, %726 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %731 = tosa.reduce_sum %730 {axis = 2 : i32} : (tensor<12x197x197xf16>) -> tensor<12x197x1xf16>
    %732 = tosa.mul %global165, %global165 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %733 = tosa.negate %732 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %734 = tosa.reciprocal %733 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %735 = tosa.mul %734, %731 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %736 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%735 : tensor<12x197x1xf16>) outs(%cst_0 : tensor<12x197x197xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<12x197x197xf16>
    %737 = tosa.add %729, %736 : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %738 = tosa.mul %global164, %737 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %739 = tosa.mul %global20, %738 {shift = 0 : i8} : (tensor<f16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %740 = tosa.matmul %739, %29 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %741 = tosa.add %728, %740 : (tensor<12x197x64xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %742 = tosa.matmul %725, %739 : (tensor<12x64x197xf16>, tensor<12x197x197xf16>) -> tensor<12x64x197xf16>
    %743 = tosa.transpose %742, %13 : (tensor<12x64x197xf16>, tensor<3xi64>) -> tensor<12x197x64xf16>
    %744 = tosa.add %741, %743 : (tensor<12x197x64xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %745 = tosa.reshape %744 {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf16>) -> tensor<1x12x197x64xf16>
    %746 = tosa.transpose %745, %15 : (tensor<1x12x197x64xf16>, tensor<4xi64>) -> tensor<1x197x12x64xf16>
    %747 = tosa.reshape %746 {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf16>) -> tensor<1x197x768xf16>
    %748 = tosa.matmul %747, %4 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %749 = tosa.mul %748, %12 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %750 = tosa.mul %global156, %749 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %751 = tosa.mul %global151, %749 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %752 = tosa.reduce_sum %751 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %753 = tosa.pow %global155, %9 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %754 = tosa.mul %753, %10 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %755 = tosa.mul %754, %752 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    %756 = tosa.mul %755, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %757 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%756 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %758 = tosa.mul %global151, %757 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %759 = tosa.add %750, %758 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %760 = tosa.add %759, %758 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %761 = tosa.add %720, %760 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %762 = tosa.negate %760 : (tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %763 = tosa.reduce_sum %762 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %764 = tosa.mul %763, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %765 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%764 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %766 = tosa.add %761, %765 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %767 = tosa.matmul %766, %8 : (tensor<1x197x768xf16>, tensor<1x768x3072xf16>) -> tensor<1x197x3072xf16>
    %768 = tosa.mul %global144, %767 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %769 = tosa.mul %global138, %767 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %770 = tosa.mul %global143, %global143 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %771 = tosa.sub %7, %770 : (tensor<f16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %772 = tosa.mul %771, %769 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %773 = tosa.mul %global44, %772 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %774 = tosa.pow %global137, %6 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %775 = tosa.mul %774, %17 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %776 = tosa.add %773, %775 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %777 = tosa.mul %768, %16 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %778 = tosa.add %776, %777 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %779 = tosa.matmul %778, %5 : (tensor<1x197x3072xf16>, tensor<1x3072x768xf16>) -> tensor<1x197x768xf16>
    %780 = tosa.mul %779, %12 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %781 = tosa.mul %global132, %780 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %782 = tosa.mul %global127, %780 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %783 = tosa.reduce_sum %782 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %784 = tosa.pow %global131, %9 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %785 = tosa.mul %784, %10 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %786 = tosa.mul %785, %783 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    %787 = tosa.mul %786, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %788 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%787 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %789 = tosa.mul %global127, %788 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %790 = tosa.add %781, %789 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %791 = tosa.add %790, %789 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %792 = tosa.add %766, %791 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %793 = tosa.negate %791 : (tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %794 = tosa.reduce_sum %793 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %795 = tosa.mul %794, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %796 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%795 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %797 = tosa.add %792, %796 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %798 = tosa.matmul %797, %4 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %799 = tosa.reshape %798 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %800 = tosa.transpose %799, %15 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %801 = tosa.reshape %800 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %802 = tosa.transpose %26, %3 : (tensor<12x197x64xf16>, tensor<3xi32>) -> tensor<12x64x197xf16>
    %803 = tosa.matmul %801, %802 : (tensor<12x197x64xf16>, tensor<12x64x197xf16>) -> tensor<12x197x197xf16>
    %804 = tosa.transpose %global120, %3 : (tensor<12x197x197xf16>, tensor<3xi32>) -> tensor<12x197x197xf16>
    %805 = tosa.matmul %804, %801 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %806 = tosa.mul %global119, %803 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %807 = tosa.mul %global117, %803 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %808 = tosa.reduce_sum %807 {axis = 2 : i32} : (tensor<12x197x197xf16>) -> tensor<12x197x1xf16>
    %809 = tosa.mul %global118, %global118 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %810 = tosa.negate %809 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %811 = tosa.reciprocal %810 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %812 = tosa.mul %811, %808 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %813 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%812 : tensor<12x197x1xf16>) outs(%cst_0 : tensor<12x197x197xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<12x197x197xf16>
    %814 = tosa.add %806, %813 : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %815 = tosa.mul %global117, %814 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %816 = tosa.mul %global20, %815 {shift = 0 : i8} : (tensor<f16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %817 = tosa.matmul %816, %26 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %818 = tosa.add %805, %817 : (tensor<12x197x64xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %819 = tosa.matmul %802, %816 : (tensor<12x64x197xf16>, tensor<12x197x197xf16>) -> tensor<12x64x197xf16>
    %820 = tosa.transpose %819, %13 : (tensor<12x64x197xf16>, tensor<3xi64>) -> tensor<12x197x64xf16>
    %821 = tosa.add %818, %820 : (tensor<12x197x64xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %822 = tosa.reshape %821 {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf16>) -> tensor<1x12x197x64xf16>
    %823 = tosa.transpose %822, %15 : (tensor<1x12x197x64xf16>, tensor<4xi64>) -> tensor<1x197x12x64xf16>
    %824 = tosa.reshape %823 {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf16>) -> tensor<1x197x768xf16>
    %825 = tosa.matmul %824, %4 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %826 = tosa.mul %825, %12 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %827 = tosa.mul %global109, %826 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %828 = tosa.mul %global104, %826 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %829 = tosa.reduce_sum %828 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %830 = tosa.pow %global108, %9 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %831 = tosa.mul %830, %10 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %832 = tosa.mul %831, %829 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    %833 = tosa.mul %832, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %834 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%833 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %835 = tosa.mul %global104, %834 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %836 = tosa.add %827, %835 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %837 = tosa.add %836, %835 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %838 = tosa.add %797, %837 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %839 = tosa.negate %837 : (tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %840 = tosa.reduce_sum %839 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %841 = tosa.mul %840, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %842 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%841 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %843 = tosa.add %838, %842 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %844 = tosa.matmul %843, %8 : (tensor<1x197x768xf16>, tensor<1x768x3072xf16>) -> tensor<1x197x3072xf16>
    %845 = tosa.mul %global97, %844 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %846 = tosa.mul %global91, %844 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %847 = tosa.mul %global96, %global96 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %848 = tosa.sub %7, %847 : (tensor<f16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %849 = tosa.mul %848, %846 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %850 = tosa.mul %global44, %849 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %851 = tosa.pow %global90, %6 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %852 = tosa.mul %851, %17 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %853 = tosa.add %850, %852 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %854 = tosa.mul %845, %16 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %855 = tosa.add %853, %854 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %856 = tosa.matmul %855, %5 : (tensor<1x197x3072xf16>, tensor<1x3072x768xf16>) -> tensor<1x197x768xf16>
    %857 = tosa.mul %856, %12 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %858 = tosa.mul %global85, %857 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %859 = tosa.mul %global80, %857 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %860 = tosa.reduce_sum %859 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %861 = tosa.pow %global84, %9 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %862 = tosa.mul %861, %10 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %863 = tosa.mul %862, %860 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    %864 = tosa.mul %863, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %865 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%864 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %866 = tosa.mul %global80, %865 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %867 = tosa.add %858, %866 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %868 = tosa.add %867, %866 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %869 = tosa.add %843, %868 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %870 = tosa.negate %868 : (tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %871 = tosa.reduce_sum %870 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %872 = tosa.mul %871, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %873 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%872 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %874 = tosa.add %869, %873 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %875 = tosa.matmul %874, %4 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %876 = tosa.reshape %875 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %877 = tosa.transpose %876, %15 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %878 = tosa.reshape %877 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %879 = tosa.transpose %23, %3 : (tensor<12x197x64xf16>, tensor<3xi32>) -> tensor<12x64x197xf16>
    %880 = tosa.matmul %878, %879 : (tensor<12x197x64xf16>, tensor<12x64x197xf16>) -> tensor<12x197x197xf16>
    %881 = tosa.transpose %global73, %3 : (tensor<12x197x197xf16>, tensor<3xi32>) -> tensor<12x197x197xf16>
    %882 = tosa.matmul %881, %878 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %883 = tosa.mul %global72, %880 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %884 = tosa.mul %global70, %880 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %885 = tosa.reduce_sum %884 {axis = 2 : i32} : (tensor<12x197x197xf16>) -> tensor<12x197x1xf16>
    %886 = tosa.mul %global71, %global71 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %887 = tosa.negate %886 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %888 = tosa.reciprocal %887 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %889 = tosa.mul %888, %885 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %890 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%889 : tensor<12x197x1xf16>) outs(%cst_0 : tensor<12x197x197xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<12x197x197xf16>
    %891 = tosa.add %883, %890 : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %892 = tosa.mul %global70, %891 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %893 = tosa.mul %global20, %892 {shift = 0 : i8} : (tensor<f16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %894 = tosa.matmul %893, %23 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %895 = tosa.add %882, %894 : (tensor<12x197x64xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %896 = tosa.matmul %879, %893 : (tensor<12x64x197xf16>, tensor<12x197x197xf16>) -> tensor<12x64x197xf16>
    %897 = tosa.transpose %896, %13 : (tensor<12x64x197xf16>, tensor<3xi64>) -> tensor<12x197x64xf16>
    %898 = tosa.add %895, %897 : (tensor<12x197x64xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %899 = tosa.reshape %898 {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf16>) -> tensor<1x12x197x64xf16>
    %900 = tosa.transpose %899, %15 : (tensor<1x12x197x64xf16>, tensor<4xi64>) -> tensor<1x197x12x64xf16>
    %901 = tosa.reshape %900 {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf16>) -> tensor<1x197x768xf16>
    %902 = tosa.matmul %901, %4 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %903 = tosa.mul %902, %12 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %904 = tosa.mul %global62, %903 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %905 = tosa.mul %global57, %903 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %906 = tosa.reduce_sum %905 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %907 = tosa.pow %global61, %9 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %908 = tosa.mul %907, %10 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %909 = tosa.mul %908, %906 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    %910 = tosa.mul %909, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %911 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%910 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %912 = tosa.mul %global57, %911 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %913 = tosa.add %904, %912 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %914 = tosa.add %913, %912 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %915 = tosa.add %874, %914 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %916 = tosa.negate %914 : (tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %917 = tosa.reduce_sum %916 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %918 = tosa.mul %917, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %919 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%918 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %920 = tosa.add %915, %919 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %921 = tosa.matmul %920, %8 : (tensor<1x197x768xf16>, tensor<1x768x3072xf16>) -> tensor<1x197x3072xf16>
    %922 = tosa.mul %global50, %921 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %923 = tosa.mul %global43, %921 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %924 = tosa.mul %global49, %global49 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %925 = tosa.sub %7, %924 : (tensor<f16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %926 = tosa.mul %925, %923 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %927 = tosa.mul %global44, %926 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %928 = tosa.pow %global42, %6 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %929 = tosa.mul %928, %17 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %930 = tosa.add %927, %929 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %931 = tosa.mul %922, %16 {shift = 0 : i8} : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %932 = tosa.add %930, %931 : (tensor<1x197x3072xf16>, tensor<1x197x3072xf16>) -> tensor<1x197x3072xf16>
    %933 = tosa.matmul %932, %5 : (tensor<1x197x3072xf16>, tensor<1x3072x768xf16>) -> tensor<1x197x768xf16>
    %934 = tosa.mul %933, %12 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %935 = tosa.mul %global37, %934 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %936 = tosa.mul %global32, %934 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %937 = tosa.reduce_sum %936 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %938 = tosa.pow %global36, %9 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %939 = tosa.mul %938, %10 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %940 = tosa.mul %939, %937 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    %941 = tosa.mul %940, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %942 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%941 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %943 = tosa.mul %global32, %942 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %944 = tosa.add %935, %943 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %945 = tosa.add %944, %943 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %946 = tosa.add %920, %945 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %947 = tosa.negate %945 : (tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %948 = tosa.reduce_sum %947 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %949 = tosa.mul %948, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %950 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%949 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %951 = tosa.add %946, %950 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %952 = tosa.matmul %951, %4 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %953 = tosa.reshape %952 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf16>) -> tensor<1x197x12x64xf16>
    %954 = tosa.transpose %953, %15 : (tensor<1x197x12x64xf16>, tensor<4xi64>) -> tensor<1x12x197x64xf16>
    %955 = tosa.reshape %954 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf16>) -> tensor<12x197x64xf16>
    %956 = tosa.transpose %20, %3 : (tensor<12x197x64xf16>, tensor<3xi32>) -> tensor<12x64x197xf16>
    %957 = tosa.matmul %955, %956 : (tensor<12x197x64xf16>, tensor<12x64x197xf16>) -> tensor<12x197x197xf16>
    %958 = tosa.transpose %global25, %3 : (tensor<12x197x197xf16>, tensor<3xi32>) -> tensor<12x197x197xf16>
    %959 = tosa.matmul %958, %955 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %960 = tosa.mul %global24, %957 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %961 = tosa.mul %global22, %957 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %962 = tosa.reduce_sum %961 {axis = 2 : i32} : (tensor<12x197x197xf16>) -> tensor<12x197x1xf16>
    %963 = tosa.mul %global23, %global23 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %964 = tosa.negate %963 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %965 = tosa.reciprocal %964 : (tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %966 = tosa.mul %965, %962 {shift = 0 : i8} : (tensor<12x197x1xf16>, tensor<12x197x1xf16>) -> tensor<12x197x1xf16>
    %967 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%966 : tensor<12x197x1xf16>) outs(%cst_0 : tensor<12x197x197xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<12x197x197xf16>
    %968 = tosa.add %960, %967 : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %969 = tosa.mul %global22, %968 {shift = 0 : i8} : (tensor<12x197x197xf16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %970 = tosa.mul %global20, %969 {shift = 0 : i8} : (tensor<f16>, tensor<12x197x197xf16>) -> tensor<12x197x197xf16>
    %971 = tosa.matmul %970, %20 : (tensor<12x197x197xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %972 = tosa.add %959, %971 : (tensor<12x197x64xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %973 = tosa.matmul %956, %970 : (tensor<12x64x197xf16>, tensor<12x197x197xf16>) -> tensor<12x64x197xf16>
    %974 = tosa.transpose %973, %13 : (tensor<12x64x197xf16>, tensor<3xi64>) -> tensor<12x197x64xf16>
    %975 = tosa.add %972, %974 : (tensor<12x197x64xf16>, tensor<12x197x64xf16>) -> tensor<12x197x64xf16>
    %976 = tosa.reshape %975 {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf16>) -> tensor<1x12x197x64xf16>
    %977 = tosa.transpose %976, %15 : (tensor<1x12x197x64xf16>, tensor<4xi64>) -> tensor<1x197x12x64xf16>
    %978 = tosa.reshape %977 {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf16>) -> tensor<1x197x768xf16>
    %979 = tosa.matmul %978, %4 : (tensor<1x197x768xf16>, tensor<1x768x768xf16>) -> tensor<1x197x768xf16>
    %980 = tosa.mul %979, %12 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<768xf16>) -> tensor<1x197x768xf16>
    %981 = tosa.mul %global13, %980 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %982 = tosa.mul %global8, %980 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %983 = tosa.reduce_sum %982 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %984 = tosa.pow %global12, %9 : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %985 = tosa.mul %984, %10 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %986 = tosa.mul %985, %983 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<1x197x1xf16>) -> tensor<1x197x1xf16>
    %987 = tosa.mul %986, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %988 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%987 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %989 = tosa.mul %global8, %988 {shift = 0 : i8} : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %990 = tosa.add %981, %989 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %991 = tosa.add %990, %989 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %992 = tosa.add %951, %991 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %993 = tosa.negate %991 : (tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %994 = tosa.reduce_sum %993 {axis = 2 : i32} : (tensor<1x197x768xf16>) -> tensor<1x197x1xf16>
    %995 = tosa.mul %994, %14 {shift = 0 : i8} : (tensor<1x197x1xf16>, tensor<f16>) -> tensor<1x197x1xf16>
    %996 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%995 : tensor<1x197x1xf16>) outs(%cst_1 : tensor<1x197x768xf16>) {
    ^bb0(%in: f16, %out: f16):
      linalg.yield %in : f16
    } -> tensor<1x197x768xf16>
    %997 = tosa.add %992, %996 : (tensor<1x197x768xf16>, tensor<1x197x768xf16>) -> tensor<1x197x768xf16>
    %extracted_slice = tensor.extract_slice %997[0, 1, 0] [1, 196, 768] [1, 1, 1] : tensor<1x197x768xf16> to tensor<1x196x768xf16>
    %998 = tosa.transpose %extracted_slice, %13 : (tensor<1x196x768xf16>, tensor<3xi64>) -> tensor<1x768x196xf16>
    %999 = tosa.reshape %998 {new_shape = array<i64: 1, 768, 14, 14>} : (tensor<1x768x196xf16>) -> tensor<1x768x14x14xf16>
    %1000 = tosa.transpose %999, %2 : (tensor<1x768x14x14xf16>, tensor<4xi64>) -> tensor<1x14x14x768xf16>
    %1001 = tosa.transpose_conv2d %1000, %1, %cst {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 224, 224, 3>, stride = array<i64: 16, 16>} : (tensor<1x14x14x768xf16>, tensor<3x16x16x768xf16>, tensor<3xf16>) -> tensor<1x224x224x3xf16>
    %1002 = tosa.transpose %1001, %0 : (tensor<1x224x224x3xf16>, tensor<4xi64>) -> tensor<1x3x224x224xf16>
    return %1002 : tensor<1x3x224x224xf16>
  }
}

