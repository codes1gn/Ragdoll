#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 + d4, d2 + d5, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
#map3 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
module {
  ml_program.global private mutable @global1116 : tensor<1x5x5x2048xf32>
  ml_program.global private mutable @global1110 : tensor<1x192x5x5xf32>
  ml_program.global private mutable @global1109 : tensor<1x192x5x5xf32>
  ml_program.global private mutable @global1106 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global1098 : tensor<1x5x5x2048xf32>
  ml_program.global private mutable @global1094 : tensor<1x384x5x5xf32>
  ml_program.global private mutable @global1093 : tensor<1x384x5x5xf32>
  ml_program.global private mutable @global1090 : tensor<1x384x1x1xf32>
  ml_program.global private mutable @global1084 : tensor<1x384x5x5xf32>
  ml_program.global private mutable @global1083 : tensor<1x384x5x5xf32>
  ml_program.global private mutable @global1080 : tensor<1x384x1x1xf32>
  ml_program.global private mutable @global1074 : tensor<1x384x5x5xf32>
  ml_program.global private mutable @global1073 : tensor<1x384x5x5xf32>
  ml_program.global private mutable @global1070 : tensor<1x384x1x1xf32>
  ml_program.global private mutable @global1064 : tensor<1x448x5x5xf32>
  ml_program.global private mutable @global1063 : tensor<1x448x5x5xf32>
  ml_program.global private mutable @global1060 : tensor<1x448x1x1xf32>
  ml_program.global private mutable @global1051 : tensor<1x384x5x5xf32>
  ml_program.global private mutable @global1050 : tensor<1x384x5x5xf32>
  ml_program.global private mutable @global1047 : tensor<1x384x1x1xf32>
  ml_program.global private mutable @global1041 : tensor<1x384x5x5xf32>
  ml_program.global private mutable @global1040 : tensor<1x384x5x5xf32>
  ml_program.global private mutable @global1037 : tensor<1x384x1x1xf32>
  ml_program.global private mutable @global1031 : tensor<1x384x5x5xf32>
  ml_program.global private mutable @global1030 : tensor<1x384x5x5xf32>
  ml_program.global private mutable @global1027 : tensor<1x384x1x1xf32>
  ml_program.global private mutable @global1021 : tensor<1x320x5x5xf32>
  ml_program.global private mutable @global1020 : tensor<1x320x5x5xf32>
  ml_program.global private mutable @global1017 : tensor<1x320x1x1xf32>
  ml_program.global private mutable @global1006 : tensor<1x192x5x5xf32>
  ml_program.global private mutable @global1005 : tensor<1x192x5x5xf32>
  ml_program.global private mutable @global1002 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global994 : tensor<1x5x5x1280xf32>
  ml_program.global private mutable @global990 : tensor<1x384x5x5xf32>
  ml_program.global private mutable @global989 : tensor<1x384x5x5xf32>
  ml_program.global private mutable @global986 : tensor<1x384x1x1xf32>
  ml_program.global private mutable @global980 : tensor<1x384x5x5xf32>
  ml_program.global private mutable @global979 : tensor<1x384x5x5xf32>
  ml_program.global private mutable @global976 : tensor<1x384x1x1xf32>
  ml_program.global private mutable @global970 : tensor<1x384x5x5xf32>
  ml_program.global private mutable @global969 : tensor<1x384x5x5xf32>
  ml_program.global private mutable @global966 : tensor<1x384x1x1xf32>
  ml_program.global private mutable @global960 : tensor<1x448x5x5xf32>
  ml_program.global private mutable @global959 : tensor<1x448x5x5xf32>
  ml_program.global private mutable @global956 : tensor<1x448x1x1xf32>
  ml_program.global private mutable @global947 : tensor<1x384x5x5xf32>
  ml_program.global private mutable @global946 : tensor<1x384x5x5xf32>
  ml_program.global private mutable @global943 : tensor<1x384x1x1xf32>
  ml_program.global private mutable @global937 : tensor<1x384x5x5xf32>
  ml_program.global private mutable @global936 : tensor<1x384x5x5xf32>
  ml_program.global private mutable @global933 : tensor<1x384x1x1xf32>
  ml_program.global private mutable @global927 : tensor<1x384x5x5xf32>
  ml_program.global private mutable @global926 : tensor<1x384x5x5xf32>
  ml_program.global private mutable @global923 : tensor<1x384x1x1xf32>
  ml_program.global private mutable @global917 : tensor<1x320x5x5xf32>
  ml_program.global private mutable @global916 : tensor<1x320x5x5xf32>
  ml_program.global private mutable @global913 : tensor<1x320x1x1xf32>
  ml_program.global private mutable @global902 : tensor<1x5x5x768xf32>
  ml_program.global private mutable @global901 : tensor<1x12x12x768xf32>
  ml_program.global private mutable @global900 : tensor<1x192x5x5xf32>
  ml_program.global private mutable @global899 : tensor<1x192x5x5xf32>
  ml_program.global private mutable @global896 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global890 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global889 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global886 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global880 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global879 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global876 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global870 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global869 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global866 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global860 : tensor<1x320x5x5xf32>
  ml_program.global private mutable @global859 : tensor<1x320x5x5xf32>
  ml_program.global private mutable @global856 : tensor<1x320x1x1xf32>
  ml_program.global private mutable @global850 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global849 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global846 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global835 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global834 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global831 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global823 : tensor<1x12x12x768xf32>
  ml_program.global private mutable @global822 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global821 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global818 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global812 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global811 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global808 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global802 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global801 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global798 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global792 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global791 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global788 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global782 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global781 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global778 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global772 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global771 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global768 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global762 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global761 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global758 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global752 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global751 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global748 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global742 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global741 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global738 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global727 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global726 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global723 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global715 : tensor<1x12x12x768xf32>
  ml_program.global private mutable @global714 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global713 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global710 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global704 : tensor<1x160x12x12xf32>
  ml_program.global private mutable @global703 : tensor<1x160x12x12xf32>
  ml_program.global private mutable @global700 : tensor<1x160x1x1xf32>
  ml_program.global private mutable @global694 : tensor<1x160x12x12xf32>
  ml_program.global private mutable @global693 : tensor<1x160x12x12xf32>
  ml_program.global private mutable @global690 : tensor<1x160x1x1xf32>
  ml_program.global private mutable @global684 : tensor<1x160x12x12xf32>
  ml_program.global private mutable @global683 : tensor<1x160x12x12xf32>
  ml_program.global private mutable @global680 : tensor<1x160x1x1xf32>
  ml_program.global private mutable @global674 : tensor<1x160x12x12xf32>
  ml_program.global private mutable @global673 : tensor<1x160x12x12xf32>
  ml_program.global private mutable @global670 : tensor<1x160x1x1xf32>
  ml_program.global private mutable @global664 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global663 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global660 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global654 : tensor<1x160x12x12xf32>
  ml_program.global private mutable @global653 : tensor<1x160x12x12xf32>
  ml_program.global private mutable @global650 : tensor<1x160x1x1xf32>
  ml_program.global private mutable @global644 : tensor<1x160x12x12xf32>
  ml_program.global private mutable @global643 : tensor<1x160x12x12xf32>
  ml_program.global private mutable @global640 : tensor<1x160x1x1xf32>
  ml_program.global private mutable @global634 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global633 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global630 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global619 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global618 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global615 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global607 : tensor<1x12x12x768xf32>
  ml_program.global private mutable @global606 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global605 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global602 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global596 : tensor<1x160x12x12xf32>
  ml_program.global private mutable @global595 : tensor<1x160x12x12xf32>
  ml_program.global private mutable @global592 : tensor<1x160x1x1xf32>
  ml_program.global private mutable @global586 : tensor<1x160x12x12xf32>
  ml_program.global private mutable @global585 : tensor<1x160x12x12xf32>
  ml_program.global private mutable @global582 : tensor<1x160x1x1xf32>
  ml_program.global private mutable @global576 : tensor<1x160x12x12xf32>
  ml_program.global private mutable @global575 : tensor<1x160x12x12xf32>
  ml_program.global private mutable @global572 : tensor<1x160x1x1xf32>
  ml_program.global private mutable @global566 : tensor<1x160x12x12xf32>
  ml_program.global private mutable @global565 : tensor<1x160x12x12xf32>
  ml_program.global private mutable @global562 : tensor<1x160x1x1xf32>
  ml_program.global private mutable @global556 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global555 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global552 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global546 : tensor<1x160x12x12xf32>
  ml_program.global private mutable @global545 : tensor<1x160x12x12xf32>
  ml_program.global private mutable @global542 : tensor<1x160x1x1xf32>
  ml_program.global private mutable @global536 : tensor<1x160x12x12xf32>
  ml_program.global private mutable @global535 : tensor<1x160x12x12xf32>
  ml_program.global private mutable @global532 : tensor<1x160x1x1xf32>
  ml_program.global private mutable @global526 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global525 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global522 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global511 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global510 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global507 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global499 : tensor<1x12x12x768xf32>
  ml_program.global private mutable @global498 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global497 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global494 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global488 : tensor<1x128x12x12xf32>
  ml_program.global private mutable @global487 : tensor<1x128x12x12xf32>
  ml_program.global private mutable @global484 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global478 : tensor<1x128x12x12xf32>
  ml_program.global private mutable @global477 : tensor<1x128x12x12xf32>
  ml_program.global private mutable @global474 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global468 : tensor<1x128x12x12xf32>
  ml_program.global private mutable @global467 : tensor<1x128x12x12xf32>
  ml_program.global private mutable @global464 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global458 : tensor<1x128x12x12xf32>
  ml_program.global private mutable @global457 : tensor<1x128x12x12xf32>
  ml_program.global private mutable @global454 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global448 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global447 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global444 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global438 : tensor<1x128x12x12xf32>
  ml_program.global private mutable @global437 : tensor<1x128x12x12xf32>
  ml_program.global private mutable @global434 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global428 : tensor<1x128x12x12xf32>
  ml_program.global private mutable @global427 : tensor<1x128x12x12xf32>
  ml_program.global private mutable @global424 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global418 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global417 : tensor<1x192x12x12xf32>
  ml_program.global private mutable @global414 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global403 : tensor<1x12x12x288xf32>
  ml_program.global private mutable @global402 : tensor<1x25x25x288xf32>
  ml_program.global private mutable @global401 : tensor<1x96x12x12xf32>
  ml_program.global private mutable @global400 : tensor<1x96x12x12xf32>
  ml_program.global private mutable @global397 : tensor<1x96x1x1xf32>
  ml_program.global private mutable @global391 : tensor<1x96x25x25xf32>
  ml_program.global private mutable @global390 : tensor<1x96x25x25xf32>
  ml_program.global private mutable @global387 : tensor<1x96x1x1xf32>
  ml_program.global private mutable @global381 : tensor<1x64x25x25xf32>
  ml_program.global private mutable @global380 : tensor<1x64x25x25xf32>
  ml_program.global private mutable @global377 : tensor<1x64x1x1xf32>
  ml_program.global private mutable @global371 : tensor<1x384x12x12xf32>
  ml_program.global private mutable @global370 : tensor<1x384x12x12xf32>
  ml_program.global private mutable @global367 : tensor<1x384x1x1xf32>
  ml_program.global private mutable @global356 : tensor<1x64x25x25xf32>
  ml_program.global private mutable @global355 : tensor<1x64x25x25xf32>
  ml_program.global private mutable @global352 : tensor<1x64x1x1xf32>
  ml_program.global private mutable @global344 : tensor<1x25x25x288xf32>
  ml_program.global private mutable @global343 : tensor<1x96x25x25xf32>
  ml_program.global private mutable @global342 : tensor<1x96x25x25xf32>
  ml_program.global private mutable @global339 : tensor<1x96x1x1xf32>
  ml_program.global private mutable @global333 : tensor<1x96x25x25xf32>
  ml_program.global private mutable @global332 : tensor<1x96x25x25xf32>
  ml_program.global private mutable @global329 : tensor<1x96x1x1xf32>
  ml_program.global private mutable @global323 : tensor<1x64x25x25xf32>
  ml_program.global private mutable @global322 : tensor<1x64x25x25xf32>
  ml_program.global private mutable @global319 : tensor<1x64x1x1xf32>
  ml_program.global private mutable @global313 : tensor<1x64x25x25xf32>
  ml_program.global private mutable @global312 : tensor<1x64x25x25xf32>
  ml_program.global private mutable @global309 : tensor<1x64x1x1xf32>
  ml_program.global private mutable @global303 : tensor<1x48x25x25xf32>
  ml_program.global private mutable @global302 : tensor<1x48x25x25xf32>
  ml_program.global private mutable @global299 : tensor<1x48x1x1xf32>
  ml_program.global private mutable @global293 : tensor<1x64x25x25xf32>
  ml_program.global private mutable @global292 : tensor<1x64x25x25xf32>
  ml_program.global private mutable @global289 : tensor<1x64x1x1xf32>
  ml_program.global private mutable @global278 : tensor<1x64x25x25xf32>
  ml_program.global private mutable @global277 : tensor<1x64x25x25xf32>
  ml_program.global private mutable @global274 : tensor<1x64x1x1xf32>
  ml_program.global private mutable @global266 : tensor<1x25x25x256xf32>
  ml_program.global private mutable @global265 : tensor<1x96x25x25xf32>
  ml_program.global private mutable @global264 : tensor<1x96x25x25xf32>
  ml_program.global private mutable @global261 : tensor<1x96x1x1xf32>
  ml_program.global private mutable @global255 : tensor<1x96x25x25xf32>
  ml_program.global private mutable @global254 : tensor<1x96x25x25xf32>
  ml_program.global private mutable @global251 : tensor<1x96x1x1xf32>
  ml_program.global private mutable @global245 : tensor<1x64x25x25xf32>
  ml_program.global private mutable @global244 : tensor<1x64x25x25xf32>
  ml_program.global private mutable @global241 : tensor<1x64x1x1xf32>
  ml_program.global private mutable @global235 : tensor<1x64x25x25xf32>
  ml_program.global private mutable @global234 : tensor<1x64x25x25xf32>
  ml_program.global private mutable @global231 : tensor<1x64x1x1xf32>
  ml_program.global private mutable @global225 : tensor<1x48x25x25xf32>
  ml_program.global private mutable @global224 : tensor<1x48x25x25xf32>
  ml_program.global private mutable @global221 : tensor<1x48x1x1xf32>
  ml_program.global private mutable @global215 : tensor<1x64x25x25xf32>
  ml_program.global private mutable @global214 : tensor<1x64x25x25xf32>
  ml_program.global private mutable @global211 : tensor<1x64x1x1xf32>
  ml_program.global private mutable @global200 : tensor<1x32x25x25xf32>
  ml_program.global private mutable @global199 : tensor<1x32x25x25xf32>
  ml_program.global private mutable @global196 : tensor<1x32x1x1xf32>
  ml_program.global private mutable @global188 : tensor<1x25x25x192xf32>
  ml_program.global private mutable @global187 : tensor<1x96x25x25xf32>
  ml_program.global private mutable @global186 : tensor<1x96x25x25xf32>
  ml_program.global private mutable @global183 : tensor<1x96x1x1xf32>
  ml_program.global private mutable @global177 : tensor<1x96x25x25xf32>
  ml_program.global private mutable @global176 : tensor<1x96x25x25xf32>
  ml_program.global private mutable @global173 : tensor<1x96x1x1xf32>
  ml_program.global private mutable @global167 : tensor<1x64x25x25xf32>
  ml_program.global private mutable @global166 : tensor<1x64x25x25xf32>
  ml_program.global private mutable @global163 : tensor<1x64x1x1xf32>
  ml_program.global private mutable @global157 : tensor<1x64x25x25xf32>
  ml_program.global private mutable @global156 : tensor<1x64x25x25xf32>
  ml_program.global private mutable @global153 : tensor<1x64x1x1xf32>
  ml_program.global private mutable @global147 : tensor<1x48x25x25xf32>
  ml_program.global private mutable @global146 : tensor<1x48x25x25xf32>
  ml_program.global private mutable @global143 : tensor<1x48x1x1xf32>
  ml_program.global private mutable @global137 : tensor<1x64x25x25xf32>
  ml_program.global private mutable @global136 : tensor<1x64x25x25xf32>
  ml_program.global private mutable @global133 : tensor<1x64x1x1xf32>
  ml_program.global private mutable @global126 : tensor<1x25x25x192xf32>
  ml_program.global private mutable @global125 : tensor<1x52x52x192xf32>
  ml_program.global private mutable @global124 : tensor<1x192x52x52xf32>
  ml_program.global private mutable @global123 : tensor<1x192x52x52xf32>
  ml_program.global private mutable @global120 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global114 : tensor<1x80x54x54xf32>
  ml_program.global private mutable @global113 : tensor<1x80x54x54xf32>
  ml_program.global private mutable @global110 : tensor<1x80x1x1xf32>
  ml_program.global private mutable @global103 : tensor<1x54x54x64xf32>
  ml_program.global private mutable @global102 : tensor<1x109x109x64xf32>
  ml_program.global private mutable @global101 : tensor<1x64x109x109xf32>
  ml_program.global private mutable @global100 : tensor<1x64x109x109xf32>
  ml_program.global private mutable @global97 : tensor<1x64x1x1xf32>
  ml_program.global private mutable @global91 : tensor<1x32x109x109xf32>
  ml_program.global private mutable @global90 : tensor<1x32x109x109xf32>
  ml_program.global private mutable @global87 : tensor<1x32x1x1xf32>
  ml_program.global private mutable @global81 : tensor<1x32x111x111xf32>
  ml_program.global private mutable @global80 : tensor<1x32x111x111xf32>
  ml_program.global private mutable @global77 : tensor<1x32x1x1xf32>
  ml_program.global private mutable @global70 : tensor<1x2048x1000xf32>
  ml_program.global private mutable @global68 : tensor<1x2048x1x1xi1>
  ml_program.global private mutable @global67 : tensor<192x1x1x2048xf32>
  ml_program.global private mutable @global66 : tensor<448x1x1x2048xf32>
  ml_program.global private mutable @global65 : tensor<384x1x1x2048xf32>
  ml_program.global private mutable @global64 : tensor<320x1x1x2048xf32>
  ml_program.global private mutable @global63 : tensor<192x1x1x1280xf32>
  ml_program.global private mutable @global62 : tensor<384x3x3x448xf32>
  ml_program.global private mutable @global61 : tensor<1x448x1x1xf32>
  ml_program.global private mutable @global59 : tensor<448x1x1x1280xf32>
  ml_program.global private mutable @global58 : tensor<384x3x1x384xf32>
  ml_program.global private mutable @global57 : tensor<384x1x3x384xf32>
  ml_program.global private mutable @global56 : tensor<384x1x1x1280xf32>
  ml_program.global private mutable @global55 : tensor<320x1x1x1280xf32>
  ml_program.global private mutable @global54 : tensor<192x3x3x192xf32>
  ml_program.global private mutable @global53 : tensor<1x320x1x1xf32>
  ml_program.global private mutable @global51 : tensor<320x3x3x192xf32>
  ml_program.global private mutable @global50 : tensor<192x7x1x192xf32>
  ml_program.global private mutable @global49 : tensor<192x1x7x192xf32>
  ml_program.global private mutable @global48 : tensor<192x1x7x160xf32>
  ml_program.global private mutable @global47 : tensor<160x7x1x160xf32>
  ml_program.global private mutable @global46 : tensor<192x7x1x160xf32>
  ml_program.global private mutable @global45 : tensor<160x1x7x160xf32>
  ml_program.global private mutable @global44 : tensor<1x160x1x1xf32>
  ml_program.global private mutable @global42 : tensor<160x1x1x768xf32>
  ml_program.global private mutable @global41 : tensor<192x1x7x128xf32>
  ml_program.global private mutable @global40 : tensor<128x7x1x128xf32>
  ml_program.global private mutable @global39 : tensor<192x7x1x128xf32>
  ml_program.global private mutable @global38 : tensor<128x1x7x128xf32>
  ml_program.global private mutable @global37 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global35 : tensor<128x1x1x768xf32>
  ml_program.global private mutable @global34 : tensor<192x1x1x768xf32>
  ml_program.global private mutable @global33 : tensor<1x384x1x1xf32>
  ml_program.global private mutable @global31 : tensor<384x3x3x288xf32>
  ml_program.global private mutable @global30 : tensor<48x1x1x288xf32>
  ml_program.global private mutable @global29 : tensor<64x1x1x288xf32>
  ml_program.global private mutable @global28 : tensor<48x1x1x256xf32>
  ml_program.global private mutable @global27 : tensor<64x1x1x256xf32>
  ml_program.global private mutable @global26 : tensor<32x1x1x192xf32>
  ml_program.global private mutable @global25 : tensor<96x3x3x96xf32>
  ml_program.global private mutable @global24 : tensor<1x96x1x1xf32>
  ml_program.global private mutable @global22 : tensor<96x3x3x64xf32>
  ml_program.global private mutable @global21 : tensor<64x5x5x48xf32>
  ml_program.global private mutable @global20 : tensor<1x48x1x1xf32>
  ml_program.global private mutable @global18 : tensor<48x1x1x192xf32>
  ml_program.global private mutable @global17 : tensor<64x1x1x192xf32>
  ml_program.global private mutable @global16 : tensor<1x192x1x1xf32>
  ml_program.global private mutable @global14 : tensor<192x3x3x80xf32>
  ml_program.global private mutable @global13 : tensor<1x80x1x1xf32>
  ml_program.global private mutable @global11 : tensor<80x1x1x64xf32>
  ml_program.global private mutable @global10 : tensor<1x64x1x1xf32>
  ml_program.global private mutable @global8 : tensor<64x3x3x32xf32>
  ml_program.global private mutable @global7 : tensor<32x3x3x32xf32>
  ml_program.global private mutable @global5 : tensor<1x32x1x1xf32>
  ml_program.global private mutable @global1 : tensor<32x3x3x3xf32>
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %cst = arith.constant dense<0.000000e+00> : tensor<1x256x25x25xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1x288x25x25xf32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<1x768x12x12xf32>
    %cst_2 = arith.constant dense<0.000000e+00> : tensor<1x1280x5x5xf32>
    %cst_3 = arith.constant dense<0.000000e+00> : tensor<1x768x5x5xf32>
    %cst_4 = arith.constant dense<0.000000e+00> : tensor<1x2048x5x5xf32>
    %0 = "tosa.const"() {value = dense<7.777000e-02> : tensor<32x3x3x3xf32>} : () -> tensor<32x3x3x3xf32>
    %1 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi64>} : () -> tensor<4xi64>
    %2 = "tosa.const"() {value = dense<0.000000e+00> : tensor<32xf32>} : () -> tensor<32xf32>
    %3 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi64>} : () -> tensor<4xi64>
    %4 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x32x1x1xf32>} : () -> tensor<1x32x1x1xf32>
    %5 = "tosa.const"() {value = dense<1.000000e-03> : tensor<f32>} : () -> tensor<f32>
    %6 = "tosa.const"() {value = dense<7.777000e-02> : tensor<32x3x3x32xf32>} : () -> tensor<32x3x3x32xf32>
    %7 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x32xf32>} : () -> tensor<64x3x3x32xf32>
    %8 = "tosa.const"() {value = dense<0.000000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %10 = "tosa.const"() {value = dense<7.777000e-02> : tensor<80x1x1x64xf32>} : () -> tensor<80x1x1x64xf32>
    %11 = "tosa.const"() {value = dense<0.000000e+00> : tensor<80xf32>} : () -> tensor<80xf32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x80x1x1xf32>} : () -> tensor<1x80x1x1xf32>
    %13 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x3x3x80xf32>} : () -> tensor<192x3x3x80xf32>
    %14 = "tosa.const"() {value = dense<0.000000e+00> : tensor<192xf32>} : () -> tensor<192xf32>
    %15 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x192x1x1xf32>} : () -> tensor<1x192x1x1xf32>
    %16 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x192xf32>} : () -> tensor<64x1x1x192xf32>
    %17 = "tosa.const"() {value = dense<7.777000e-02> : tensor<48x1x1x192xf32>} : () -> tensor<48x1x1x192xf32>
    %18 = "tosa.const"() {value = dense<0.000000e+00> : tensor<48xf32>} : () -> tensor<48xf32>
    %19 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x48x1x1xf32>} : () -> tensor<1x48x1x1xf32>
    %20 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x5x5x48xf32>} : () -> tensor<64x5x5x48xf32>
    %21 = "tosa.const"() {value = dense<7.777000e-02> : tensor<96x3x3x64xf32>} : () -> tensor<96x3x3x64xf32>
    %22 = "tosa.const"() {value = dense<0.000000e+00> : tensor<96xf32>} : () -> tensor<96xf32>
    %23 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x96x1x1xf32>} : () -> tensor<1x96x1x1xf32>
    %24 = "tosa.const"() {value = dense<7.777000e-02> : tensor<96x3x3x96xf32>} : () -> tensor<96x3x3x96xf32>
    %25 = "tosa.const"() {value = dense<7.777000e-02> : tensor<32x1x1x192xf32>} : () -> tensor<32x1x1x192xf32>
    %26 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x256xf32>} : () -> tensor<64x1x1x256xf32>
    %27 = "tosa.const"() {value = dense<7.777000e-02> : tensor<48x1x1x256xf32>} : () -> tensor<48x1x1x256xf32>
    %28 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x288xf32>} : () -> tensor<64x1x1x288xf32>
    %29 = "tosa.const"() {value = dense<7.777000e-02> : tensor<48x1x1x288xf32>} : () -> tensor<48x1x1x288xf32>
    %30 = "tosa.const"() {value = dense<7.777000e-02> : tensor<384x3x3x288xf32>} : () -> tensor<384x3x3x288xf32>
    %31 = "tosa.const"() {value = dense<0.000000e+00> : tensor<384xf32>} : () -> tensor<384xf32>
    %32 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x384x1x1xf32>} : () -> tensor<1x384x1x1xf32>
    %33 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x1x1x768xf32>} : () -> tensor<192x1x1x768xf32>
    %34 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x768xf32>} : () -> tensor<128x1x1x768xf32>
    %35 = "tosa.const"() {value = dense<0.000000e+00> : tensor<128xf32>} : () -> tensor<128xf32>
    %36 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %37 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x7x128xf32>} : () -> tensor<128x1x7x128xf32>
    %38 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x7x1x128xf32>} : () -> tensor<192x7x1x128xf32>
    %39 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x7x1x128xf32>} : () -> tensor<128x7x1x128xf32>
    %40 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x1x7x128xf32>} : () -> tensor<192x1x7x128xf32>
    %41 = "tosa.const"() {value = dense<7.777000e-02> : tensor<160x1x1x768xf32>} : () -> tensor<160x1x1x768xf32>
    %42 = "tosa.const"() {value = dense<0.000000e+00> : tensor<160xf32>} : () -> tensor<160xf32>
    %43 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x160x1x1xf32>} : () -> tensor<1x160x1x1xf32>
    %44 = "tosa.const"() {value = dense<7.777000e-02> : tensor<160x1x7x160xf32>} : () -> tensor<160x1x7x160xf32>
    %45 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x7x1x160xf32>} : () -> tensor<192x7x1x160xf32>
    %46 = "tosa.const"() {value = dense<7.777000e-02> : tensor<160x7x1x160xf32>} : () -> tensor<160x7x1x160xf32>
    %47 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x1x7x160xf32>} : () -> tensor<192x1x7x160xf32>
    %48 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x1x7x192xf32>} : () -> tensor<192x1x7x192xf32>
    %49 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x7x1x192xf32>} : () -> tensor<192x7x1x192xf32>
    %50 = "tosa.const"() {value = dense<7.777000e-02> : tensor<320x3x3x192xf32>} : () -> tensor<320x3x3x192xf32>
    %51 = "tosa.const"() {value = dense<0.000000e+00> : tensor<320xf32>} : () -> tensor<320xf32>
    %52 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x320x1x1xf32>} : () -> tensor<1x320x1x1xf32>
    %53 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x3x3x192xf32>} : () -> tensor<192x3x3x192xf32>
    %54 = "tosa.const"() {value = dense<7.777000e-02> : tensor<320x1x1x1280xf32>} : () -> tensor<320x1x1x1280xf32>
    %55 = "tosa.const"() {value = dense<7.777000e-02> : tensor<384x1x1x1280xf32>} : () -> tensor<384x1x1x1280xf32>
    %56 = "tosa.const"() {value = dense<7.777000e-02> : tensor<384x1x3x384xf32>} : () -> tensor<384x1x3x384xf32>
    %57 = "tosa.const"() {value = dense<7.777000e-02> : tensor<384x3x1x384xf32>} : () -> tensor<384x3x1x384xf32>
    %58 = "tosa.const"() {value = dense<7.777000e-02> : tensor<448x1x1x1280xf32>} : () -> tensor<448x1x1x1280xf32>
    %59 = "tosa.const"() {value = dense<0.000000e+00> : tensor<448xf32>} : () -> tensor<448xf32>
    %60 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x448x1x1xf32>} : () -> tensor<1x448x1x1xf32>
    %61 = "tosa.const"() {value = dense<7.777000e-02> : tensor<384x3x3x448xf32>} : () -> tensor<384x3x3x448xf32>
    %62 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x1x1x1280xf32>} : () -> tensor<192x1x1x1280xf32>
    %63 = "tosa.const"() {value = dense<7.777000e-02> : tensor<320x1x1x2048xf32>} : () -> tensor<320x1x1x2048xf32>
    %64 = "tosa.const"() {value = dense<7.777000e-02> : tensor<384x1x1x2048xf32>} : () -> tensor<384x1x1x2048xf32>
    %65 = "tosa.const"() {value = dense<7.777000e-02> : tensor<448x1x1x2048xf32>} : () -> tensor<448x1x1x2048xf32>
    %66 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x1x1x2048xf32>} : () -> tensor<192x1x1x2048xf32>
    %67 = "tosa.const"() {value = dense<"0x3D6BD0785C2F95B8BA4AC1421817B9FEB7A6A3EA51D067EBB31C70AA4C9C0C9D2008E6E59D00568CF66D81028B7072D29B20021D897DD288E069D7F6791693AF2101483DA26D20DF7D2D793E87EF873188E31D6E57519A2BFA4DC36F766D122331950859F8F513A4C39C3E8BBB2EA66D4E598286A94DF7C4F4390A9AAEF5126CD995FCA13841F1F67A8FD5455C3D9B24B733D650984EF30ED57BB8EDE1DA7E559E9E7A4105D7739F7660B1D3AA85E42774D01D269757BEAF77003552617B655EEB71B0CE30058A420AFBD204359CB1EFA77A67B4D6795CD13A65CD23BC0F8E6D990356E01A92450F939F8433780C2090074C9015DB003EEC3AB39A626E9898F9"> : tensor<1x2048x1x1xi1>} : () -> tensor<1x2048x1x1xi1>
    %68 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %69 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x2048x1000xf32>} : () -> tensor<1x2048x1000xf32>
    %70 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1000xf32>} : () -> tensor<1000xf32>
    ml_program.global_store @global1 = %0 : tensor<32x3x3x3xf32>
    ml_program.global_store @global5 = %4 : tensor<1x32x1x1xf32>
    ml_program.global_store @global7 = %6 : tensor<32x3x3x32xf32>
    ml_program.global_store @global8 = %7 : tensor<64x3x3x32xf32>
    ml_program.global_store @global10 = %9 : tensor<1x64x1x1xf32>
    ml_program.global_store @global11 = %10 : tensor<80x1x1x64xf32>
    ml_program.global_store @global13 = %12 : tensor<1x80x1x1xf32>
    ml_program.global_store @global14 = %13 : tensor<192x3x3x80xf32>
    ml_program.global_store @global16 = %15 : tensor<1x192x1x1xf32>
    ml_program.global_store @global17 = %16 : tensor<64x1x1x192xf32>
    ml_program.global_store @global18 = %17 : tensor<48x1x1x192xf32>
    ml_program.global_store @global20 = %19 : tensor<1x48x1x1xf32>
    ml_program.global_store @global21 = %20 : tensor<64x5x5x48xf32>
    ml_program.global_store @global22 = %21 : tensor<96x3x3x64xf32>
    ml_program.global_store @global24 = %23 : tensor<1x96x1x1xf32>
    ml_program.global_store @global25 = %24 : tensor<96x3x3x96xf32>
    ml_program.global_store @global26 = %25 : tensor<32x1x1x192xf32>
    ml_program.global_store @global27 = %26 : tensor<64x1x1x256xf32>
    ml_program.global_store @global28 = %27 : tensor<48x1x1x256xf32>
    ml_program.global_store @global29 = %28 : tensor<64x1x1x288xf32>
    ml_program.global_store @global30 = %29 : tensor<48x1x1x288xf32>
    ml_program.global_store @global31 = %30 : tensor<384x3x3x288xf32>
    ml_program.global_store @global33 = %32 : tensor<1x384x1x1xf32>
    ml_program.global_store @global34 = %33 : tensor<192x1x1x768xf32>
    ml_program.global_store @global35 = %34 : tensor<128x1x1x768xf32>
    ml_program.global_store @global37 = %36 : tensor<1x128x1x1xf32>
    ml_program.global_store @global38 = %37 : tensor<128x1x7x128xf32>
    ml_program.global_store @global39 = %38 : tensor<192x7x1x128xf32>
    ml_program.global_store @global40 = %39 : tensor<128x7x1x128xf32>
    ml_program.global_store @global41 = %40 : tensor<192x1x7x128xf32>
    ml_program.global_store @global42 = %41 : tensor<160x1x1x768xf32>
    ml_program.global_store @global44 = %43 : tensor<1x160x1x1xf32>
    ml_program.global_store @global45 = %44 : tensor<160x1x7x160xf32>
    ml_program.global_store @global46 = %45 : tensor<192x7x1x160xf32>
    ml_program.global_store @global47 = %46 : tensor<160x7x1x160xf32>
    ml_program.global_store @global48 = %47 : tensor<192x1x7x160xf32>
    ml_program.global_store @global49 = %48 : tensor<192x1x7x192xf32>
    ml_program.global_store @global50 = %49 : tensor<192x7x1x192xf32>
    ml_program.global_store @global51 = %50 : tensor<320x3x3x192xf32>
    ml_program.global_store @global53 = %52 : tensor<1x320x1x1xf32>
    ml_program.global_store @global54 = %53 : tensor<192x3x3x192xf32>
    ml_program.global_store @global55 = %54 : tensor<320x1x1x1280xf32>
    ml_program.global_store @global56 = %55 : tensor<384x1x1x1280xf32>
    ml_program.global_store @global57 = %56 : tensor<384x1x3x384xf32>
    ml_program.global_store @global58 = %57 : tensor<384x3x1x384xf32>
    ml_program.global_store @global59 = %58 : tensor<448x1x1x1280xf32>
    ml_program.global_store @global61 = %60 : tensor<1x448x1x1xf32>
    ml_program.global_store @global62 = %61 : tensor<384x3x3x448xf32>
    ml_program.global_store @global63 = %62 : tensor<192x1x1x1280xf32>
    ml_program.global_store @global64 = %63 : tensor<320x1x1x2048xf32>
    ml_program.global_store @global65 = %64 : tensor<384x1x1x2048xf32>
    ml_program.global_store @global66 = %65 : tensor<448x1x1x2048xf32>
    ml_program.global_store @global67 = %66 : tensor<192x1x1x2048xf32>
    ml_program.global_store @global68 = %67 : tensor<1x2048x1x1xi1>
    ml_program.global_store @global70 = %69 : tensor<1x2048x1000xf32>
    %71 = "tosa.transpose"(%arg0, %1) : (tensor<1x3x224x224xf32>, tensor<4xi64>) -> tensor<1x224x224x3xf32>
    %72 = "tosa.conv2d"(%71, %0, %2) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x224x224x3xf32>, tensor<32x3x3x3xf32>, tensor<32xf32>) -> tensor<1x111x111x32xf32>
    %73 = "tosa.transpose"(%72, %3) : (tensor<1x111x111x32xf32>, tensor<4xi64>) -> tensor<1x32x111x111xf32>
    %74 = "tosa.sub"(%73, %4) : (tensor<1x32x111x111xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x111x111xf32>
    %75 = "tosa.add"(%4, %5) : (tensor<1x32x1x1xf32>, tensor<f32>) -> tensor<1x32x1x1xf32>
    %76 = "tosa.rsqrt"(%75) : (tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    ml_program.global_store @global77 = %76 : tensor<1x32x1x1xf32>
    %77 = "tosa.mul"(%74, %76) {shift = 0 : i32} : (tensor<1x32x111x111xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x111x111xf32>
    %78 = "tosa.mul"(%77, %4) {shift = 0 : i32} : (tensor<1x32x111x111xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x111x111xf32>
    %79 = "tosa.add"(%78, %4) : (tensor<1x32x111x111xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x111x111xf32>
    ml_program.global_store @global80 = %79 : tensor<1x32x111x111xf32>
    %80 = "tosa.clamp"(%79) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x32x111x111xf32>) -> tensor<1x32x111x111xf32>
    ml_program.global_store @global81 = %80 : tensor<1x32x111x111xf32>
    %81 = "tosa.transpose"(%80, %1) : (tensor<1x32x111x111xf32>, tensor<4xi64>) -> tensor<1x111x111x32xf32>
    %82 = "tosa.conv2d"(%81, %6, %2) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x111x111x32xf32>, tensor<32x3x3x32xf32>, tensor<32xf32>) -> tensor<1x109x109x32xf32>
    %83 = "tosa.transpose"(%82, %3) : (tensor<1x109x109x32xf32>, tensor<4xi64>) -> tensor<1x32x109x109xf32>
    %84 = "tosa.sub"(%83, %4) : (tensor<1x32x109x109xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x109x109xf32>
    ml_program.global_store @global87 = %76 : tensor<1x32x1x1xf32>
    %85 = "tosa.mul"(%84, %76) {shift = 0 : i32} : (tensor<1x32x109x109xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x109x109xf32>
    %86 = "tosa.mul"(%85, %4) {shift = 0 : i32} : (tensor<1x32x109x109xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x109x109xf32>
    %87 = "tosa.add"(%86, %4) : (tensor<1x32x109x109xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x109x109xf32>
    ml_program.global_store @global90 = %87 : tensor<1x32x109x109xf32>
    %88 = "tosa.clamp"(%87) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x32x109x109xf32>) -> tensor<1x32x109x109xf32>
    ml_program.global_store @global91 = %88 : tensor<1x32x109x109xf32>
    %89 = "tosa.transpose"(%88, %1) : (tensor<1x32x109x109xf32>, tensor<4xi64>) -> tensor<1x109x109x32xf32>
    %90 = "tosa.conv2d"(%89, %7, %8) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x109x109x32xf32>, tensor<64x3x3x32xf32>, tensor<64xf32>) -> tensor<1x109x109x64xf32>
    %91 = "tosa.transpose"(%90, %3) : (tensor<1x109x109x64xf32>, tensor<4xi64>) -> tensor<1x64x109x109xf32>
    %92 = "tosa.sub"(%91, %9) : (tensor<1x64x109x109xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x109x109xf32>
    %93 = "tosa.add"(%9, %5) : (tensor<1x64x1x1xf32>, tensor<f32>) -> tensor<1x64x1x1xf32>
    %94 = "tosa.rsqrt"(%93) : (tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    ml_program.global_store @global97 = %94 : tensor<1x64x1x1xf32>
    %95 = "tosa.mul"(%92, %94) {shift = 0 : i32} : (tensor<1x64x109x109xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x109x109xf32>
    %96 = "tosa.mul"(%95, %9) {shift = 0 : i32} : (tensor<1x64x109x109xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x109x109xf32>
    %97 = "tosa.add"(%96, %9) : (tensor<1x64x109x109xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x109x109xf32>
    ml_program.global_store @global100 = %97 : tensor<1x64x109x109xf32>
    %98 = "tosa.clamp"(%97) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x109x109xf32>) -> tensor<1x64x109x109xf32>
    ml_program.global_store @global101 = %98 : tensor<1x64x109x109xf32>
    %99 = "tosa.transpose"(%98, %1) : (tensor<1x64x109x109xf32>, tensor<4xi64>) -> tensor<1x109x109x64xf32>
    ml_program.global_store @global102 = %99 : tensor<1x109x109x64xf32>
    %100 = "tosa.max_pool2d"(%99) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x109x109x64xf32>) -> tensor<1x54x54x64xf32>
    ml_program.global_store @global103 = %100 : tensor<1x54x54x64xf32>
    %101 = "tosa.conv2d"(%100, %10, %11) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x64xf32>, tensor<80x1x1x64xf32>, tensor<80xf32>) -> tensor<1x54x54x80xf32>
    %102 = "tosa.transpose"(%101, %3) : (tensor<1x54x54x80xf32>, tensor<4xi64>) -> tensor<1x80x54x54xf32>
    %103 = "tosa.sub"(%102, %12) : (tensor<1x80x54x54xf32>, tensor<1x80x1x1xf32>) -> tensor<1x80x54x54xf32>
    %104 = "tosa.add"(%12, %5) : (tensor<1x80x1x1xf32>, tensor<f32>) -> tensor<1x80x1x1xf32>
    %105 = "tosa.rsqrt"(%104) : (tensor<1x80x1x1xf32>) -> tensor<1x80x1x1xf32>
    ml_program.global_store @global110 = %105 : tensor<1x80x1x1xf32>
    %106 = "tosa.mul"(%103, %105) {shift = 0 : i32} : (tensor<1x80x54x54xf32>, tensor<1x80x1x1xf32>) -> tensor<1x80x54x54xf32>
    %107 = "tosa.mul"(%106, %12) {shift = 0 : i32} : (tensor<1x80x54x54xf32>, tensor<1x80x1x1xf32>) -> tensor<1x80x54x54xf32>
    %108 = "tosa.add"(%107, %12) : (tensor<1x80x54x54xf32>, tensor<1x80x1x1xf32>) -> tensor<1x80x54x54xf32>
    ml_program.global_store @global113 = %108 : tensor<1x80x54x54xf32>
    %109 = "tosa.clamp"(%108) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x80x54x54xf32>) -> tensor<1x80x54x54xf32>
    ml_program.global_store @global114 = %109 : tensor<1x80x54x54xf32>
    %110 = "tosa.transpose"(%109, %1) : (tensor<1x80x54x54xf32>, tensor<4xi64>) -> tensor<1x54x54x80xf32>
    %111 = "tosa.conv2d"(%110, %13, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x80xf32>, tensor<192x3x3x80xf32>, tensor<192xf32>) -> tensor<1x52x52x192xf32>
    %112 = "tosa.transpose"(%111, %3) : (tensor<1x52x52x192xf32>, tensor<4xi64>) -> tensor<1x192x52x52xf32>
    %113 = "tosa.sub"(%112, %15) : (tensor<1x192x52x52xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x52x52xf32>
    %114 = "tosa.add"(%15, %5) : (tensor<1x192x1x1xf32>, tensor<f32>) -> tensor<1x192x1x1xf32>
    %115 = "tosa.rsqrt"(%114) : (tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    ml_program.global_store @global120 = %115 : tensor<1x192x1x1xf32>
    %116 = "tosa.mul"(%113, %115) {shift = 0 : i32} : (tensor<1x192x52x52xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x52x52xf32>
    %117 = "tosa.mul"(%116, %15) {shift = 0 : i32} : (tensor<1x192x52x52xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x52x52xf32>
    %118 = "tosa.add"(%117, %15) : (tensor<1x192x52x52xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x52x52xf32>
    ml_program.global_store @global123 = %118 : tensor<1x192x52x52xf32>
    %119 = "tosa.clamp"(%118) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x52x52xf32>) -> tensor<1x192x52x52xf32>
    ml_program.global_store @global124 = %119 : tensor<1x192x52x52xf32>
    %120 = "tosa.transpose"(%119, %1) : (tensor<1x192x52x52xf32>, tensor<4xi64>) -> tensor<1x52x52x192xf32>
    ml_program.global_store @global125 = %120 : tensor<1x52x52x192xf32>
    %121 = "tosa.max_pool2d"(%120) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x52x52x192xf32>) -> tensor<1x25x25x192xf32>
    ml_program.global_store @global126 = %121 : tensor<1x25x25x192xf32>
    %122 = "tosa.conv2d"(%121, %16, %8) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x192xf32>, tensor<64x1x1x192xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %123 = "tosa.transpose"(%122, %3) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %124 = "tosa.sub"(%123, %9) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    ml_program.global_store @global133 = %94 : tensor<1x64x1x1xf32>
    %125 = "tosa.mul"(%124, %94) {shift = 0 : i32} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %126 = "tosa.mul"(%125, %9) {shift = 0 : i32} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %127 = "tosa.add"(%126, %9) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    ml_program.global_store @global136 = %127 : tensor<1x64x25x25xf32>
    %128 = "tosa.clamp"(%127) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    ml_program.global_store @global137 = %128 : tensor<1x64x25x25xf32>
    %129 = "tosa.conv2d"(%121, %17, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x192xf32>, tensor<48x1x1x192xf32>, tensor<48xf32>) -> tensor<1x25x25x48xf32>
    %130 = "tosa.transpose"(%129, %3) : (tensor<1x25x25x48xf32>, tensor<4xi64>) -> tensor<1x48x25x25xf32>
    %131 = "tosa.sub"(%130, %19) : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %132 = "tosa.add"(%19, %5) : (tensor<1x48x1x1xf32>, tensor<f32>) -> tensor<1x48x1x1xf32>
    %133 = "tosa.rsqrt"(%132) : (tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    ml_program.global_store @global143 = %133 : tensor<1x48x1x1xf32>
    %134 = "tosa.mul"(%131, %133) {shift = 0 : i32} : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %135 = "tosa.mul"(%134, %19) {shift = 0 : i32} : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %136 = "tosa.add"(%135, %19) : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    ml_program.global_store @global146 = %136 : tensor<1x48x25x25xf32>
    %137 = "tosa.clamp"(%136) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x48x25x25xf32>) -> tensor<1x48x25x25xf32>
    ml_program.global_store @global147 = %137 : tensor<1x48x25x25xf32>
    %138 = "tosa.transpose"(%137, %1) : (tensor<1x48x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x48xf32>
    %139 = "tosa.conv2d"(%138, %20, %8) {dilation = array<i64: 1, 1>, pad = array<i64: 2, 2, 2, 2>, stride = array<i64: 1, 1>} : (tensor<1x25x25x48xf32>, tensor<64x5x5x48xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %140 = "tosa.transpose"(%139, %3) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %141 = "tosa.sub"(%140, %9) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    ml_program.global_store @global153 = %94 : tensor<1x64x1x1xf32>
    %142 = "tosa.mul"(%141, %94) {shift = 0 : i32} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %143 = "tosa.mul"(%142, %9) {shift = 0 : i32} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %144 = "tosa.add"(%143, %9) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    ml_program.global_store @global156 = %144 : tensor<1x64x25x25xf32>
    %145 = "tosa.clamp"(%144) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    ml_program.global_store @global157 = %145 : tensor<1x64x25x25xf32>
    ml_program.global_store @global163 = %94 : tensor<1x64x1x1xf32>
    ml_program.global_store @global166 = %127 : tensor<1x64x25x25xf32>
    ml_program.global_store @global167 = %128 : tensor<1x64x25x25xf32>
    %146 = "tosa.transpose"(%128, %1) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %147 = "tosa.conv2d"(%146, %21, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<96x3x3x64xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %148 = "tosa.transpose"(%147, %3) : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %149 = "tosa.sub"(%148, %23) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %150 = "tosa.add"(%23, %5) : (tensor<1x96x1x1xf32>, tensor<f32>) -> tensor<1x96x1x1xf32>
    %151 = "tosa.rsqrt"(%150) : (tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    ml_program.global_store @global173 = %151 : tensor<1x96x1x1xf32>
    %152 = "tosa.mul"(%149, %151) {shift = 0 : i32} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %153 = "tosa.mul"(%152, %23) {shift = 0 : i32} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %154 = "tosa.add"(%153, %23) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    ml_program.global_store @global176 = %154 : tensor<1x96x25x25xf32>
    %155 = "tosa.clamp"(%154) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    ml_program.global_store @global177 = %155 : tensor<1x96x25x25xf32>
    %156 = "tosa.transpose"(%155, %1) : (tensor<1x96x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x96xf32>
    %157 = "tosa.conv2d"(%156, %24, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x96xf32>, tensor<96x3x3x96xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %158 = "tosa.transpose"(%157, %3) : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %159 = "tosa.sub"(%158, %23) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    ml_program.global_store @global183 = %151 : tensor<1x96x1x1xf32>
    %160 = "tosa.mul"(%159, %151) {shift = 0 : i32} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %161 = "tosa.mul"(%160, %23) {shift = 0 : i32} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %162 = "tosa.add"(%161, %23) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    ml_program.global_store @global186 = %162 : tensor<1x96x25x25xf32>
    %163 = "tosa.clamp"(%162) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    ml_program.global_store @global187 = %163 : tensor<1x96x25x25xf32>
    ml_program.global_store @global188 = %121 : tensor<1x25x25x192xf32>
    %164 = "tosa.avg_pool2d"(%121) {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x192xf32>) -> tensor<1x25x25x192xf32>
    %165 = "tosa.conv2d"(%164, %25, %2) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x192xf32>, tensor<32x1x1x192xf32>, tensor<32xf32>) -> tensor<1x25x25x32xf32>
    %166 = "tosa.transpose"(%165, %3) : (tensor<1x25x25x32xf32>, tensor<4xi64>) -> tensor<1x32x25x25xf32>
    %167 = "tosa.sub"(%166, %4) : (tensor<1x32x25x25xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x25x25xf32>
    ml_program.global_store @global196 = %76 : tensor<1x32x1x1xf32>
    %168 = "tosa.mul"(%167, %76) {shift = 0 : i32} : (tensor<1x32x25x25xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x25x25xf32>
    %169 = "tosa.mul"(%168, %4) {shift = 0 : i32} : (tensor<1x32x25x25xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x25x25xf32>
    %170 = "tosa.add"(%169, %4) : (tensor<1x32x25x25xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x25x25xf32>
    ml_program.global_store @global199 = %170 : tensor<1x32x25x25xf32>
    %171 = "tosa.clamp"(%170) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x32x25x25xf32>) -> tensor<1x32x25x25xf32>
    ml_program.global_store @global200 = %171 : tensor<1x32x25x25xf32>
    %inserted_slice = tensor.insert_slice %128 into %cst[0, 0, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x256x25x25xf32>
    %inserted_slice_5 = tensor.insert_slice %145 into %inserted_slice[0, 64, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x256x25x25xf32>
    %inserted_slice_6 = tensor.insert_slice %163 into %inserted_slice_5[0, 128, 0, 0] [1, 96, 25, 25] [1, 1, 1, 1] : tensor<1x96x25x25xf32> into tensor<1x256x25x25xf32>
    %inserted_slice_7 = tensor.insert_slice %171 into %inserted_slice_6[0, 224, 0, 0] [1, 32, 25, 25] [1, 1, 1, 1] : tensor<1x32x25x25xf32> into tensor<1x256x25x25xf32>
    %172 = "tosa.transpose"(%inserted_slice_7, %1) : (tensor<1x256x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x256xf32>
    %173 = "tosa.conv2d"(%172, %26, %8) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %174 = "tosa.transpose"(%173, %3) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %175 = "tosa.sub"(%174, %9) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    ml_program.global_store @global211 = %94 : tensor<1x64x1x1xf32>
    %176 = "tosa.mul"(%175, %94) {shift = 0 : i32} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %177 = "tosa.mul"(%176, %9) {shift = 0 : i32} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %178 = "tosa.add"(%177, %9) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    ml_program.global_store @global214 = %178 : tensor<1x64x25x25xf32>
    %179 = "tosa.clamp"(%178) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    ml_program.global_store @global215 = %179 : tensor<1x64x25x25xf32>
    %180 = "tosa.conv2d"(%172, %27, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x256xf32>, tensor<48x1x1x256xf32>, tensor<48xf32>) -> tensor<1x25x25x48xf32>
    %181 = "tosa.transpose"(%180, %3) : (tensor<1x25x25x48xf32>, tensor<4xi64>) -> tensor<1x48x25x25xf32>
    %182 = "tosa.sub"(%181, %19) : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    ml_program.global_store @global221 = %133 : tensor<1x48x1x1xf32>
    %183 = "tosa.mul"(%182, %133) {shift = 0 : i32} : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %184 = "tosa.mul"(%183, %19) {shift = 0 : i32} : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %185 = "tosa.add"(%184, %19) : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    ml_program.global_store @global224 = %185 : tensor<1x48x25x25xf32>
    %186 = "tosa.clamp"(%185) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x48x25x25xf32>) -> tensor<1x48x25x25xf32>
    ml_program.global_store @global225 = %186 : tensor<1x48x25x25xf32>
    %187 = "tosa.transpose"(%186, %1) : (tensor<1x48x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x48xf32>
    %188 = "tosa.conv2d"(%187, %20, %8) {dilation = array<i64: 1, 1>, pad = array<i64: 2, 2, 2, 2>, stride = array<i64: 1, 1>} : (tensor<1x25x25x48xf32>, tensor<64x5x5x48xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %189 = "tosa.transpose"(%188, %3) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %190 = "tosa.sub"(%189, %9) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    ml_program.global_store @global231 = %94 : tensor<1x64x1x1xf32>
    %191 = "tosa.mul"(%190, %94) {shift = 0 : i32} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %192 = "tosa.mul"(%191, %9) {shift = 0 : i32} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %193 = "tosa.add"(%192, %9) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    ml_program.global_store @global234 = %193 : tensor<1x64x25x25xf32>
    %194 = "tosa.clamp"(%193) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    ml_program.global_store @global235 = %194 : tensor<1x64x25x25xf32>
    ml_program.global_store @global241 = %94 : tensor<1x64x1x1xf32>
    ml_program.global_store @global244 = %178 : tensor<1x64x25x25xf32>
    ml_program.global_store @global245 = %179 : tensor<1x64x25x25xf32>
    %195 = "tosa.transpose"(%179, %1) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %196 = "tosa.conv2d"(%195, %21, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<96x3x3x64xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %197 = "tosa.transpose"(%196, %3) : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %198 = "tosa.sub"(%197, %23) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    ml_program.global_store @global251 = %151 : tensor<1x96x1x1xf32>
    %199 = "tosa.mul"(%198, %151) {shift = 0 : i32} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %200 = "tosa.mul"(%199, %23) {shift = 0 : i32} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %201 = "tosa.add"(%200, %23) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    ml_program.global_store @global254 = %201 : tensor<1x96x25x25xf32>
    %202 = "tosa.clamp"(%201) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    ml_program.global_store @global255 = %202 : tensor<1x96x25x25xf32>
    %203 = "tosa.transpose"(%202, %1) : (tensor<1x96x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x96xf32>
    %204 = "tosa.conv2d"(%203, %24, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x96xf32>, tensor<96x3x3x96xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %205 = "tosa.transpose"(%204, %3) : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %206 = "tosa.sub"(%205, %23) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    ml_program.global_store @global261 = %151 : tensor<1x96x1x1xf32>
    %207 = "tosa.mul"(%206, %151) {shift = 0 : i32} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %208 = "tosa.mul"(%207, %23) {shift = 0 : i32} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %209 = "tosa.add"(%208, %23) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    ml_program.global_store @global264 = %209 : tensor<1x96x25x25xf32>
    %210 = "tosa.clamp"(%209) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    ml_program.global_store @global265 = %210 : tensor<1x96x25x25xf32>
    ml_program.global_store @global266 = %172 : tensor<1x25x25x256xf32>
    %211 = "tosa.avg_pool2d"(%172) {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x256xf32>) -> tensor<1x25x25x256xf32>
    %212 = "tosa.conv2d"(%211, %26, %8) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %213 = "tosa.transpose"(%212, %3) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %214 = "tosa.sub"(%213, %9) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    ml_program.global_store @global274 = %94 : tensor<1x64x1x1xf32>
    %215 = "tosa.mul"(%214, %94) {shift = 0 : i32} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %216 = "tosa.mul"(%215, %9) {shift = 0 : i32} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %217 = "tosa.add"(%216, %9) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    ml_program.global_store @global277 = %217 : tensor<1x64x25x25xf32>
    %218 = "tosa.clamp"(%217) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    ml_program.global_store @global278 = %218 : tensor<1x64x25x25xf32>
    %inserted_slice_8 = tensor.insert_slice %179 into %cst_0[0, 0, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x288x25x25xf32>
    %inserted_slice_9 = tensor.insert_slice %194 into %inserted_slice_8[0, 64, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x288x25x25xf32>
    %inserted_slice_10 = tensor.insert_slice %210 into %inserted_slice_9[0, 128, 0, 0] [1, 96, 25, 25] [1, 1, 1, 1] : tensor<1x96x25x25xf32> into tensor<1x288x25x25xf32>
    %inserted_slice_11 = tensor.insert_slice %218 into %inserted_slice_10[0, 224, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x288x25x25xf32>
    %219 = "tosa.transpose"(%inserted_slice_11, %1) : (tensor<1x288x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x288xf32>
    %220 = "tosa.conv2d"(%219, %28, %8) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x288xf32>, tensor<64x1x1x288xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %221 = "tosa.transpose"(%220, %3) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %222 = "tosa.sub"(%221, %9) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    ml_program.global_store @global289 = %94 : tensor<1x64x1x1xf32>
    %223 = "tosa.mul"(%222, %94) {shift = 0 : i32} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %224 = "tosa.mul"(%223, %9) {shift = 0 : i32} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %225 = "tosa.add"(%224, %9) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    ml_program.global_store @global292 = %225 : tensor<1x64x25x25xf32>
    %226 = "tosa.clamp"(%225) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    ml_program.global_store @global293 = %226 : tensor<1x64x25x25xf32>
    %227 = "tosa.conv2d"(%219, %29, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x288xf32>, tensor<48x1x1x288xf32>, tensor<48xf32>) -> tensor<1x25x25x48xf32>
    %228 = "tosa.transpose"(%227, %3) : (tensor<1x25x25x48xf32>, tensor<4xi64>) -> tensor<1x48x25x25xf32>
    %229 = "tosa.sub"(%228, %19) : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    ml_program.global_store @global299 = %133 : tensor<1x48x1x1xf32>
    %230 = "tosa.mul"(%229, %133) {shift = 0 : i32} : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %231 = "tosa.mul"(%230, %19) {shift = 0 : i32} : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %232 = "tosa.add"(%231, %19) : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    ml_program.global_store @global302 = %232 : tensor<1x48x25x25xf32>
    %233 = "tosa.clamp"(%232) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x48x25x25xf32>) -> tensor<1x48x25x25xf32>
    ml_program.global_store @global303 = %233 : tensor<1x48x25x25xf32>
    %234 = "tosa.transpose"(%233, %1) : (tensor<1x48x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x48xf32>
    %235 = "tosa.conv2d"(%234, %20, %8) {dilation = array<i64: 1, 1>, pad = array<i64: 2, 2, 2, 2>, stride = array<i64: 1, 1>} : (tensor<1x25x25x48xf32>, tensor<64x5x5x48xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %236 = "tosa.transpose"(%235, %3) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %237 = "tosa.sub"(%236, %9) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    ml_program.global_store @global309 = %94 : tensor<1x64x1x1xf32>
    %238 = "tosa.mul"(%237, %94) {shift = 0 : i32} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %239 = "tosa.mul"(%238, %9) {shift = 0 : i32} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %240 = "tosa.add"(%239, %9) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    ml_program.global_store @global312 = %240 : tensor<1x64x25x25xf32>
    %241 = "tosa.clamp"(%240) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    ml_program.global_store @global313 = %241 : tensor<1x64x25x25xf32>
    ml_program.global_store @global319 = %94 : tensor<1x64x1x1xf32>
    ml_program.global_store @global322 = %225 : tensor<1x64x25x25xf32>
    ml_program.global_store @global323 = %226 : tensor<1x64x25x25xf32>
    %242 = "tosa.transpose"(%226, %1) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %243 = "tosa.conv2d"(%242, %21, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<96x3x3x64xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %244 = "tosa.transpose"(%243, %3) : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %245 = "tosa.sub"(%244, %23) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    ml_program.global_store @global329 = %151 : tensor<1x96x1x1xf32>
    %246 = "tosa.mul"(%245, %151) {shift = 0 : i32} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %247 = "tosa.mul"(%246, %23) {shift = 0 : i32} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %248 = "tosa.add"(%247, %23) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    ml_program.global_store @global332 = %248 : tensor<1x96x25x25xf32>
    %249 = "tosa.clamp"(%248) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    ml_program.global_store @global333 = %249 : tensor<1x96x25x25xf32>
    %250 = "tosa.transpose"(%249, %1) : (tensor<1x96x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x96xf32>
    %251 = "tosa.conv2d"(%250, %24, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x96xf32>, tensor<96x3x3x96xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %252 = "tosa.transpose"(%251, %3) : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %253 = "tosa.sub"(%252, %23) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    ml_program.global_store @global339 = %151 : tensor<1x96x1x1xf32>
    %254 = "tosa.mul"(%253, %151) {shift = 0 : i32} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %255 = "tosa.mul"(%254, %23) {shift = 0 : i32} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %256 = "tosa.add"(%255, %23) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    ml_program.global_store @global342 = %256 : tensor<1x96x25x25xf32>
    %257 = "tosa.clamp"(%256) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    ml_program.global_store @global343 = %257 : tensor<1x96x25x25xf32>
    ml_program.global_store @global344 = %219 : tensor<1x25x25x288xf32>
    %258 = "tosa.avg_pool2d"(%219) {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x288xf32>) -> tensor<1x25x25x288xf32>
    %259 = "tosa.conv2d"(%258, %28, %8) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x288xf32>, tensor<64x1x1x288xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %260 = "tosa.transpose"(%259, %3) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %261 = "tosa.sub"(%260, %9) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    ml_program.global_store @global352 = %94 : tensor<1x64x1x1xf32>
    %262 = "tosa.mul"(%261, %94) {shift = 0 : i32} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %263 = "tosa.mul"(%262, %9) {shift = 0 : i32} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %264 = "tosa.add"(%263, %9) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    ml_program.global_store @global355 = %264 : tensor<1x64x25x25xf32>
    %265 = "tosa.clamp"(%264) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    ml_program.global_store @global356 = %265 : tensor<1x64x25x25xf32>
    %inserted_slice_12 = tensor.insert_slice %226 into %cst_0[0, 0, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x288x25x25xf32>
    %inserted_slice_13 = tensor.insert_slice %241 into %inserted_slice_12[0, 64, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x288x25x25xf32>
    %inserted_slice_14 = tensor.insert_slice %257 into %inserted_slice_13[0, 128, 0, 0] [1, 96, 25, 25] [1, 1, 1, 1] : tensor<1x96x25x25xf32> into tensor<1x288x25x25xf32>
    %inserted_slice_15 = tensor.insert_slice %265 into %inserted_slice_14[0, 224, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x288x25x25xf32>
    %266 = "tosa.transpose"(%inserted_slice_15, %1) : (tensor<1x288x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x288xf32>
    %267 = "tosa.conv2d"(%266, %30, %31) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x25x25x288xf32>, tensor<384x3x3x288xf32>, tensor<384xf32>) -> tensor<1x12x12x384xf32>
    %268 = "tosa.transpose"(%267, %3) : (tensor<1x12x12x384xf32>, tensor<4xi64>) -> tensor<1x384x12x12xf32>
    %269 = "tosa.sub"(%268, %32) : (tensor<1x384x12x12xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x12x12xf32>
    %270 = "tosa.add"(%32, %5) : (tensor<1x384x1x1xf32>, tensor<f32>) -> tensor<1x384x1x1xf32>
    %271 = "tosa.rsqrt"(%270) : (tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    ml_program.global_store @global367 = %271 : tensor<1x384x1x1xf32>
    %272 = "tosa.mul"(%269, %271) {shift = 0 : i32} : (tensor<1x384x12x12xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x12x12xf32>
    %273 = "tosa.mul"(%272, %32) {shift = 0 : i32} : (tensor<1x384x12x12xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x12x12xf32>
    %274 = "tosa.add"(%273, %32) : (tensor<1x384x12x12xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x12x12xf32>
    ml_program.global_store @global370 = %274 : tensor<1x384x12x12xf32>
    %275 = "tosa.clamp"(%274) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x12x12xf32>) -> tensor<1x384x12x12xf32>
    ml_program.global_store @global371 = %275 : tensor<1x384x12x12xf32>
    %276 = "tosa.conv2d"(%266, %28, %8) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x288xf32>, tensor<64x1x1x288xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %277 = "tosa.transpose"(%276, %3) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %278 = "tosa.sub"(%277, %9) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    ml_program.global_store @global377 = %94 : tensor<1x64x1x1xf32>
    %279 = "tosa.mul"(%278, %94) {shift = 0 : i32} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %280 = "tosa.mul"(%279, %9) {shift = 0 : i32} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %281 = "tosa.add"(%280, %9) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    ml_program.global_store @global380 = %281 : tensor<1x64x25x25xf32>
    %282 = "tosa.clamp"(%281) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    ml_program.global_store @global381 = %282 : tensor<1x64x25x25xf32>
    %283 = "tosa.transpose"(%282, %1) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %284 = "tosa.conv2d"(%283, %21, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<96x3x3x64xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %285 = "tosa.transpose"(%284, %3) : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %286 = "tosa.sub"(%285, %23) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    ml_program.global_store @global387 = %151 : tensor<1x96x1x1xf32>
    %287 = "tosa.mul"(%286, %151) {shift = 0 : i32} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %288 = "tosa.mul"(%287, %23) {shift = 0 : i32} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %289 = "tosa.add"(%288, %23) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    ml_program.global_store @global390 = %289 : tensor<1x96x25x25xf32>
    %290 = "tosa.clamp"(%289) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    ml_program.global_store @global391 = %290 : tensor<1x96x25x25xf32>
    %291 = "tosa.transpose"(%290, %1) : (tensor<1x96x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x96xf32>
    %292 = "tosa.conv2d"(%291, %24, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x25x25x96xf32>, tensor<96x3x3x96xf32>, tensor<96xf32>) -> tensor<1x12x12x96xf32>
    %293 = "tosa.transpose"(%292, %3) : (tensor<1x12x12x96xf32>, tensor<4xi64>) -> tensor<1x96x12x12xf32>
    %294 = "tosa.sub"(%293, %23) : (tensor<1x96x12x12xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x12x12xf32>
    ml_program.global_store @global397 = %151 : tensor<1x96x1x1xf32>
    %295 = "tosa.mul"(%294, %151) {shift = 0 : i32} : (tensor<1x96x12x12xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x12x12xf32>
    %296 = "tosa.mul"(%295, %23) {shift = 0 : i32} : (tensor<1x96x12x12xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x12x12xf32>
    %297 = "tosa.add"(%296, %23) : (tensor<1x96x12x12xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x12x12xf32>
    ml_program.global_store @global400 = %297 : tensor<1x96x12x12xf32>
    %298 = "tosa.clamp"(%297) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x12x12xf32>) -> tensor<1x96x12x12xf32>
    ml_program.global_store @global401 = %298 : tensor<1x96x12x12xf32>
    ml_program.global_store @global402 = %266 : tensor<1x25x25x288xf32>
    %299 = "tosa.max_pool2d"(%266) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x25x25x288xf32>) -> tensor<1x12x12x288xf32>
    ml_program.global_store @global403 = %299 : tensor<1x12x12x288xf32>
    %300 = "tosa.transpose"(%299, %3) : (tensor<1x12x12x288xf32>, tensor<4xi64>) -> tensor<1x288x12x12xf32>
    %inserted_slice_16 = tensor.insert_slice %275 into %cst_1[0, 0, 0, 0] [1, 384, 12, 12] [1, 1, 1, 1] : tensor<1x384x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_17 = tensor.insert_slice %298 into %inserted_slice_16[0, 384, 0, 0] [1, 96, 12, 12] [1, 1, 1, 1] : tensor<1x96x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_18 = tensor.insert_slice %300 into %inserted_slice_17[0, 480, 0, 0] [1, 288, 12, 12] [1, 1, 1, 1] : tensor<1x288x12x12xf32> into tensor<1x768x12x12xf32>
    %301 = "tosa.transpose"(%inserted_slice_18, %1) : (tensor<1x768x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x768xf32>
    %302 = "tosa.conv2d"(%301, %33, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %303 = "tosa.transpose"(%302, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %304 = "tosa.sub"(%303, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global414 = %115 : tensor<1x192x1x1xf32>
    %305 = "tosa.mul"(%304, %115) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %306 = "tosa.mul"(%305, %15) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %307 = "tosa.add"(%306, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global417 = %307 : tensor<1x192x12x12xf32>
    %308 = "tosa.clamp"(%307) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global418 = %308 : tensor<1x192x12x12xf32>
    %309 = "tosa.conv2d"(%301, %34, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<128x1x1x768xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %310 = "tosa.transpose"(%309, %3) : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %311 = "tosa.sub"(%310, %36) : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %312 = "tosa.add"(%36, %5) : (tensor<1x128x1x1xf32>, tensor<f32>) -> tensor<1x128x1x1xf32>
    %313 = "tosa.rsqrt"(%312) : (tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    ml_program.global_store @global424 = %313 : tensor<1x128x1x1xf32>
    %314 = "tosa.mul"(%311, %313) {shift = 0 : i32} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %315 = "tosa.mul"(%314, %36) {shift = 0 : i32} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %316 = "tosa.add"(%315, %36) : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    ml_program.global_store @global427 = %316 : tensor<1x128x12x12xf32>
    %317 = "tosa.clamp"(%316) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    ml_program.global_store @global428 = %317 : tensor<1x128x12x12xf32>
    %318 = "tosa.transpose"(%317, %1) : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %319 = "tosa.conv2d"(%318, %37, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<128x1x7x128xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %320 = "tosa.transpose"(%319, %3) : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %321 = "tosa.sub"(%320, %36) : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    ml_program.global_store @global434 = %313 : tensor<1x128x1x1xf32>
    %322 = "tosa.mul"(%321, %313) {shift = 0 : i32} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %323 = "tosa.mul"(%322, %36) {shift = 0 : i32} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %324 = "tosa.add"(%323, %36) : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    ml_program.global_store @global437 = %324 : tensor<1x128x12x12xf32>
    %325 = "tosa.clamp"(%324) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    ml_program.global_store @global438 = %325 : tensor<1x128x12x12xf32>
    %326 = "tosa.transpose"(%325, %1) : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %327 = "tosa.conv2d"(%326, %38, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<192x7x1x128xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %328 = "tosa.transpose"(%327, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %329 = "tosa.sub"(%328, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global444 = %115 : tensor<1x192x1x1xf32>
    %330 = "tosa.mul"(%329, %115) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %331 = "tosa.mul"(%330, %15) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %332 = "tosa.add"(%331, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global447 = %332 : tensor<1x192x12x12xf32>
    %333 = "tosa.clamp"(%332) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global448 = %333 : tensor<1x192x12x12xf32>
    ml_program.global_store @global454 = %313 : tensor<1x128x1x1xf32>
    ml_program.global_store @global457 = %316 : tensor<1x128x12x12xf32>
    ml_program.global_store @global458 = %317 : tensor<1x128x12x12xf32>
    %334 = "tosa.conv2d"(%318, %39, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<128x7x1x128xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %335 = "tosa.transpose"(%334, %3) : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %336 = "tosa.sub"(%335, %36) : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    ml_program.global_store @global464 = %313 : tensor<1x128x1x1xf32>
    %337 = "tosa.mul"(%336, %313) {shift = 0 : i32} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %338 = "tosa.mul"(%337, %36) {shift = 0 : i32} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %339 = "tosa.add"(%338, %36) : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    ml_program.global_store @global467 = %339 : tensor<1x128x12x12xf32>
    %340 = "tosa.clamp"(%339) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    ml_program.global_store @global468 = %340 : tensor<1x128x12x12xf32>
    %341 = "tosa.transpose"(%340, %1) : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %342 = "tosa.conv2d"(%341, %37, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<128x1x7x128xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %343 = "tosa.transpose"(%342, %3) : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %344 = "tosa.sub"(%343, %36) : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    ml_program.global_store @global474 = %313 : tensor<1x128x1x1xf32>
    %345 = "tosa.mul"(%344, %313) {shift = 0 : i32} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %346 = "tosa.mul"(%345, %36) {shift = 0 : i32} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %347 = "tosa.add"(%346, %36) : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    ml_program.global_store @global477 = %347 : tensor<1x128x12x12xf32>
    %348 = "tosa.clamp"(%347) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    ml_program.global_store @global478 = %348 : tensor<1x128x12x12xf32>
    %349 = "tosa.transpose"(%348, %1) : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %350 = "tosa.conv2d"(%349, %39, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<128x7x1x128xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %351 = "tosa.transpose"(%350, %3) : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %352 = "tosa.sub"(%351, %36) : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    ml_program.global_store @global484 = %313 : tensor<1x128x1x1xf32>
    %353 = "tosa.mul"(%352, %313) {shift = 0 : i32} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %354 = "tosa.mul"(%353, %36) {shift = 0 : i32} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %355 = "tosa.add"(%354, %36) : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    ml_program.global_store @global487 = %355 : tensor<1x128x12x12xf32>
    %356 = "tosa.clamp"(%355) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    ml_program.global_store @global488 = %356 : tensor<1x128x12x12xf32>
    %357 = "tosa.transpose"(%356, %1) : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %358 = "tosa.conv2d"(%357, %40, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<192x1x7x128xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %359 = "tosa.transpose"(%358, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %360 = "tosa.sub"(%359, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global494 = %115 : tensor<1x192x1x1xf32>
    %361 = "tosa.mul"(%360, %115) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %362 = "tosa.mul"(%361, %15) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %363 = "tosa.add"(%362, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global497 = %363 : tensor<1x192x12x12xf32>
    %364 = "tosa.clamp"(%363) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global498 = %364 : tensor<1x192x12x12xf32>
    ml_program.global_store @global499 = %301 : tensor<1x12x12x768xf32>
    %365 = "tosa.avg_pool2d"(%301) {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>) -> tensor<1x12x12x768xf32>
    %366 = "tosa.conv2d"(%365, %33, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %367 = "tosa.transpose"(%366, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %368 = "tosa.sub"(%367, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global507 = %115 : tensor<1x192x1x1xf32>
    %369 = "tosa.mul"(%368, %115) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %370 = "tosa.mul"(%369, %15) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %371 = "tosa.add"(%370, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global510 = %371 : tensor<1x192x12x12xf32>
    %372 = "tosa.clamp"(%371) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global511 = %372 : tensor<1x192x12x12xf32>
    %inserted_slice_19 = tensor.insert_slice %308 into %cst_1[0, 0, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_20 = tensor.insert_slice %333 into %inserted_slice_19[0, 192, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_21 = tensor.insert_slice %364 into %inserted_slice_20[0, 384, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_22 = tensor.insert_slice %372 into %inserted_slice_21[0, 576, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %373 = "tosa.transpose"(%inserted_slice_22, %1) : (tensor<1x768x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x768xf32>
    %374 = "tosa.conv2d"(%373, %33, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %375 = "tosa.transpose"(%374, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %376 = "tosa.sub"(%375, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global522 = %115 : tensor<1x192x1x1xf32>
    %377 = "tosa.mul"(%376, %115) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %378 = "tosa.mul"(%377, %15) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %379 = "tosa.add"(%378, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global525 = %379 : tensor<1x192x12x12xf32>
    %380 = "tosa.clamp"(%379) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global526 = %380 : tensor<1x192x12x12xf32>
    %381 = "tosa.conv2d"(%373, %41, %42) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<160x1x1x768xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %382 = "tosa.transpose"(%381, %3) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %383 = "tosa.sub"(%382, %43) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %384 = "tosa.add"(%43, %5) : (tensor<1x160x1x1xf32>, tensor<f32>) -> tensor<1x160x1x1xf32>
    %385 = "tosa.rsqrt"(%384) : (tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    ml_program.global_store @global532 = %385 : tensor<1x160x1x1xf32>
    %386 = "tosa.mul"(%383, %385) {shift = 0 : i32} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %387 = "tosa.mul"(%386, %43) {shift = 0 : i32} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %388 = "tosa.add"(%387, %43) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    ml_program.global_store @global535 = %388 : tensor<1x160x12x12xf32>
    %389 = "tosa.clamp"(%388) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    ml_program.global_store @global536 = %389 : tensor<1x160x12x12xf32>
    %390 = "tosa.transpose"(%389, %1) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %391 = "tosa.conv2d"(%390, %44, %42) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x1x7x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %392 = "tosa.transpose"(%391, %3) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %393 = "tosa.sub"(%392, %43) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    ml_program.global_store @global542 = %385 : tensor<1x160x1x1xf32>
    %394 = "tosa.mul"(%393, %385) {shift = 0 : i32} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %395 = "tosa.mul"(%394, %43) {shift = 0 : i32} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %396 = "tosa.add"(%395, %43) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    ml_program.global_store @global545 = %396 : tensor<1x160x12x12xf32>
    %397 = "tosa.clamp"(%396) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    ml_program.global_store @global546 = %397 : tensor<1x160x12x12xf32>
    %398 = "tosa.transpose"(%397, %1) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %399 = "tosa.conv2d"(%398, %45, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<192x7x1x160xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %400 = "tosa.transpose"(%399, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %401 = "tosa.sub"(%400, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global552 = %115 : tensor<1x192x1x1xf32>
    %402 = "tosa.mul"(%401, %115) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %403 = "tosa.mul"(%402, %15) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %404 = "tosa.add"(%403, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global555 = %404 : tensor<1x192x12x12xf32>
    %405 = "tosa.clamp"(%404) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global556 = %405 : tensor<1x192x12x12xf32>
    ml_program.global_store @global562 = %385 : tensor<1x160x1x1xf32>
    ml_program.global_store @global565 = %388 : tensor<1x160x12x12xf32>
    ml_program.global_store @global566 = %389 : tensor<1x160x12x12xf32>
    %406 = "tosa.conv2d"(%390, %46, %42) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x7x1x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %407 = "tosa.transpose"(%406, %3) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %408 = "tosa.sub"(%407, %43) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    ml_program.global_store @global572 = %385 : tensor<1x160x1x1xf32>
    %409 = "tosa.mul"(%408, %385) {shift = 0 : i32} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %410 = "tosa.mul"(%409, %43) {shift = 0 : i32} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %411 = "tosa.add"(%410, %43) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    ml_program.global_store @global575 = %411 : tensor<1x160x12x12xf32>
    %412 = "tosa.clamp"(%411) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    ml_program.global_store @global576 = %412 : tensor<1x160x12x12xf32>
    %413 = "tosa.transpose"(%412, %1) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %414 = "tosa.conv2d"(%413, %44, %42) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x1x7x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %415 = "tosa.transpose"(%414, %3) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %416 = "tosa.sub"(%415, %43) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    ml_program.global_store @global582 = %385 : tensor<1x160x1x1xf32>
    %417 = "tosa.mul"(%416, %385) {shift = 0 : i32} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %418 = "tosa.mul"(%417, %43) {shift = 0 : i32} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %419 = "tosa.add"(%418, %43) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    ml_program.global_store @global585 = %419 : tensor<1x160x12x12xf32>
    %420 = "tosa.clamp"(%419) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    ml_program.global_store @global586 = %420 : tensor<1x160x12x12xf32>
    %421 = "tosa.transpose"(%420, %1) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %422 = "tosa.conv2d"(%421, %46, %42) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x7x1x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %423 = "tosa.transpose"(%422, %3) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %424 = "tosa.sub"(%423, %43) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    ml_program.global_store @global592 = %385 : tensor<1x160x1x1xf32>
    %425 = "tosa.mul"(%424, %385) {shift = 0 : i32} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %426 = "tosa.mul"(%425, %43) {shift = 0 : i32} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %427 = "tosa.add"(%426, %43) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    ml_program.global_store @global595 = %427 : tensor<1x160x12x12xf32>
    %428 = "tosa.clamp"(%427) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    ml_program.global_store @global596 = %428 : tensor<1x160x12x12xf32>
    %429 = "tosa.transpose"(%428, %1) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %430 = "tosa.conv2d"(%429, %47, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<192x1x7x160xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %431 = "tosa.transpose"(%430, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %432 = "tosa.sub"(%431, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global602 = %115 : tensor<1x192x1x1xf32>
    %433 = "tosa.mul"(%432, %115) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %434 = "tosa.mul"(%433, %15) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %435 = "tosa.add"(%434, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global605 = %435 : tensor<1x192x12x12xf32>
    %436 = "tosa.clamp"(%435) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global606 = %436 : tensor<1x192x12x12xf32>
    ml_program.global_store @global607 = %373 : tensor<1x12x12x768xf32>
    %437 = "tosa.avg_pool2d"(%373) {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>) -> tensor<1x12x12x768xf32>
    %438 = "tosa.conv2d"(%437, %33, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %439 = "tosa.transpose"(%438, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %440 = "tosa.sub"(%439, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global615 = %115 : tensor<1x192x1x1xf32>
    %441 = "tosa.mul"(%440, %115) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %442 = "tosa.mul"(%441, %15) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %443 = "tosa.add"(%442, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global618 = %443 : tensor<1x192x12x12xf32>
    %444 = "tosa.clamp"(%443) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global619 = %444 : tensor<1x192x12x12xf32>
    %inserted_slice_23 = tensor.insert_slice %380 into %cst_1[0, 0, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_24 = tensor.insert_slice %405 into %inserted_slice_23[0, 192, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_25 = tensor.insert_slice %436 into %inserted_slice_24[0, 384, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_26 = tensor.insert_slice %444 into %inserted_slice_25[0, 576, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %445 = "tosa.transpose"(%inserted_slice_26, %1) : (tensor<1x768x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x768xf32>
    %446 = "tosa.conv2d"(%445, %33, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %447 = "tosa.transpose"(%446, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %448 = "tosa.sub"(%447, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global630 = %115 : tensor<1x192x1x1xf32>
    %449 = "tosa.mul"(%448, %115) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %450 = "tosa.mul"(%449, %15) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %451 = "tosa.add"(%450, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global633 = %451 : tensor<1x192x12x12xf32>
    %452 = "tosa.clamp"(%451) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global634 = %452 : tensor<1x192x12x12xf32>
    %453 = "tosa.conv2d"(%445, %41, %42) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<160x1x1x768xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %454 = "tosa.transpose"(%453, %3) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %455 = "tosa.sub"(%454, %43) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    ml_program.global_store @global640 = %385 : tensor<1x160x1x1xf32>
    %456 = "tosa.mul"(%455, %385) {shift = 0 : i32} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %457 = "tosa.mul"(%456, %43) {shift = 0 : i32} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %458 = "tosa.add"(%457, %43) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    ml_program.global_store @global643 = %458 : tensor<1x160x12x12xf32>
    %459 = "tosa.clamp"(%458) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    ml_program.global_store @global644 = %459 : tensor<1x160x12x12xf32>
    %460 = "tosa.transpose"(%459, %1) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %461 = "tosa.conv2d"(%460, %44, %42) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x1x7x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %462 = "tosa.transpose"(%461, %3) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %463 = "tosa.sub"(%462, %43) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    ml_program.global_store @global650 = %385 : tensor<1x160x1x1xf32>
    %464 = "tosa.mul"(%463, %385) {shift = 0 : i32} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %465 = "tosa.mul"(%464, %43) {shift = 0 : i32} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %466 = "tosa.add"(%465, %43) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    ml_program.global_store @global653 = %466 : tensor<1x160x12x12xf32>
    %467 = "tosa.clamp"(%466) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    ml_program.global_store @global654 = %467 : tensor<1x160x12x12xf32>
    %468 = "tosa.transpose"(%467, %1) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %469 = "tosa.conv2d"(%468, %45, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<192x7x1x160xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %470 = "tosa.transpose"(%469, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %471 = "tosa.sub"(%470, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global660 = %115 : tensor<1x192x1x1xf32>
    %472 = "tosa.mul"(%471, %115) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %473 = "tosa.mul"(%472, %15) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %474 = "tosa.add"(%473, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global663 = %474 : tensor<1x192x12x12xf32>
    %475 = "tosa.clamp"(%474) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global664 = %475 : tensor<1x192x12x12xf32>
    ml_program.global_store @global670 = %385 : tensor<1x160x1x1xf32>
    ml_program.global_store @global673 = %458 : tensor<1x160x12x12xf32>
    ml_program.global_store @global674 = %459 : tensor<1x160x12x12xf32>
    %476 = "tosa.conv2d"(%460, %46, %42) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x7x1x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %477 = "tosa.transpose"(%476, %3) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %478 = "tosa.sub"(%477, %43) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    ml_program.global_store @global680 = %385 : tensor<1x160x1x1xf32>
    %479 = "tosa.mul"(%478, %385) {shift = 0 : i32} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %480 = "tosa.mul"(%479, %43) {shift = 0 : i32} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %481 = "tosa.add"(%480, %43) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    ml_program.global_store @global683 = %481 : tensor<1x160x12x12xf32>
    %482 = "tosa.clamp"(%481) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    ml_program.global_store @global684 = %482 : tensor<1x160x12x12xf32>
    %483 = "tosa.transpose"(%482, %1) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %484 = "tosa.conv2d"(%483, %44, %42) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x1x7x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %485 = "tosa.transpose"(%484, %3) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %486 = "tosa.sub"(%485, %43) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    ml_program.global_store @global690 = %385 : tensor<1x160x1x1xf32>
    %487 = "tosa.mul"(%486, %385) {shift = 0 : i32} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %488 = "tosa.mul"(%487, %43) {shift = 0 : i32} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %489 = "tosa.add"(%488, %43) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    ml_program.global_store @global693 = %489 : tensor<1x160x12x12xf32>
    %490 = "tosa.clamp"(%489) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    ml_program.global_store @global694 = %490 : tensor<1x160x12x12xf32>
    %491 = "tosa.transpose"(%490, %1) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %492 = "tosa.conv2d"(%491, %46, %42) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x7x1x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %493 = "tosa.transpose"(%492, %3) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %494 = "tosa.sub"(%493, %43) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    ml_program.global_store @global700 = %385 : tensor<1x160x1x1xf32>
    %495 = "tosa.mul"(%494, %385) {shift = 0 : i32} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %496 = "tosa.mul"(%495, %43) {shift = 0 : i32} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %497 = "tosa.add"(%496, %43) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    ml_program.global_store @global703 = %497 : tensor<1x160x12x12xf32>
    %498 = "tosa.clamp"(%497) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    ml_program.global_store @global704 = %498 : tensor<1x160x12x12xf32>
    %499 = "tosa.transpose"(%498, %1) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %500 = "tosa.conv2d"(%499, %47, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<192x1x7x160xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %501 = "tosa.transpose"(%500, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %502 = "tosa.sub"(%501, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global710 = %115 : tensor<1x192x1x1xf32>
    %503 = "tosa.mul"(%502, %115) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %504 = "tosa.mul"(%503, %15) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %505 = "tosa.add"(%504, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global713 = %505 : tensor<1x192x12x12xf32>
    %506 = "tosa.clamp"(%505) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global714 = %506 : tensor<1x192x12x12xf32>
    ml_program.global_store @global715 = %445 : tensor<1x12x12x768xf32>
    %507 = "tosa.avg_pool2d"(%445) {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>) -> tensor<1x12x12x768xf32>
    %508 = "tosa.conv2d"(%507, %33, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %509 = "tosa.transpose"(%508, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %510 = "tosa.sub"(%509, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global723 = %115 : tensor<1x192x1x1xf32>
    %511 = "tosa.mul"(%510, %115) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %512 = "tosa.mul"(%511, %15) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %513 = "tosa.add"(%512, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global726 = %513 : tensor<1x192x12x12xf32>
    %514 = "tosa.clamp"(%513) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global727 = %514 : tensor<1x192x12x12xf32>
    %inserted_slice_27 = tensor.insert_slice %452 into %cst_1[0, 0, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_28 = tensor.insert_slice %475 into %inserted_slice_27[0, 192, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_29 = tensor.insert_slice %506 into %inserted_slice_28[0, 384, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_30 = tensor.insert_slice %514 into %inserted_slice_29[0, 576, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %515 = "tosa.transpose"(%inserted_slice_30, %1) : (tensor<1x768x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x768xf32>
    %516 = "tosa.conv2d"(%515, %33, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %517 = "tosa.transpose"(%516, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %518 = "tosa.sub"(%517, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global738 = %115 : tensor<1x192x1x1xf32>
    %519 = "tosa.mul"(%518, %115) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %520 = "tosa.mul"(%519, %15) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %521 = "tosa.add"(%520, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global741 = %521 : tensor<1x192x12x12xf32>
    %522 = "tosa.clamp"(%521) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global742 = %522 : tensor<1x192x12x12xf32>
    ml_program.global_store @global748 = %115 : tensor<1x192x1x1xf32>
    ml_program.global_store @global751 = %521 : tensor<1x192x12x12xf32>
    ml_program.global_store @global752 = %522 : tensor<1x192x12x12xf32>
    %523 = "tosa.transpose"(%522, %1) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %524 = "tosa.conv2d"(%523, %48, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x1x7x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %525 = "tosa.transpose"(%524, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %526 = "tosa.sub"(%525, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global758 = %115 : tensor<1x192x1x1xf32>
    %527 = "tosa.mul"(%526, %115) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %528 = "tosa.mul"(%527, %15) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %529 = "tosa.add"(%528, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global761 = %529 : tensor<1x192x12x12xf32>
    %530 = "tosa.clamp"(%529) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global762 = %530 : tensor<1x192x12x12xf32>
    %531 = "tosa.transpose"(%530, %1) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %532 = "tosa.conv2d"(%531, %49, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x7x1x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %533 = "tosa.transpose"(%532, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %534 = "tosa.sub"(%533, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global768 = %115 : tensor<1x192x1x1xf32>
    %535 = "tosa.mul"(%534, %115) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %536 = "tosa.mul"(%535, %15) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %537 = "tosa.add"(%536, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global771 = %537 : tensor<1x192x12x12xf32>
    %538 = "tosa.clamp"(%537) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global772 = %538 : tensor<1x192x12x12xf32>
    ml_program.global_store @global778 = %115 : tensor<1x192x1x1xf32>
    ml_program.global_store @global781 = %521 : tensor<1x192x12x12xf32>
    ml_program.global_store @global782 = %522 : tensor<1x192x12x12xf32>
    %539 = "tosa.conv2d"(%523, %49, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x7x1x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %540 = "tosa.transpose"(%539, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %541 = "tosa.sub"(%540, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global788 = %115 : tensor<1x192x1x1xf32>
    %542 = "tosa.mul"(%541, %115) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %543 = "tosa.mul"(%542, %15) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %544 = "tosa.add"(%543, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global791 = %544 : tensor<1x192x12x12xf32>
    %545 = "tosa.clamp"(%544) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global792 = %545 : tensor<1x192x12x12xf32>
    %546 = "tosa.transpose"(%545, %1) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %547 = "tosa.conv2d"(%546, %48, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x1x7x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %548 = "tosa.transpose"(%547, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %549 = "tosa.sub"(%548, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global798 = %115 : tensor<1x192x1x1xf32>
    %550 = "tosa.mul"(%549, %115) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %551 = "tosa.mul"(%550, %15) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %552 = "tosa.add"(%551, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global801 = %552 : tensor<1x192x12x12xf32>
    %553 = "tosa.clamp"(%552) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global802 = %553 : tensor<1x192x12x12xf32>
    %554 = "tosa.transpose"(%553, %1) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %555 = "tosa.conv2d"(%554, %49, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x7x1x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %556 = "tosa.transpose"(%555, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %557 = "tosa.sub"(%556, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global808 = %115 : tensor<1x192x1x1xf32>
    %558 = "tosa.mul"(%557, %115) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %559 = "tosa.mul"(%558, %15) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %560 = "tosa.add"(%559, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global811 = %560 : tensor<1x192x12x12xf32>
    %561 = "tosa.clamp"(%560) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global812 = %561 : tensor<1x192x12x12xf32>
    %562 = "tosa.transpose"(%561, %1) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %563 = "tosa.conv2d"(%562, %48, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x1x7x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %564 = "tosa.transpose"(%563, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %565 = "tosa.sub"(%564, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global818 = %115 : tensor<1x192x1x1xf32>
    %566 = "tosa.mul"(%565, %115) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %567 = "tosa.mul"(%566, %15) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %568 = "tosa.add"(%567, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global821 = %568 : tensor<1x192x12x12xf32>
    %569 = "tosa.clamp"(%568) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global822 = %569 : tensor<1x192x12x12xf32>
    ml_program.global_store @global823 = %515 : tensor<1x12x12x768xf32>
    %570 = "tosa.avg_pool2d"(%515) {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>) -> tensor<1x12x12x768xf32>
    %571 = "tosa.conv2d"(%570, %33, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %572 = "tosa.transpose"(%571, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %573 = "tosa.sub"(%572, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global831 = %115 : tensor<1x192x1x1xf32>
    %574 = "tosa.mul"(%573, %115) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %575 = "tosa.mul"(%574, %15) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %576 = "tosa.add"(%575, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global834 = %576 : tensor<1x192x12x12xf32>
    %577 = "tosa.clamp"(%576) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global835 = %577 : tensor<1x192x12x12xf32>
    %inserted_slice_31 = tensor.insert_slice %522 into %cst_1[0, 0, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_32 = tensor.insert_slice %538 into %inserted_slice_31[0, 192, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_33 = tensor.insert_slice %569 into %inserted_slice_32[0, 384, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_34 = tensor.insert_slice %577 into %inserted_slice_33[0, 576, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %578 = "tosa.transpose"(%inserted_slice_34, %1) : (tensor<1x768x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x768xf32>
    %579 = "tosa.conv2d"(%578, %33, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %580 = "tosa.transpose"(%579, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %581 = "tosa.sub"(%580, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global846 = %115 : tensor<1x192x1x1xf32>
    %582 = "tosa.mul"(%581, %115) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %583 = "tosa.mul"(%582, %15) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %584 = "tosa.add"(%583, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global849 = %584 : tensor<1x192x12x12xf32>
    %585 = "tosa.clamp"(%584) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global850 = %585 : tensor<1x192x12x12xf32>
    %586 = "tosa.transpose"(%585, %1) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %587 = "tosa.conv2d"(%586, %50, %51) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x12x12x192xf32>, tensor<320x3x3x192xf32>, tensor<320xf32>) -> tensor<1x5x5x320xf32>
    %588 = "tosa.transpose"(%587, %3) : (tensor<1x5x5x320xf32>, tensor<4xi64>) -> tensor<1x320x5x5xf32>
    %589 = "tosa.sub"(%588, %52) : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %590 = "tosa.add"(%52, %5) : (tensor<1x320x1x1xf32>, tensor<f32>) -> tensor<1x320x1x1xf32>
    %591 = "tosa.rsqrt"(%590) : (tensor<1x320x1x1xf32>) -> tensor<1x320x1x1xf32>
    ml_program.global_store @global856 = %591 : tensor<1x320x1x1xf32>
    %592 = "tosa.mul"(%589, %591) {shift = 0 : i32} : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %593 = "tosa.mul"(%592, %52) {shift = 0 : i32} : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %594 = "tosa.add"(%593, %52) : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    ml_program.global_store @global859 = %594 : tensor<1x320x5x5xf32>
    %595 = "tosa.clamp"(%594) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x320x5x5xf32>) -> tensor<1x320x5x5xf32>
    ml_program.global_store @global860 = %595 : tensor<1x320x5x5xf32>
    ml_program.global_store @global866 = %115 : tensor<1x192x1x1xf32>
    ml_program.global_store @global869 = %584 : tensor<1x192x12x12xf32>
    ml_program.global_store @global870 = %585 : tensor<1x192x12x12xf32>
    %596 = "tosa.conv2d"(%586, %48, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x1x7x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %597 = "tosa.transpose"(%596, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %598 = "tosa.sub"(%597, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global876 = %115 : tensor<1x192x1x1xf32>
    %599 = "tosa.mul"(%598, %115) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %600 = "tosa.mul"(%599, %15) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %601 = "tosa.add"(%600, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global879 = %601 : tensor<1x192x12x12xf32>
    %602 = "tosa.clamp"(%601) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global880 = %602 : tensor<1x192x12x12xf32>
    %603 = "tosa.transpose"(%602, %1) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %604 = "tosa.conv2d"(%603, %49, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x7x1x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %605 = "tosa.transpose"(%604, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %606 = "tosa.sub"(%605, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global886 = %115 : tensor<1x192x1x1xf32>
    %607 = "tosa.mul"(%606, %115) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %608 = "tosa.mul"(%607, %15) {shift = 0 : i32} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %609 = "tosa.add"(%608, %15) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global889 = %609 : tensor<1x192x12x12xf32>
    %610 = "tosa.clamp"(%609) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    ml_program.global_store @global890 = %610 : tensor<1x192x12x12xf32>
    %611 = "tosa.transpose"(%610, %1) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %612 = "tosa.conv2d"(%611, %53, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x12x12x192xf32>, tensor<192x3x3x192xf32>, tensor<192xf32>) -> tensor<1x5x5x192xf32>
    %613 = "tosa.transpose"(%612, %3) : (tensor<1x5x5x192xf32>, tensor<4xi64>) -> tensor<1x192x5x5xf32>
    %614 = "tosa.sub"(%613, %15) : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    ml_program.global_store @global896 = %115 : tensor<1x192x1x1xf32>
    %615 = "tosa.mul"(%614, %115) {shift = 0 : i32} : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %616 = "tosa.mul"(%615, %15) {shift = 0 : i32} : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %617 = "tosa.add"(%616, %15) : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    ml_program.global_store @global899 = %617 : tensor<1x192x5x5xf32>
    %618 = "tosa.clamp"(%617) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xf32>
    ml_program.global_store @global900 = %618 : tensor<1x192x5x5xf32>
    ml_program.global_store @global901 = %578 : tensor<1x12x12x768xf32>
    %619 = "tosa.max_pool2d"(%578) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x12x12x768xf32>) -> tensor<1x5x5x768xf32>
    ml_program.global_store @global902 = %619 : tensor<1x5x5x768xf32>
    %620 = "tosa.transpose"(%619, %3) : (tensor<1x5x5x768xf32>, tensor<4xi64>) -> tensor<1x768x5x5xf32>
    %inserted_slice_35 = tensor.insert_slice %595 into %cst_2[0, 0, 0, 0] [1, 320, 5, 5] [1, 1, 1, 1] : tensor<1x320x5x5xf32> into tensor<1x1280x5x5xf32>
    %inserted_slice_36 = tensor.insert_slice %618 into %inserted_slice_35[0, 320, 0, 0] [1, 192, 5, 5] [1, 1, 1, 1] : tensor<1x192x5x5xf32> into tensor<1x1280x5x5xf32>
    %inserted_slice_37 = tensor.insert_slice %620 into %inserted_slice_36[0, 512, 0, 0] [1, 768, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> into tensor<1x1280x5x5xf32>
    %621 = "tosa.transpose"(%inserted_slice_37, %1) : (tensor<1x1280x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x1280xf32>
    %622 = "tosa.conv2d"(%621, %54, %51) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x1280xf32>, tensor<320x1x1x1280xf32>, tensor<320xf32>) -> tensor<1x5x5x320xf32>
    %623 = "tosa.transpose"(%622, %3) : (tensor<1x5x5x320xf32>, tensor<4xi64>) -> tensor<1x320x5x5xf32>
    %624 = "tosa.sub"(%623, %52) : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    ml_program.global_store @global913 = %591 : tensor<1x320x1x1xf32>
    %625 = "tosa.mul"(%624, %591) {shift = 0 : i32} : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %626 = "tosa.mul"(%625, %52) {shift = 0 : i32} : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %627 = "tosa.add"(%626, %52) : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    ml_program.global_store @global916 = %627 : tensor<1x320x5x5xf32>
    %628 = "tosa.clamp"(%627) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x320x5x5xf32>) -> tensor<1x320x5x5xf32>
    ml_program.global_store @global917 = %628 : tensor<1x320x5x5xf32>
    %629 = "tosa.conv2d"(%621, %55, %31) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x1280xf32>, tensor<384x1x1x1280xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %630 = "tosa.transpose"(%629, %3) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %631 = "tosa.sub"(%630, %32) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global923 = %271 : tensor<1x384x1x1xf32>
    %632 = "tosa.mul"(%631, %271) {shift = 0 : i32} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %633 = "tosa.mul"(%632, %32) {shift = 0 : i32} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %634 = "tosa.add"(%633, %32) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global926 = %634 : tensor<1x384x5x5xf32>
    %635 = "tosa.clamp"(%634) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global927 = %635 : tensor<1x384x5x5xf32>
    %636 = "tosa.transpose"(%635, %1) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %637 = "tosa.conv2d"(%636, %56, %31) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x1x3x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %638 = "tosa.transpose"(%637, %3) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %639 = "tosa.sub"(%638, %32) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global933 = %271 : tensor<1x384x1x1xf32>
    %640 = "tosa.mul"(%639, %271) {shift = 0 : i32} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %641 = "tosa.mul"(%640, %32) {shift = 0 : i32} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %642 = "tosa.add"(%641, %32) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global936 = %642 : tensor<1x384x5x5xf32>
    %643 = "tosa.clamp"(%642) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global937 = %643 : tensor<1x384x5x5xf32>
    %644 = "tosa.conv2d"(%636, %57, %31) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x3x1x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %645 = "tosa.transpose"(%644, %3) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %646 = "tosa.sub"(%645, %32) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global943 = %271 : tensor<1x384x1x1xf32>
    %647 = "tosa.mul"(%646, %271) {shift = 0 : i32} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %648 = "tosa.mul"(%647, %32) {shift = 0 : i32} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %649 = "tosa.add"(%648, %32) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global946 = %649 : tensor<1x384x5x5xf32>
    %650 = "tosa.clamp"(%649) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global947 = %650 : tensor<1x384x5x5xf32>
    %inserted_slice_38 = tensor.insert_slice %643 into %cst_3[0, 0, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    %inserted_slice_39 = tensor.insert_slice %650 into %inserted_slice_38[0, 384, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    %651 = "tosa.conv2d"(%621, %58, %59) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x1280xf32>, tensor<448x1x1x1280xf32>, tensor<448xf32>) -> tensor<1x5x5x448xf32>
    %652 = "tosa.transpose"(%651, %3) : (tensor<1x5x5x448xf32>, tensor<4xi64>) -> tensor<1x448x5x5xf32>
    %653 = "tosa.sub"(%652, %60) : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %654 = "tosa.add"(%60, %5) : (tensor<1x448x1x1xf32>, tensor<f32>) -> tensor<1x448x1x1xf32>
    %655 = "tosa.rsqrt"(%654) : (tensor<1x448x1x1xf32>) -> tensor<1x448x1x1xf32>
    ml_program.global_store @global956 = %655 : tensor<1x448x1x1xf32>
    %656 = "tosa.mul"(%653, %655) {shift = 0 : i32} : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %657 = "tosa.mul"(%656, %60) {shift = 0 : i32} : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %658 = "tosa.add"(%657, %60) : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    ml_program.global_store @global959 = %658 : tensor<1x448x5x5xf32>
    %659 = "tosa.clamp"(%658) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x448x5x5xf32>) -> tensor<1x448x5x5xf32>
    ml_program.global_store @global960 = %659 : tensor<1x448x5x5xf32>
    %660 = "tosa.transpose"(%659, %1) : (tensor<1x448x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x448xf32>
    %661 = "tosa.conv2d"(%660, %61, %31) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x448xf32>, tensor<384x3x3x448xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %662 = "tosa.transpose"(%661, %3) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %663 = "tosa.sub"(%662, %32) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global966 = %271 : tensor<1x384x1x1xf32>
    %664 = "tosa.mul"(%663, %271) {shift = 0 : i32} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %665 = "tosa.mul"(%664, %32) {shift = 0 : i32} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %666 = "tosa.add"(%665, %32) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global969 = %666 : tensor<1x384x5x5xf32>
    %667 = "tosa.clamp"(%666) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global970 = %667 : tensor<1x384x5x5xf32>
    %668 = "tosa.transpose"(%667, %1) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %669 = "tosa.conv2d"(%668, %56, %31) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x1x3x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %670 = "tosa.transpose"(%669, %3) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %671 = "tosa.sub"(%670, %32) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global976 = %271 : tensor<1x384x1x1xf32>
    %672 = "tosa.mul"(%671, %271) {shift = 0 : i32} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %673 = "tosa.mul"(%672, %32) {shift = 0 : i32} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %674 = "tosa.add"(%673, %32) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global979 = %674 : tensor<1x384x5x5xf32>
    %675 = "tosa.clamp"(%674) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global980 = %675 : tensor<1x384x5x5xf32>
    %676 = "tosa.conv2d"(%668, %57, %31) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x3x1x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %677 = "tosa.transpose"(%676, %3) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %678 = "tosa.sub"(%677, %32) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global986 = %271 : tensor<1x384x1x1xf32>
    %679 = "tosa.mul"(%678, %271) {shift = 0 : i32} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %680 = "tosa.mul"(%679, %32) {shift = 0 : i32} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %681 = "tosa.add"(%680, %32) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global989 = %681 : tensor<1x384x5x5xf32>
    %682 = "tosa.clamp"(%681) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global990 = %682 : tensor<1x384x5x5xf32>
    %inserted_slice_40 = tensor.insert_slice %675 into %cst_3[0, 0, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    %inserted_slice_41 = tensor.insert_slice %682 into %inserted_slice_40[0, 384, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    ml_program.global_store @global994 = %621 : tensor<1x5x5x1280xf32>
    %683 = "tosa.avg_pool2d"(%621) {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x1280xf32>) -> tensor<1x5x5x1280xf32>
    %684 = "tosa.conv2d"(%683, %62, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x1280xf32>, tensor<192x1x1x1280xf32>, tensor<192xf32>) -> tensor<1x5x5x192xf32>
    %685 = "tosa.transpose"(%684, %3) : (tensor<1x5x5x192xf32>, tensor<4xi64>) -> tensor<1x192x5x5xf32>
    %686 = "tosa.sub"(%685, %15) : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    ml_program.global_store @global1002 = %115 : tensor<1x192x1x1xf32>
    %687 = "tosa.mul"(%686, %115) {shift = 0 : i32} : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %688 = "tosa.mul"(%687, %15) {shift = 0 : i32} : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %689 = "tosa.add"(%688, %15) : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    ml_program.global_store @global1005 = %689 : tensor<1x192x5x5xf32>
    %690 = "tosa.clamp"(%689) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xf32>
    ml_program.global_store @global1006 = %690 : tensor<1x192x5x5xf32>
    %inserted_slice_42 = tensor.insert_slice %628 into %cst_4[0, 0, 0, 0] [1, 320, 5, 5] [1, 1, 1, 1] : tensor<1x320x5x5xf32> into tensor<1x2048x5x5xf32>
    %inserted_slice_43 = tensor.insert_slice %inserted_slice_39 into %inserted_slice_42[0, 320, 0, 0] [1, 768, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> into tensor<1x2048x5x5xf32>
    %inserted_slice_44 = tensor.insert_slice %inserted_slice_41 into %inserted_slice_43[0, 1088, 0, 0] [1, 768, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> into tensor<1x2048x5x5xf32>
    %inserted_slice_45 = tensor.insert_slice %690 into %inserted_slice_44[0, 1856, 0, 0] [1, 192, 5, 5] [1, 1, 1, 1] : tensor<1x192x5x5xf32> into tensor<1x2048x5x5xf32>
    %691 = "tosa.transpose"(%inserted_slice_45, %1) : (tensor<1x2048x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x2048xf32>
    %692 = "tosa.conv2d"(%691, %63, %51) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x2048xf32>, tensor<320x1x1x2048xf32>, tensor<320xf32>) -> tensor<1x5x5x320xf32>
    %693 = "tosa.transpose"(%692, %3) : (tensor<1x5x5x320xf32>, tensor<4xi64>) -> tensor<1x320x5x5xf32>
    %694 = "tosa.sub"(%693, %52) : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    ml_program.global_store @global1017 = %591 : tensor<1x320x1x1xf32>
    %695 = "tosa.mul"(%694, %591) {shift = 0 : i32} : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %696 = "tosa.mul"(%695, %52) {shift = 0 : i32} : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %697 = "tosa.add"(%696, %52) : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    ml_program.global_store @global1020 = %697 : tensor<1x320x5x5xf32>
    %698 = "tosa.clamp"(%697) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x320x5x5xf32>) -> tensor<1x320x5x5xf32>
    ml_program.global_store @global1021 = %698 : tensor<1x320x5x5xf32>
    %699 = "tosa.conv2d"(%691, %64, %31) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x2048xf32>, tensor<384x1x1x2048xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %700 = "tosa.transpose"(%699, %3) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %701 = "tosa.sub"(%700, %32) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global1027 = %271 : tensor<1x384x1x1xf32>
    %702 = "tosa.mul"(%701, %271) {shift = 0 : i32} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %703 = "tosa.mul"(%702, %32) {shift = 0 : i32} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %704 = "tosa.add"(%703, %32) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global1030 = %704 : tensor<1x384x5x5xf32>
    %705 = "tosa.clamp"(%704) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global1031 = %705 : tensor<1x384x5x5xf32>
    %706 = "tosa.transpose"(%705, %1) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %707 = "tosa.conv2d"(%706, %56, %31) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x1x3x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %708 = "tosa.transpose"(%707, %3) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %709 = "tosa.sub"(%708, %32) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global1037 = %271 : tensor<1x384x1x1xf32>
    %710 = "tosa.mul"(%709, %271) {shift = 0 : i32} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %711 = "tosa.mul"(%710, %32) {shift = 0 : i32} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %712 = "tosa.add"(%711, %32) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global1040 = %712 : tensor<1x384x5x5xf32>
    %713 = "tosa.clamp"(%712) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global1041 = %713 : tensor<1x384x5x5xf32>
    %714 = "tosa.conv2d"(%706, %57, %31) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x3x1x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %715 = "tosa.transpose"(%714, %3) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %716 = "tosa.sub"(%715, %32) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global1047 = %271 : tensor<1x384x1x1xf32>
    %717 = "tosa.mul"(%716, %271) {shift = 0 : i32} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %718 = "tosa.mul"(%717, %32) {shift = 0 : i32} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %719 = "tosa.add"(%718, %32) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global1050 = %719 : tensor<1x384x5x5xf32>
    %720 = "tosa.clamp"(%719) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global1051 = %720 : tensor<1x384x5x5xf32>
    %inserted_slice_46 = tensor.insert_slice %713 into %cst_3[0, 0, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    %inserted_slice_47 = tensor.insert_slice %720 into %inserted_slice_46[0, 384, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    %721 = "tosa.conv2d"(%691, %65, %59) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x2048xf32>, tensor<448x1x1x2048xf32>, tensor<448xf32>) -> tensor<1x5x5x448xf32>
    %722 = "tosa.transpose"(%721, %3) : (tensor<1x5x5x448xf32>, tensor<4xi64>) -> tensor<1x448x5x5xf32>
    %723 = "tosa.sub"(%722, %60) : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    ml_program.global_store @global1060 = %655 : tensor<1x448x1x1xf32>
    %724 = "tosa.mul"(%723, %655) {shift = 0 : i32} : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %725 = "tosa.mul"(%724, %60) {shift = 0 : i32} : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %726 = "tosa.add"(%725, %60) : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    ml_program.global_store @global1063 = %726 : tensor<1x448x5x5xf32>
    %727 = "tosa.clamp"(%726) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x448x5x5xf32>) -> tensor<1x448x5x5xf32>
    ml_program.global_store @global1064 = %727 : tensor<1x448x5x5xf32>
    %728 = "tosa.transpose"(%727, %1) : (tensor<1x448x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x448xf32>
    %729 = "tosa.conv2d"(%728, %61, %31) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x448xf32>, tensor<384x3x3x448xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %730 = "tosa.transpose"(%729, %3) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %731 = "tosa.sub"(%730, %32) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global1070 = %271 : tensor<1x384x1x1xf32>
    %732 = "tosa.mul"(%731, %271) {shift = 0 : i32} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %733 = "tosa.mul"(%732, %32) {shift = 0 : i32} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %734 = "tosa.add"(%733, %32) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global1073 = %734 : tensor<1x384x5x5xf32>
    %735 = "tosa.clamp"(%734) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global1074 = %735 : tensor<1x384x5x5xf32>
    %736 = "tosa.transpose"(%735, %1) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %737 = "tosa.conv2d"(%736, %56, %31) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x1x3x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %738 = "tosa.transpose"(%737, %3) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %739 = "tosa.sub"(%738, %32) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global1080 = %271 : tensor<1x384x1x1xf32>
    %740 = "tosa.mul"(%739, %271) {shift = 0 : i32} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %741 = "tosa.mul"(%740, %32) {shift = 0 : i32} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %742 = "tosa.add"(%741, %32) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global1083 = %742 : tensor<1x384x5x5xf32>
    %743 = "tosa.clamp"(%742) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global1084 = %743 : tensor<1x384x5x5xf32>
    %744 = "tosa.conv2d"(%736, %57, %31) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x3x1x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %745 = "tosa.transpose"(%744, %3) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %746 = "tosa.sub"(%745, %32) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global1090 = %271 : tensor<1x384x1x1xf32>
    %747 = "tosa.mul"(%746, %271) {shift = 0 : i32} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %748 = "tosa.mul"(%747, %32) {shift = 0 : i32} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %749 = "tosa.add"(%748, %32) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global1093 = %749 : tensor<1x384x5x5xf32>
    %750 = "tosa.clamp"(%749) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    ml_program.global_store @global1094 = %750 : tensor<1x384x5x5xf32>
    %inserted_slice_48 = tensor.insert_slice %743 into %cst_3[0, 0, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    %inserted_slice_49 = tensor.insert_slice %750 into %inserted_slice_48[0, 384, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    ml_program.global_store @global1098 = %691 : tensor<1x5x5x2048xf32>
    %751 = "tosa.avg_pool2d"(%691) {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x2048xf32>) -> tensor<1x5x5x2048xf32>
    %752 = "tosa.conv2d"(%751, %66, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x2048xf32>, tensor<192x1x1x2048xf32>, tensor<192xf32>) -> tensor<1x5x5x192xf32>
    %753 = "tosa.transpose"(%752, %3) : (tensor<1x5x5x192xf32>, tensor<4xi64>) -> tensor<1x192x5x5xf32>
    %754 = "tosa.sub"(%753, %15) : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    ml_program.global_store @global1106 = %115 : tensor<1x192x1x1xf32>
    %755 = "tosa.mul"(%754, %115) {shift = 0 : i32} : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %756 = "tosa.mul"(%755, %15) {shift = 0 : i32} : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %757 = "tosa.add"(%756, %15) : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    ml_program.global_store @global1109 = %757 : tensor<1x192x5x5xf32>
    %758 = "tosa.clamp"(%757) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xf32>
    ml_program.global_store @global1110 = %758 : tensor<1x192x5x5xf32>
    %inserted_slice_50 = tensor.insert_slice %698 into %cst_4[0, 0, 0, 0] [1, 320, 5, 5] [1, 1, 1, 1] : tensor<1x320x5x5xf32> into tensor<1x2048x5x5xf32>
    %inserted_slice_51 = tensor.insert_slice %inserted_slice_47 into %inserted_slice_50[0, 320, 0, 0] [1, 768, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> into tensor<1x2048x5x5xf32>
    %inserted_slice_52 = tensor.insert_slice %inserted_slice_49 into %inserted_slice_51[0, 1088, 0, 0] [1, 768, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> into tensor<1x2048x5x5xf32>
    %inserted_slice_53 = tensor.insert_slice %758 into %inserted_slice_52[0, 1856, 0, 0] [1, 192, 5, 5] [1, 1, 1, 1] : tensor<1x192x5x5xf32> into tensor<1x2048x5x5xf32>
    %759 = "tosa.transpose"(%inserted_slice_53, %1) : (tensor<1x2048x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x2048xf32>
    ml_program.global_store @global1116 = %759 : tensor<1x5x5x2048xf32>
    %760 = "tosa.avg_pool2d"(%759) {acc_type = f32, kernel = array<i64: 5, 5>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x2048xf32>) -> tensor<1x1x1x2048xf32>
    %761 = "tosa.reshape"(%760) {new_shape = array<i64: 1, 2048, 1, 1>} : (tensor<1x1x1x2048xf32>) -> tensor<1x2048x1x1xf32>
    %762 = "tosa.select"(%67, %761, %68) : (tensor<1x2048x1x1xi1>, tensor<1x2048x1x1xf32>, tensor<f32>) -> tensor<1x2048x1x1xf32>
    %763 = "tosa.reshape"(%762) {new_shape = array<i64: 1, 1, 2048>} : (tensor<1x2048x1x1xf32>) -> tensor<1x1x2048xf32>
    %764 = "tosa.matmul"(%763, %69) : (tensor<1x1x2048xf32>, tensor<1x2048x1000xf32>) -> tensor<1x1x1000xf32>
    %765 = "tosa.add"(%764, %70) : (tensor<1x1x1000xf32>, tensor<1000xf32>) -> tensor<1x1x1000xf32>
    %766 = "tosa.reshape"(%765) {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    return %766 : tensor<1x1000xf32>
  }
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %cst = arith.constant dense<0.000000e+00> : tensor<1x5x5x2048xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<5x5xf32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<2048xf32>
    %cst_2 = arith.constant dense<0.000000e+00> : tensor<1x7x7x2048xf32>
    %cst_3 = arith.constant dense<0.000000e+00> : tensor<3x3xf32>
    %cst_4 = arith.constant dense<0.000000e+00> : tensor<384xf32>
    %cst_5 = arith.constant dense<0.000000e+00> : tensor<448xf32>
    %cst_6 = arith.constant dense<0.000000e+00> : tensor<1280xf32>
    %cst_7 = arith.constant dense<0.000000e+00> : tensor<1x7x7x1280xf32>
    %cst_8 = arith.constant dense<0.000000e+00> : tensor<1x12x12x768xf32>
    %cst_9 = arith.constant dense<0.000000e+00> : tensor<192xf32>
    %cst_10 = arith.constant dense<0.000000e+00> : tensor<768xf32>
    %cst_11 = arith.constant dense<0.000000e+00> : tensor<1x14x14x768xf32>
    %cst_12 = arith.constant dense<0.000000e+00> : tensor<160xf32>
    %cst_13 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_14 = arith.constant dense<0.000000e+00> : tensor<1x25x25x288xf32>
    %cst_15 = arith.constant dense<0.000000e+00> : tensor<96xf32>
    %cst_16 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_17 = arith.constant dense<0.000000e+00> : tensor<288xf32>
    %cst_18 = arith.constant dense<0.000000e+00> : tensor<1x27x27x288xf32>
    %cst_19 = arith.constant dense<0.000000e+00> : tensor<48xf32>
    %cst_20 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_21 = arith.constant dense<0.000000e+00> : tensor<1x27x27x256xf32>
    %cst_22 = arith.constant dense<0.000000e+00> : tensor<1x27x27x192xf32>
    %cst_23 = arith.constant dense<0.000000e+00> : tensor<1x52x52x192xf32>
    %cst_24 = arith.constant dense<0.000000e+00> : tensor<80xf32>
    %cst_25 = arith.constant dense<0.000000e+00> : tensor<1x109x109x64xf32>
    %cst_26 = arith.constant dense<0.000000e+00> : tensor<32xf32>
    %cst_27 = arith.constant dense<0.000000e+00> : tensor<3xf32>
    %0 = "tosa.const"() {value = dense<[0, 2, 1]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %2 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi64>} : () -> tensor<4xi64>
    %cst_28 = arith.constant 4.000000e-02 : f32
    %3 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi64>} : () -> tensor<4xi64>
    %4 = "tosa.const"() {value = dense<[3, 1, 2, 0]> : tensor<4xi64>} : () -> tensor<4xi64>
    %cst_29 = arith.constant 0.000000e+00 : f32
    %cst_30 = arith.constant 0.111111112 : f32
    %5 = ml_program.global_load @global1 : tensor<32x3x3x3xf32>
    %6 = ml_program.global_load @global5 : tensor<1x32x1x1xf32>
    %7 = ml_program.global_load @global7 : tensor<32x3x3x32xf32>
    %8 = ml_program.global_load @global8 : tensor<64x3x3x32xf32>
    %9 = ml_program.global_load @global10 : tensor<1x64x1x1xf32>
    %10 = ml_program.global_load @global11 : tensor<80x1x1x64xf32>
    %11 = ml_program.global_load @global13 : tensor<1x80x1x1xf32>
    %12 = ml_program.global_load @global14 : tensor<192x3x3x80xf32>
    %13 = ml_program.global_load @global16 : tensor<1x192x1x1xf32>
    %14 = ml_program.global_load @global17 : tensor<64x1x1x192xf32>
    %15 = ml_program.global_load @global18 : tensor<48x1x1x192xf32>
    %16 = ml_program.global_load @global20 : tensor<1x48x1x1xf32>
    %17 = ml_program.global_load @global21 : tensor<64x5x5x48xf32>
    %18 = ml_program.global_load @global22 : tensor<96x3x3x64xf32>
    %19 = ml_program.global_load @global24 : tensor<1x96x1x1xf32>
    %20 = ml_program.global_load @global25 : tensor<96x3x3x96xf32>
    %21 = ml_program.global_load @global26 : tensor<32x1x1x192xf32>
    %22 = ml_program.global_load @global27 : tensor<64x1x1x256xf32>
    %23 = ml_program.global_load @global28 : tensor<48x1x1x256xf32>
    %24 = ml_program.global_load @global29 : tensor<64x1x1x288xf32>
    %25 = ml_program.global_load @global30 : tensor<48x1x1x288xf32>
    %26 = ml_program.global_load @global31 : tensor<384x3x3x288xf32>
    %27 = ml_program.global_load @global33 : tensor<1x384x1x1xf32>
    %28 = ml_program.global_load @global34 : tensor<192x1x1x768xf32>
    %29 = ml_program.global_load @global35 : tensor<128x1x1x768xf32>
    %30 = ml_program.global_load @global37 : tensor<1x128x1x1xf32>
    %31 = ml_program.global_load @global38 : tensor<128x1x7x128xf32>
    %32 = ml_program.global_load @global39 : tensor<192x7x1x128xf32>
    %33 = ml_program.global_load @global40 : tensor<128x7x1x128xf32>
    %34 = ml_program.global_load @global41 : tensor<192x1x7x128xf32>
    %35 = ml_program.global_load @global42 : tensor<160x1x1x768xf32>
    %36 = ml_program.global_load @global44 : tensor<1x160x1x1xf32>
    %37 = ml_program.global_load @global45 : tensor<160x1x7x160xf32>
    %38 = ml_program.global_load @global46 : tensor<192x7x1x160xf32>
    %39 = ml_program.global_load @global47 : tensor<160x7x1x160xf32>
    %40 = ml_program.global_load @global48 : tensor<192x1x7x160xf32>
    %41 = ml_program.global_load @global49 : tensor<192x1x7x192xf32>
    %42 = ml_program.global_load @global50 : tensor<192x7x1x192xf32>
    %43 = ml_program.global_load @global51 : tensor<320x3x3x192xf32>
    %44 = ml_program.global_load @global53 : tensor<1x320x1x1xf32>
    %45 = ml_program.global_load @global54 : tensor<192x3x3x192xf32>
    %46 = ml_program.global_load @global55 : tensor<320x1x1x1280xf32>
    %47 = ml_program.global_load @global56 : tensor<384x1x1x1280xf32>
    %48 = ml_program.global_load @global57 : tensor<384x1x3x384xf32>
    %49 = ml_program.global_load @global58 : tensor<384x3x1x384xf32>
    %50 = ml_program.global_load @global59 : tensor<448x1x1x1280xf32>
    %51 = ml_program.global_load @global61 : tensor<1x448x1x1xf32>
    %52 = ml_program.global_load @global62 : tensor<384x3x3x448xf32>
    %53 = ml_program.global_load @global63 : tensor<192x1x1x1280xf32>
    %54 = ml_program.global_load @global64 : tensor<320x1x1x2048xf32>
    %55 = ml_program.global_load @global65 : tensor<384x1x1x2048xf32>
    %56 = ml_program.global_load @global66 : tensor<448x1x1x2048xf32>
    %57 = ml_program.global_load @global67 : tensor<192x1x1x2048xf32>
    %58 = ml_program.global_load @global68 : tensor<1x2048x1x1xi1>
    %59 = ml_program.global_load @global70 : tensor<1x2048x1000xf32>
    %60 = ml_program.global_load @global77 : tensor<1x32x1x1xf32>
    %61 = ml_program.global_load @global80 : tensor<1x32x111x111xf32>
    %62 = ml_program.global_load @global81 : tensor<1x32x111x111xf32>
    %63 = ml_program.global_load @global87 : tensor<1x32x1x1xf32>
    %64 = ml_program.global_load @global90 : tensor<1x32x109x109xf32>
    %65 = ml_program.global_load @global91 : tensor<1x32x109x109xf32>
    %66 = ml_program.global_load @global97 : tensor<1x64x1x1xf32>
    %67 = ml_program.global_load @global100 : tensor<1x64x109x109xf32>
    %68 = ml_program.global_load @global101 : tensor<1x64x109x109xf32>
    %69 = ml_program.global_load @global102 : tensor<1x109x109x64xf32>
    %70 = ml_program.global_load @global103 : tensor<1x54x54x64xf32>
    %71 = ml_program.global_load @global110 : tensor<1x80x1x1xf32>
    %72 = ml_program.global_load @global113 : tensor<1x80x54x54xf32>
    %73 = ml_program.global_load @global114 : tensor<1x80x54x54xf32>
    %74 = ml_program.global_load @global120 : tensor<1x192x1x1xf32>
    %75 = ml_program.global_load @global123 : tensor<1x192x52x52xf32>
    %76 = ml_program.global_load @global124 : tensor<1x192x52x52xf32>
    %77 = ml_program.global_load @global125 : tensor<1x52x52x192xf32>
    %78 = ml_program.global_load @global126 : tensor<1x25x25x192xf32>
    %79 = ml_program.global_load @global133 : tensor<1x64x1x1xf32>
    %80 = ml_program.global_load @global136 : tensor<1x64x25x25xf32>
    %81 = ml_program.global_load @global137 : tensor<1x64x25x25xf32>
    %82 = ml_program.global_load @global143 : tensor<1x48x1x1xf32>
    %83 = ml_program.global_load @global146 : tensor<1x48x25x25xf32>
    %84 = ml_program.global_load @global147 : tensor<1x48x25x25xf32>
    %85 = ml_program.global_load @global153 : tensor<1x64x1x1xf32>
    %86 = ml_program.global_load @global156 : tensor<1x64x25x25xf32>
    %87 = ml_program.global_load @global157 : tensor<1x64x25x25xf32>
    %88 = ml_program.global_load @global163 : tensor<1x64x1x1xf32>
    %89 = ml_program.global_load @global166 : tensor<1x64x25x25xf32>
    %90 = ml_program.global_load @global167 : tensor<1x64x25x25xf32>
    %91 = ml_program.global_load @global173 : tensor<1x96x1x1xf32>
    %92 = ml_program.global_load @global176 : tensor<1x96x25x25xf32>
    %93 = ml_program.global_load @global177 : tensor<1x96x25x25xf32>
    %94 = ml_program.global_load @global183 : tensor<1x96x1x1xf32>
    %95 = ml_program.global_load @global186 : tensor<1x96x25x25xf32>
    %96 = ml_program.global_load @global187 : tensor<1x96x25x25xf32>
    %97 = ml_program.global_load @global188 : tensor<1x25x25x192xf32>
    %98 = ml_program.global_load @global196 : tensor<1x32x1x1xf32>
    %99 = ml_program.global_load @global199 : tensor<1x32x25x25xf32>
    %100 = ml_program.global_load @global200 : tensor<1x32x25x25xf32>
    %101 = ml_program.global_load @global211 : tensor<1x64x1x1xf32>
    %102 = ml_program.global_load @global214 : tensor<1x64x25x25xf32>
    %103 = ml_program.global_load @global215 : tensor<1x64x25x25xf32>
    %104 = ml_program.global_load @global221 : tensor<1x48x1x1xf32>
    %105 = ml_program.global_load @global224 : tensor<1x48x25x25xf32>
    %106 = ml_program.global_load @global225 : tensor<1x48x25x25xf32>
    %107 = ml_program.global_load @global231 : tensor<1x64x1x1xf32>
    %108 = ml_program.global_load @global234 : tensor<1x64x25x25xf32>
    %109 = ml_program.global_load @global235 : tensor<1x64x25x25xf32>
    %110 = ml_program.global_load @global241 : tensor<1x64x1x1xf32>
    %111 = ml_program.global_load @global244 : tensor<1x64x25x25xf32>
    %112 = ml_program.global_load @global245 : tensor<1x64x25x25xf32>
    %113 = ml_program.global_load @global251 : tensor<1x96x1x1xf32>
    %114 = ml_program.global_load @global254 : tensor<1x96x25x25xf32>
    %115 = ml_program.global_load @global255 : tensor<1x96x25x25xf32>
    %116 = ml_program.global_load @global261 : tensor<1x96x1x1xf32>
    %117 = ml_program.global_load @global264 : tensor<1x96x25x25xf32>
    %118 = ml_program.global_load @global265 : tensor<1x96x25x25xf32>
    %119 = ml_program.global_load @global266 : tensor<1x25x25x256xf32>
    %120 = ml_program.global_load @global274 : tensor<1x64x1x1xf32>
    %121 = ml_program.global_load @global277 : tensor<1x64x25x25xf32>
    %122 = ml_program.global_load @global278 : tensor<1x64x25x25xf32>
    %123 = ml_program.global_load @global289 : tensor<1x64x1x1xf32>
    %124 = ml_program.global_load @global292 : tensor<1x64x25x25xf32>
    %125 = ml_program.global_load @global293 : tensor<1x64x25x25xf32>
    %126 = ml_program.global_load @global299 : tensor<1x48x1x1xf32>
    %127 = ml_program.global_load @global302 : tensor<1x48x25x25xf32>
    %128 = ml_program.global_load @global303 : tensor<1x48x25x25xf32>
    %129 = ml_program.global_load @global309 : tensor<1x64x1x1xf32>
    %130 = ml_program.global_load @global312 : tensor<1x64x25x25xf32>
    %131 = ml_program.global_load @global313 : tensor<1x64x25x25xf32>
    %132 = ml_program.global_load @global319 : tensor<1x64x1x1xf32>
    %133 = ml_program.global_load @global322 : tensor<1x64x25x25xf32>
    %134 = ml_program.global_load @global323 : tensor<1x64x25x25xf32>
    %135 = ml_program.global_load @global329 : tensor<1x96x1x1xf32>
    %136 = ml_program.global_load @global332 : tensor<1x96x25x25xf32>
    %137 = ml_program.global_load @global333 : tensor<1x96x25x25xf32>
    %138 = ml_program.global_load @global339 : tensor<1x96x1x1xf32>
    %139 = ml_program.global_load @global342 : tensor<1x96x25x25xf32>
    %140 = ml_program.global_load @global343 : tensor<1x96x25x25xf32>
    %141 = ml_program.global_load @global344 : tensor<1x25x25x288xf32>
    %142 = ml_program.global_load @global352 : tensor<1x64x1x1xf32>
    %143 = ml_program.global_load @global355 : tensor<1x64x25x25xf32>
    %144 = ml_program.global_load @global356 : tensor<1x64x25x25xf32>
    %145 = ml_program.global_load @global367 : tensor<1x384x1x1xf32>
    %146 = ml_program.global_load @global370 : tensor<1x384x12x12xf32>
    %147 = ml_program.global_load @global371 : tensor<1x384x12x12xf32>
    %148 = ml_program.global_load @global377 : tensor<1x64x1x1xf32>
    %149 = ml_program.global_load @global380 : tensor<1x64x25x25xf32>
    %150 = ml_program.global_load @global381 : tensor<1x64x25x25xf32>
    %151 = ml_program.global_load @global387 : tensor<1x96x1x1xf32>
    %152 = ml_program.global_load @global390 : tensor<1x96x25x25xf32>
    %153 = ml_program.global_load @global391 : tensor<1x96x25x25xf32>
    %154 = ml_program.global_load @global397 : tensor<1x96x1x1xf32>
    %155 = ml_program.global_load @global400 : tensor<1x96x12x12xf32>
    %156 = ml_program.global_load @global401 : tensor<1x96x12x12xf32>
    %157 = ml_program.global_load @global402 : tensor<1x25x25x288xf32>
    %158 = ml_program.global_load @global403 : tensor<1x12x12x288xf32>
    %159 = ml_program.global_load @global414 : tensor<1x192x1x1xf32>
    %160 = ml_program.global_load @global417 : tensor<1x192x12x12xf32>
    %161 = ml_program.global_load @global418 : tensor<1x192x12x12xf32>
    %162 = ml_program.global_load @global424 : tensor<1x128x1x1xf32>
    %163 = ml_program.global_load @global427 : tensor<1x128x12x12xf32>
    %164 = ml_program.global_load @global428 : tensor<1x128x12x12xf32>
    %165 = ml_program.global_load @global434 : tensor<1x128x1x1xf32>
    %166 = ml_program.global_load @global437 : tensor<1x128x12x12xf32>
    %167 = ml_program.global_load @global438 : tensor<1x128x12x12xf32>
    %168 = ml_program.global_load @global444 : tensor<1x192x1x1xf32>
    %169 = ml_program.global_load @global447 : tensor<1x192x12x12xf32>
    %170 = ml_program.global_load @global448 : tensor<1x192x12x12xf32>
    %171 = ml_program.global_load @global454 : tensor<1x128x1x1xf32>
    %172 = ml_program.global_load @global457 : tensor<1x128x12x12xf32>
    %173 = ml_program.global_load @global458 : tensor<1x128x12x12xf32>
    %174 = ml_program.global_load @global464 : tensor<1x128x1x1xf32>
    %175 = ml_program.global_load @global467 : tensor<1x128x12x12xf32>
    %176 = ml_program.global_load @global468 : tensor<1x128x12x12xf32>
    %177 = ml_program.global_load @global474 : tensor<1x128x1x1xf32>
    %178 = ml_program.global_load @global477 : tensor<1x128x12x12xf32>
    %179 = ml_program.global_load @global478 : tensor<1x128x12x12xf32>
    %180 = ml_program.global_load @global484 : tensor<1x128x1x1xf32>
    %181 = ml_program.global_load @global487 : tensor<1x128x12x12xf32>
    %182 = ml_program.global_load @global488 : tensor<1x128x12x12xf32>
    %183 = ml_program.global_load @global494 : tensor<1x192x1x1xf32>
    %184 = ml_program.global_load @global497 : tensor<1x192x12x12xf32>
    %185 = ml_program.global_load @global498 : tensor<1x192x12x12xf32>
    %186 = ml_program.global_load @global499 : tensor<1x12x12x768xf32>
    %187 = ml_program.global_load @global507 : tensor<1x192x1x1xf32>
    %188 = ml_program.global_load @global510 : tensor<1x192x12x12xf32>
    %189 = ml_program.global_load @global511 : tensor<1x192x12x12xf32>
    %190 = ml_program.global_load @global522 : tensor<1x192x1x1xf32>
    %191 = ml_program.global_load @global525 : tensor<1x192x12x12xf32>
    %192 = ml_program.global_load @global526 : tensor<1x192x12x12xf32>
    %193 = ml_program.global_load @global532 : tensor<1x160x1x1xf32>
    %194 = ml_program.global_load @global535 : tensor<1x160x12x12xf32>
    %195 = ml_program.global_load @global536 : tensor<1x160x12x12xf32>
    %196 = ml_program.global_load @global542 : tensor<1x160x1x1xf32>
    %197 = ml_program.global_load @global545 : tensor<1x160x12x12xf32>
    %198 = ml_program.global_load @global546 : tensor<1x160x12x12xf32>
    %199 = ml_program.global_load @global552 : tensor<1x192x1x1xf32>
    %200 = ml_program.global_load @global555 : tensor<1x192x12x12xf32>
    %201 = ml_program.global_load @global556 : tensor<1x192x12x12xf32>
    %202 = ml_program.global_load @global562 : tensor<1x160x1x1xf32>
    %203 = ml_program.global_load @global565 : tensor<1x160x12x12xf32>
    %204 = ml_program.global_load @global566 : tensor<1x160x12x12xf32>
    %205 = ml_program.global_load @global572 : tensor<1x160x1x1xf32>
    %206 = ml_program.global_load @global575 : tensor<1x160x12x12xf32>
    %207 = ml_program.global_load @global576 : tensor<1x160x12x12xf32>
    %208 = ml_program.global_load @global582 : tensor<1x160x1x1xf32>
    %209 = ml_program.global_load @global585 : tensor<1x160x12x12xf32>
    %210 = ml_program.global_load @global586 : tensor<1x160x12x12xf32>
    %211 = ml_program.global_load @global592 : tensor<1x160x1x1xf32>
    %212 = ml_program.global_load @global595 : tensor<1x160x12x12xf32>
    %213 = ml_program.global_load @global596 : tensor<1x160x12x12xf32>
    %214 = ml_program.global_load @global602 : tensor<1x192x1x1xf32>
    %215 = ml_program.global_load @global605 : tensor<1x192x12x12xf32>
    %216 = ml_program.global_load @global606 : tensor<1x192x12x12xf32>
    %217 = ml_program.global_load @global607 : tensor<1x12x12x768xf32>
    %218 = ml_program.global_load @global615 : tensor<1x192x1x1xf32>
    %219 = ml_program.global_load @global618 : tensor<1x192x12x12xf32>
    %220 = ml_program.global_load @global619 : tensor<1x192x12x12xf32>
    %221 = ml_program.global_load @global630 : tensor<1x192x1x1xf32>
    %222 = ml_program.global_load @global633 : tensor<1x192x12x12xf32>
    %223 = ml_program.global_load @global634 : tensor<1x192x12x12xf32>
    %224 = ml_program.global_load @global640 : tensor<1x160x1x1xf32>
    %225 = ml_program.global_load @global643 : tensor<1x160x12x12xf32>
    %226 = ml_program.global_load @global644 : tensor<1x160x12x12xf32>
    %227 = ml_program.global_load @global650 : tensor<1x160x1x1xf32>
    %228 = ml_program.global_load @global653 : tensor<1x160x12x12xf32>
    %229 = ml_program.global_load @global654 : tensor<1x160x12x12xf32>
    %230 = ml_program.global_load @global660 : tensor<1x192x1x1xf32>
    %231 = ml_program.global_load @global663 : tensor<1x192x12x12xf32>
    %232 = ml_program.global_load @global664 : tensor<1x192x12x12xf32>
    %233 = ml_program.global_load @global670 : tensor<1x160x1x1xf32>
    %234 = ml_program.global_load @global673 : tensor<1x160x12x12xf32>
    %235 = ml_program.global_load @global674 : tensor<1x160x12x12xf32>
    %236 = ml_program.global_load @global680 : tensor<1x160x1x1xf32>
    %237 = ml_program.global_load @global683 : tensor<1x160x12x12xf32>
    %238 = ml_program.global_load @global684 : tensor<1x160x12x12xf32>
    %239 = ml_program.global_load @global690 : tensor<1x160x1x1xf32>
    %240 = ml_program.global_load @global693 : tensor<1x160x12x12xf32>
    %241 = ml_program.global_load @global694 : tensor<1x160x12x12xf32>
    %242 = ml_program.global_load @global700 : tensor<1x160x1x1xf32>
    %243 = ml_program.global_load @global703 : tensor<1x160x12x12xf32>
    %244 = ml_program.global_load @global704 : tensor<1x160x12x12xf32>
    %245 = ml_program.global_load @global710 : tensor<1x192x1x1xf32>
    %246 = ml_program.global_load @global713 : tensor<1x192x12x12xf32>
    %247 = ml_program.global_load @global714 : tensor<1x192x12x12xf32>
    %248 = ml_program.global_load @global715 : tensor<1x12x12x768xf32>
    %249 = ml_program.global_load @global723 : tensor<1x192x1x1xf32>
    %250 = ml_program.global_load @global726 : tensor<1x192x12x12xf32>
    %251 = ml_program.global_load @global727 : tensor<1x192x12x12xf32>
    %252 = ml_program.global_load @global738 : tensor<1x192x1x1xf32>
    %253 = ml_program.global_load @global741 : tensor<1x192x12x12xf32>
    %254 = ml_program.global_load @global742 : tensor<1x192x12x12xf32>
    %255 = ml_program.global_load @global748 : tensor<1x192x1x1xf32>
    %256 = ml_program.global_load @global751 : tensor<1x192x12x12xf32>
    %257 = ml_program.global_load @global752 : tensor<1x192x12x12xf32>
    %258 = ml_program.global_load @global758 : tensor<1x192x1x1xf32>
    %259 = ml_program.global_load @global761 : tensor<1x192x12x12xf32>
    %260 = ml_program.global_load @global762 : tensor<1x192x12x12xf32>
    %261 = ml_program.global_load @global768 : tensor<1x192x1x1xf32>
    %262 = ml_program.global_load @global771 : tensor<1x192x12x12xf32>
    %263 = ml_program.global_load @global772 : tensor<1x192x12x12xf32>
    %264 = ml_program.global_load @global778 : tensor<1x192x1x1xf32>
    %265 = ml_program.global_load @global781 : tensor<1x192x12x12xf32>
    %266 = ml_program.global_load @global782 : tensor<1x192x12x12xf32>
    %267 = ml_program.global_load @global788 : tensor<1x192x1x1xf32>
    %268 = ml_program.global_load @global791 : tensor<1x192x12x12xf32>
    %269 = ml_program.global_load @global792 : tensor<1x192x12x12xf32>
    %270 = ml_program.global_load @global798 : tensor<1x192x1x1xf32>
    %271 = ml_program.global_load @global801 : tensor<1x192x12x12xf32>
    %272 = ml_program.global_load @global802 : tensor<1x192x12x12xf32>
    %273 = ml_program.global_load @global808 : tensor<1x192x1x1xf32>
    %274 = ml_program.global_load @global811 : tensor<1x192x12x12xf32>
    %275 = ml_program.global_load @global812 : tensor<1x192x12x12xf32>
    %276 = ml_program.global_load @global818 : tensor<1x192x1x1xf32>
    %277 = ml_program.global_load @global821 : tensor<1x192x12x12xf32>
    %278 = ml_program.global_load @global822 : tensor<1x192x12x12xf32>
    %279 = ml_program.global_load @global823 : tensor<1x12x12x768xf32>
    %280 = ml_program.global_load @global831 : tensor<1x192x1x1xf32>
    %281 = ml_program.global_load @global834 : tensor<1x192x12x12xf32>
    %282 = ml_program.global_load @global835 : tensor<1x192x12x12xf32>
    %283 = ml_program.global_load @global846 : tensor<1x192x1x1xf32>
    %284 = ml_program.global_load @global849 : tensor<1x192x12x12xf32>
    %285 = ml_program.global_load @global850 : tensor<1x192x12x12xf32>
    %286 = ml_program.global_load @global856 : tensor<1x320x1x1xf32>
    %287 = ml_program.global_load @global859 : tensor<1x320x5x5xf32>
    %288 = ml_program.global_load @global860 : tensor<1x320x5x5xf32>
    %289 = ml_program.global_load @global866 : tensor<1x192x1x1xf32>
    %290 = ml_program.global_load @global869 : tensor<1x192x12x12xf32>
    %291 = ml_program.global_load @global870 : tensor<1x192x12x12xf32>
    %292 = ml_program.global_load @global876 : tensor<1x192x1x1xf32>
    %293 = ml_program.global_load @global879 : tensor<1x192x12x12xf32>
    %294 = ml_program.global_load @global880 : tensor<1x192x12x12xf32>
    %295 = ml_program.global_load @global886 : tensor<1x192x1x1xf32>
    %296 = ml_program.global_load @global889 : tensor<1x192x12x12xf32>
    %297 = ml_program.global_load @global890 : tensor<1x192x12x12xf32>
    %298 = ml_program.global_load @global896 : tensor<1x192x1x1xf32>
    %299 = ml_program.global_load @global899 : tensor<1x192x5x5xf32>
    %300 = ml_program.global_load @global900 : tensor<1x192x5x5xf32>
    %301 = ml_program.global_load @global901 : tensor<1x12x12x768xf32>
    %302 = ml_program.global_load @global902 : tensor<1x5x5x768xf32>
    %303 = ml_program.global_load @global913 : tensor<1x320x1x1xf32>
    %304 = ml_program.global_load @global916 : tensor<1x320x5x5xf32>
    %305 = ml_program.global_load @global917 : tensor<1x320x5x5xf32>
    %306 = ml_program.global_load @global923 : tensor<1x384x1x1xf32>
    %307 = ml_program.global_load @global926 : tensor<1x384x5x5xf32>
    %308 = ml_program.global_load @global927 : tensor<1x384x5x5xf32>
    %309 = ml_program.global_load @global933 : tensor<1x384x1x1xf32>
    %310 = ml_program.global_load @global936 : tensor<1x384x5x5xf32>
    %311 = ml_program.global_load @global937 : tensor<1x384x5x5xf32>
    %312 = ml_program.global_load @global943 : tensor<1x384x1x1xf32>
    %313 = ml_program.global_load @global946 : tensor<1x384x5x5xf32>
    %314 = ml_program.global_load @global947 : tensor<1x384x5x5xf32>
    %315 = ml_program.global_load @global956 : tensor<1x448x1x1xf32>
    %316 = ml_program.global_load @global959 : tensor<1x448x5x5xf32>
    %317 = ml_program.global_load @global960 : tensor<1x448x5x5xf32>
    %318 = ml_program.global_load @global966 : tensor<1x384x1x1xf32>
    %319 = ml_program.global_load @global969 : tensor<1x384x5x5xf32>
    %320 = ml_program.global_load @global970 : tensor<1x384x5x5xf32>
    %321 = ml_program.global_load @global976 : tensor<1x384x1x1xf32>
    %322 = ml_program.global_load @global979 : tensor<1x384x5x5xf32>
    %323 = ml_program.global_load @global980 : tensor<1x384x5x5xf32>
    %324 = ml_program.global_load @global986 : tensor<1x384x1x1xf32>
    %325 = ml_program.global_load @global989 : tensor<1x384x5x5xf32>
    %326 = ml_program.global_load @global990 : tensor<1x384x5x5xf32>
    %327 = ml_program.global_load @global994 : tensor<1x5x5x1280xf32>
    %328 = ml_program.global_load @global1002 : tensor<1x192x1x1xf32>
    %329 = ml_program.global_load @global1005 : tensor<1x192x5x5xf32>
    %330 = ml_program.global_load @global1006 : tensor<1x192x5x5xf32>
    %331 = ml_program.global_load @global1017 : tensor<1x320x1x1xf32>
    %332 = ml_program.global_load @global1020 : tensor<1x320x5x5xf32>
    %333 = ml_program.global_load @global1021 : tensor<1x320x5x5xf32>
    %334 = ml_program.global_load @global1027 : tensor<1x384x1x1xf32>
    %335 = ml_program.global_load @global1030 : tensor<1x384x5x5xf32>
    %336 = ml_program.global_load @global1031 : tensor<1x384x5x5xf32>
    %337 = ml_program.global_load @global1037 : tensor<1x384x1x1xf32>
    %338 = ml_program.global_load @global1040 : tensor<1x384x5x5xf32>
    %339 = ml_program.global_load @global1041 : tensor<1x384x5x5xf32>
    %340 = ml_program.global_load @global1047 : tensor<1x384x1x1xf32>
    %341 = ml_program.global_load @global1050 : tensor<1x384x5x5xf32>
    %342 = ml_program.global_load @global1051 : tensor<1x384x5x5xf32>
    %343 = ml_program.global_load @global1060 : tensor<1x448x1x1xf32>
    %344 = ml_program.global_load @global1063 : tensor<1x448x5x5xf32>
    %345 = ml_program.global_load @global1064 : tensor<1x448x5x5xf32>
    %346 = ml_program.global_load @global1070 : tensor<1x384x1x1xf32>
    %347 = ml_program.global_load @global1073 : tensor<1x384x5x5xf32>
    %348 = ml_program.global_load @global1074 : tensor<1x384x5x5xf32>
    %349 = ml_program.global_load @global1080 : tensor<1x384x1x1xf32>
    %350 = ml_program.global_load @global1083 : tensor<1x384x5x5xf32>
    %351 = ml_program.global_load @global1084 : tensor<1x384x5x5xf32>
    %352 = ml_program.global_load @global1090 : tensor<1x384x1x1xf32>
    %353 = ml_program.global_load @global1093 : tensor<1x384x5x5xf32>
    %354 = ml_program.global_load @global1094 : tensor<1x384x5x5xf32>
    %355 = ml_program.global_load @global1098 : tensor<1x5x5x2048xf32>
    %356 = ml_program.global_load @global1106 : tensor<1x192x1x1xf32>
    %357 = ml_program.global_load @global1109 : tensor<1x192x5x5xf32>
    %358 = ml_program.global_load @global1110 : tensor<1x192x5x5xf32>
    %359 = ml_program.global_load @global1116 : tensor<1x5x5x2048xf32>
    %360 = "tosa.reshape"(%arg0) {new_shape = array<i64: 1, 1, 1000>} : (tensor<1x1000xf32>) -> tensor<1x1x1000xf32>
    %361 = "tosa.transpose"(%59, %0) : (tensor<1x2048x1000xf32>, tensor<3xi32>) -> tensor<1x1000x2048xf32>
    %362 = "tosa.matmul"(%360, %361) : (tensor<1x1x1000xf32>, tensor<1x1000x2048xf32>) -> tensor<1x1x2048xf32>
    %363 = "tosa.reshape"(%362) {new_shape = array<i64: 1, 2048, 1, 1>} : (tensor<1x1x2048xf32>) -> tensor<1x2048x1x1xf32>
    %364 = "tosa.select"(%58, %363, %1) : (tensor<1x2048x1x1xi1>, tensor<1x2048x1x1xf32>, tensor<f32>) -> tensor<1x2048x1x1xf32>
    %365 = "tosa.reshape"(%364) {new_shape = array<i64: 1, 1, 1, 2048>} : (tensor<1x2048x1x1xf32>) -> tensor<1x1x1x2048xf32>
    %366 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%359, %cst_0, %365 : tensor<1x5x5x2048xf32>, tensor<5x5xf32>, tensor<1x1x1x2048xf32>) outs(%cst : tensor<1x5x5x2048xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %out: f32):
      %1122 = arith.mulf %in_98, %cst_28 : f32
      %1123 = arith.addf %1122, %out : f32
      linalg.yield %1123 : f32
    } -> tensor<1x5x5x2048xf32>
    %367 = "tosa.transpose"(%366, %3) : (tensor<1x5x5x2048xf32>, tensor<4xi64>) -> tensor<1x2048x5x5xf32>
    %extracted_slice = tensor.extract_slice %367[0, 1856, 0, 0] [1, 192, 5, 5] [1, 1, 1, 1] : tensor<1x2048x5x5xf32> to tensor<1x192x5x5xf32>
    %extracted_slice_31 = tensor.extract_slice %367[0, 1088, 0, 0] [1, 768, 5, 5] [1, 1, 1, 1] : tensor<1x2048x5x5xf32> to tensor<1x768x5x5xf32>
    %extracted_slice_32 = tensor.extract_slice %367[0, 320, 0, 0] [1, 768, 5, 5] [1, 1, 1, 1] : tensor<1x2048x5x5xf32> to tensor<1x768x5x5xf32>
    %extracted_slice_33 = tensor.extract_slice %367[0, 0, 0, 0] [1, 320, 5, 5] [1, 1, 1, 1] : tensor<1x2048x5x5xf32> to tensor<1x320x5x5xf32>
    %368 = "tosa.equal"(%357, %358) : (tensor<1x192x5x5xf32>, tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xi1>
    %369 = "tosa.select"(%368, %extracted_slice, %1) : (tensor<1x192x5x5xi1>, tensor<1x192x5x5xf32>, tensor<f32>) -> tensor<1x192x5x5xf32>
    %370 = "tosa.mul"(%13, %369) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xf32>
    %371 = "tosa.mul"(%356, %370) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xf32>
    %372 = "tosa.transpose"(%371, %2) : (tensor<1x192x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x192xf32>
    %373 = "tosa.transpose"(%57, %4) : (tensor<192x1x1x2048xf32>, tensor<4xi64>) -> tensor<2048x1x1x192xf32>
    %374 = "tosa.transpose_conv2d"(%372, %373, %cst_1) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 5, 5, 2048>, stride = array<i64: 1, 1>} : (tensor<1x5x5x192xf32>, tensor<2048x1x1x192xf32>, tensor<2048xf32>) -> tensor<1x5x5x2048xf32>
    %padded = tensor.pad %355 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_29 : f32
    } : tensor<1x5x5x2048xf32> to tensor<1x7x7x2048xf32>
    %375 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%padded, %cst_3, %374 : tensor<1x7x7x2048xf32>, tensor<3x3xf32>, tensor<1x5x5x2048xf32>) outs(%cst_2 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %out: f32):
      %1122 = arith.mulf %in_98, %cst_30 : f32
      %1123 = arith.addf %1122, %out : f32
      linalg.yield %1123 : f32
    } -> tensor<1x7x7x2048xf32>
    %extracted_slice_34 = tensor.extract_slice %375[0, 1, 1, 0] [1, 5, 5, 2048] [1, 1, 1, 1] : tensor<1x7x7x2048xf32> to tensor<1x5x5x2048xf32>
    %376 = "tosa.transpose"(%extracted_slice_34, %3) : (tensor<1x5x5x2048xf32>, tensor<4xi64>) -> tensor<1x2048x5x5xf32>
    %extracted_slice_35 = tensor.extract_slice %extracted_slice_31[0, 384, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> to tensor<1x384x5x5xf32>
    %extracted_slice_36 = tensor.extract_slice %extracted_slice_31[0, 0, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> to tensor<1x384x5x5xf32>
    %377 = "tosa.equal"(%353, %354) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xi1>
    %378 = "tosa.select"(%377, %extracted_slice_35, %1) : (tensor<1x384x5x5xi1>, tensor<1x384x5x5xf32>, tensor<f32>) -> tensor<1x384x5x5xf32>
    %379 = "tosa.mul"(%27, %378) {shift = 0 : i32} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %380 = "tosa.mul"(%352, %379) {shift = 0 : i32} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %381 = "tosa.transpose"(%380, %2) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %382 = "tosa.transpose"(%49, %4) : (tensor<384x3x1x384xf32>, tensor<4xi64>) -> tensor<384x3x1x384xf32>
    %383 = "tosa.transpose_conv2d"(%381, %382, %cst_4) {out_pad = array<i64: -1, -1, 0, 0>, out_shape = array<i64: 1, 5, 5, 384>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x3x1x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %384 = "tosa.transpose"(%383, %3) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %385 = "tosa.equal"(%350, %351) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xi1>
    %386 = "tosa.select"(%385, %extracted_slice_36, %1) : (tensor<1x384x5x5xi1>, tensor<1x384x5x5xf32>, tensor<f32>) -> tensor<1x384x5x5xf32>
    %387 = "tosa.mul"(%27, %386) {shift = 0 : i32} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %388 = "tosa.mul"(%349, %387) {shift = 0 : i32} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %389 = "tosa.transpose"(%388, %2) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %390 = "tosa.transpose"(%48, %4) : (tensor<384x1x3x384xf32>, tensor<4xi64>) -> tensor<384x1x3x384xf32>
    %391 = "tosa.transpose_conv2d"(%389, %390, %cst_4) {out_pad = array<i64: 0, 0, -1, -1>, out_shape = array<i64: 1, 5, 5, 384>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x1x3x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %392 = "tosa.transpose"(%391, %3) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %393 = "tosa.add"(%384, %392) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %394 = "tosa.equal"(%347, %348) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xi1>
    %395 = "tosa.select"(%394, %393, %1) : (tensor<1x384x5x5xi1>, tensor<1x384x5x5xf32>, tensor<f32>) -> tensor<1x384x5x5xf32>
    %396 = "tosa.mul"(%27, %395) {shift = 0 : i32} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %397 = "tosa.mul"(%346, %396) {shift = 0 : i32} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %398 = "tosa.transpose"(%397, %2) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %399 = "tosa.transpose"(%52, %4) : (tensor<384x3x3x448xf32>, tensor<4xi64>) -> tensor<448x3x3x384xf32>
    %400 = "tosa.transpose_conv2d"(%398, %399, %cst_5) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 5, 5, 448>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<448x3x3x384xf32>, tensor<448xf32>) -> tensor<1x5x5x448xf32>
    %401 = "tosa.transpose"(%400, %3) : (tensor<1x5x5x448xf32>, tensor<4xi64>) -> tensor<1x448x5x5xf32>
    %402 = "tosa.equal"(%344, %345) : (tensor<1x448x5x5xf32>, tensor<1x448x5x5xf32>) -> tensor<1x448x5x5xi1>
    %403 = "tosa.select"(%402, %401, %1) : (tensor<1x448x5x5xi1>, tensor<1x448x5x5xf32>, tensor<f32>) -> tensor<1x448x5x5xf32>
    %404 = "tosa.mul"(%51, %403) {shift = 0 : i32} : (tensor<1x448x1x1xf32>, tensor<1x448x5x5xf32>) -> tensor<1x448x5x5xf32>
    %405 = "tosa.mul"(%343, %404) {shift = 0 : i32} : (tensor<1x448x1x1xf32>, tensor<1x448x5x5xf32>) -> tensor<1x448x5x5xf32>
    %406 = "tosa.transpose"(%405, %2) : (tensor<1x448x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x448xf32>
    %407 = "tosa.transpose"(%56, %4) : (tensor<448x1x1x2048xf32>, tensor<4xi64>) -> tensor<2048x1x1x448xf32>
    %408 = "tosa.transpose_conv2d"(%406, %407, %cst_1) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 5, 5, 2048>, stride = array<i64: 1, 1>} : (tensor<1x5x5x448xf32>, tensor<2048x1x1x448xf32>, tensor<2048xf32>) -> tensor<1x5x5x2048xf32>
    %409 = "tosa.transpose"(%408, %3) : (tensor<1x5x5x2048xf32>, tensor<4xi64>) -> tensor<1x2048x5x5xf32>
    %410 = "tosa.add"(%376, %409) : (tensor<1x2048x5x5xf32>, tensor<1x2048x5x5xf32>) -> tensor<1x2048x5x5xf32>
    %extracted_slice_37 = tensor.extract_slice %extracted_slice_32[0, 384, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> to tensor<1x384x5x5xf32>
    %extracted_slice_38 = tensor.extract_slice %extracted_slice_32[0, 0, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> to tensor<1x384x5x5xf32>
    %411 = "tosa.equal"(%341, %342) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xi1>
    %412 = "tosa.select"(%411, %extracted_slice_37, %1) : (tensor<1x384x5x5xi1>, tensor<1x384x5x5xf32>, tensor<f32>) -> tensor<1x384x5x5xf32>
    %413 = "tosa.mul"(%27, %412) {shift = 0 : i32} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %414 = "tosa.mul"(%340, %413) {shift = 0 : i32} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %415 = "tosa.transpose"(%414, %2) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %416 = "tosa.transpose_conv2d"(%415, %382, %cst_4) {out_pad = array<i64: -1, -1, 0, 0>, out_shape = array<i64: 1, 5, 5, 384>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x3x1x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %417 = "tosa.transpose"(%416, %3) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %418 = "tosa.equal"(%338, %339) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xi1>
    %419 = "tosa.select"(%418, %extracted_slice_38, %1) : (tensor<1x384x5x5xi1>, tensor<1x384x5x5xf32>, tensor<f32>) -> tensor<1x384x5x5xf32>
    %420 = "tosa.mul"(%27, %419) {shift = 0 : i32} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %421 = "tosa.mul"(%337, %420) {shift = 0 : i32} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %422 = "tosa.transpose"(%421, %2) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %423 = "tosa.transpose_conv2d"(%422, %390, %cst_4) {out_pad = array<i64: 0, 0, -1, -1>, out_shape = array<i64: 1, 5, 5, 384>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x1x3x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %424 = "tosa.transpose"(%423, %3) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %425 = "tosa.add"(%417, %424) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %426 = "tosa.equal"(%335, %336) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xi1>
    %427 = "tosa.select"(%426, %425, %1) : (tensor<1x384x5x5xi1>, tensor<1x384x5x5xf32>, tensor<f32>) -> tensor<1x384x5x5xf32>
    %428 = "tosa.mul"(%27, %427) {shift = 0 : i32} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %429 = "tosa.mul"(%334, %428) {shift = 0 : i32} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %430 = "tosa.transpose"(%429, %2) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %431 = "tosa.transpose"(%55, %4) : (tensor<384x1x1x2048xf32>, tensor<4xi64>) -> tensor<2048x1x1x384xf32>
    %432 = "tosa.transpose_conv2d"(%430, %431, %cst_1) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 5, 5, 2048>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<2048x1x1x384xf32>, tensor<2048xf32>) -> tensor<1x5x5x2048xf32>
    %433 = "tosa.transpose"(%432, %3) : (tensor<1x5x5x2048xf32>, tensor<4xi64>) -> tensor<1x2048x5x5xf32>
    %434 = "tosa.add"(%410, %433) : (tensor<1x2048x5x5xf32>, tensor<1x2048x5x5xf32>) -> tensor<1x2048x5x5xf32>
    %435 = "tosa.equal"(%332, %333) : (tensor<1x320x5x5xf32>, tensor<1x320x5x5xf32>) -> tensor<1x320x5x5xi1>
    %436 = "tosa.select"(%435, %extracted_slice_33, %1) : (tensor<1x320x5x5xi1>, tensor<1x320x5x5xf32>, tensor<f32>) -> tensor<1x320x5x5xf32>
    %437 = "tosa.mul"(%44, %436) {shift = 0 : i32} : (tensor<1x320x1x1xf32>, tensor<1x320x5x5xf32>) -> tensor<1x320x5x5xf32>
    %438 = "tosa.mul"(%331, %437) {shift = 0 : i32} : (tensor<1x320x1x1xf32>, tensor<1x320x5x5xf32>) -> tensor<1x320x5x5xf32>
    %439 = "tosa.transpose"(%438, %2) : (tensor<1x320x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x320xf32>
    %440 = "tosa.transpose"(%54, %4) : (tensor<320x1x1x2048xf32>, tensor<4xi64>) -> tensor<2048x1x1x320xf32>
    %441 = "tosa.transpose_conv2d"(%439, %440, %cst_1) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 5, 5, 2048>, stride = array<i64: 1, 1>} : (tensor<1x5x5x320xf32>, tensor<2048x1x1x320xf32>, tensor<2048xf32>) -> tensor<1x5x5x2048xf32>
    %442 = "tosa.transpose"(%441, %3) : (tensor<1x5x5x2048xf32>, tensor<4xi64>) -> tensor<1x2048x5x5xf32>
    %443 = "tosa.add"(%434, %442) : (tensor<1x2048x5x5xf32>, tensor<1x2048x5x5xf32>) -> tensor<1x2048x5x5xf32>
    %extracted_slice_39 = tensor.extract_slice %443[0, 1856, 0, 0] [1, 192, 5, 5] [1, 1, 1, 1] : tensor<1x2048x5x5xf32> to tensor<1x192x5x5xf32>
    %extracted_slice_40 = tensor.extract_slice %443[0, 1088, 0, 0] [1, 768, 5, 5] [1, 1, 1, 1] : tensor<1x2048x5x5xf32> to tensor<1x768x5x5xf32>
    %extracted_slice_41 = tensor.extract_slice %443[0, 320, 0, 0] [1, 768, 5, 5] [1, 1, 1, 1] : tensor<1x2048x5x5xf32> to tensor<1x768x5x5xf32>
    %extracted_slice_42 = tensor.extract_slice %443[0, 0, 0, 0] [1, 320, 5, 5] [1, 1, 1, 1] : tensor<1x2048x5x5xf32> to tensor<1x320x5x5xf32>
    %444 = "tosa.equal"(%329, %330) : (tensor<1x192x5x5xf32>, tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xi1>
    %445 = "tosa.select"(%444, %extracted_slice_39, %1) : (tensor<1x192x5x5xi1>, tensor<1x192x5x5xf32>, tensor<f32>) -> tensor<1x192x5x5xf32>
    %446 = "tosa.mul"(%13, %445) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xf32>
    %447 = "tosa.mul"(%328, %446) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xf32>
    %448 = "tosa.transpose"(%447, %2) : (tensor<1x192x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x192xf32>
    %449 = "tosa.transpose"(%53, %4) : (tensor<192x1x1x1280xf32>, tensor<4xi64>) -> tensor<1280x1x1x192xf32>
    %450 = "tosa.transpose_conv2d"(%448, %449, %cst_6) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 5, 5, 1280>, stride = array<i64: 1, 1>} : (tensor<1x5x5x192xf32>, tensor<1280x1x1x192xf32>, tensor<1280xf32>) -> tensor<1x5x5x1280xf32>
    %padded_43 = tensor.pad %327 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_29 : f32
    } : tensor<1x5x5x1280xf32> to tensor<1x7x7x1280xf32>
    %451 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%padded_43, %cst_3, %450 : tensor<1x7x7x1280xf32>, tensor<3x3xf32>, tensor<1x5x5x1280xf32>) outs(%cst_7 : tensor<1x7x7x1280xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %out: f32):
      %1122 = arith.mulf %in_98, %cst_30 : f32
      %1123 = arith.addf %1122, %out : f32
      linalg.yield %1123 : f32
    } -> tensor<1x7x7x1280xf32>
    %extracted_slice_44 = tensor.extract_slice %451[0, 1, 1, 0] [1, 5, 5, 1280] [1, 1, 1, 1] : tensor<1x7x7x1280xf32> to tensor<1x5x5x1280xf32>
    %452 = "tosa.transpose"(%extracted_slice_44, %3) : (tensor<1x5x5x1280xf32>, tensor<4xi64>) -> tensor<1x1280x5x5xf32>
    %extracted_slice_45 = tensor.extract_slice %extracted_slice_40[0, 384, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> to tensor<1x384x5x5xf32>
    %extracted_slice_46 = tensor.extract_slice %extracted_slice_40[0, 0, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> to tensor<1x384x5x5xf32>
    %453 = "tosa.equal"(%325, %326) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xi1>
    %454 = "tosa.select"(%453, %extracted_slice_45, %1) : (tensor<1x384x5x5xi1>, tensor<1x384x5x5xf32>, tensor<f32>) -> tensor<1x384x5x5xf32>
    %455 = "tosa.mul"(%27, %454) {shift = 0 : i32} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %456 = "tosa.mul"(%324, %455) {shift = 0 : i32} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %457 = "tosa.transpose"(%456, %2) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %458 = "tosa.transpose_conv2d"(%457, %382, %cst_4) {out_pad = array<i64: -1, -1, 0, 0>, out_shape = array<i64: 1, 5, 5, 384>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x3x1x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %459 = "tosa.transpose"(%458, %3) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %460 = "tosa.equal"(%322, %323) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xi1>
    %461 = "tosa.select"(%460, %extracted_slice_46, %1) : (tensor<1x384x5x5xi1>, tensor<1x384x5x5xf32>, tensor<f32>) -> tensor<1x384x5x5xf32>
    %462 = "tosa.mul"(%27, %461) {shift = 0 : i32} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %463 = "tosa.mul"(%321, %462) {shift = 0 : i32} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %464 = "tosa.transpose"(%463, %2) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %465 = "tosa.transpose_conv2d"(%464, %390, %cst_4) {out_pad = array<i64: 0, 0, -1, -1>, out_shape = array<i64: 1, 5, 5, 384>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x1x3x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %466 = "tosa.transpose"(%465, %3) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %467 = "tosa.add"(%459, %466) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %468 = "tosa.equal"(%319, %320) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xi1>
    %469 = "tosa.select"(%468, %467, %1) : (tensor<1x384x5x5xi1>, tensor<1x384x5x5xf32>, tensor<f32>) -> tensor<1x384x5x5xf32>
    %470 = "tosa.mul"(%27, %469) {shift = 0 : i32} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %471 = "tosa.mul"(%318, %470) {shift = 0 : i32} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %472 = "tosa.transpose"(%471, %2) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %473 = "tosa.transpose_conv2d"(%472, %399, %cst_5) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 5, 5, 448>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<448x3x3x384xf32>, tensor<448xf32>) -> tensor<1x5x5x448xf32>
    %474 = "tosa.transpose"(%473, %3) : (tensor<1x5x5x448xf32>, tensor<4xi64>) -> tensor<1x448x5x5xf32>
    %475 = "tosa.equal"(%316, %317) : (tensor<1x448x5x5xf32>, tensor<1x448x5x5xf32>) -> tensor<1x448x5x5xi1>
    %476 = "tosa.select"(%475, %474, %1) : (tensor<1x448x5x5xi1>, tensor<1x448x5x5xf32>, tensor<f32>) -> tensor<1x448x5x5xf32>
    %477 = "tosa.mul"(%51, %476) {shift = 0 : i32} : (tensor<1x448x1x1xf32>, tensor<1x448x5x5xf32>) -> tensor<1x448x5x5xf32>
    %478 = "tosa.mul"(%315, %477) {shift = 0 : i32} : (tensor<1x448x1x1xf32>, tensor<1x448x5x5xf32>) -> tensor<1x448x5x5xf32>
    %479 = "tosa.transpose"(%478, %2) : (tensor<1x448x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x448xf32>
    %480 = "tosa.transpose"(%50, %4) : (tensor<448x1x1x1280xf32>, tensor<4xi64>) -> tensor<1280x1x1x448xf32>
    %481 = "tosa.transpose_conv2d"(%479, %480, %cst_6) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 5, 5, 1280>, stride = array<i64: 1, 1>} : (tensor<1x5x5x448xf32>, tensor<1280x1x1x448xf32>, tensor<1280xf32>) -> tensor<1x5x5x1280xf32>
    %482 = "tosa.transpose"(%481, %3) : (tensor<1x5x5x1280xf32>, tensor<4xi64>) -> tensor<1x1280x5x5xf32>
    %483 = "tosa.add"(%452, %482) : (tensor<1x1280x5x5xf32>, tensor<1x1280x5x5xf32>) -> tensor<1x1280x5x5xf32>
    %extracted_slice_47 = tensor.extract_slice %extracted_slice_41[0, 384, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> to tensor<1x384x5x5xf32>
    %extracted_slice_48 = tensor.extract_slice %extracted_slice_41[0, 0, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> to tensor<1x384x5x5xf32>
    %484 = "tosa.equal"(%313, %314) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xi1>
    %485 = "tosa.select"(%484, %extracted_slice_47, %1) : (tensor<1x384x5x5xi1>, tensor<1x384x5x5xf32>, tensor<f32>) -> tensor<1x384x5x5xf32>
    %486 = "tosa.mul"(%27, %485) {shift = 0 : i32} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %487 = "tosa.mul"(%312, %486) {shift = 0 : i32} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %488 = "tosa.transpose"(%487, %2) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %489 = "tosa.transpose_conv2d"(%488, %382, %cst_4) {out_pad = array<i64: -1, -1, 0, 0>, out_shape = array<i64: 1, 5, 5, 384>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x3x1x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %490 = "tosa.transpose"(%489, %3) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %491 = "tosa.equal"(%310, %311) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xi1>
    %492 = "tosa.select"(%491, %extracted_slice_48, %1) : (tensor<1x384x5x5xi1>, tensor<1x384x5x5xf32>, tensor<f32>) -> tensor<1x384x5x5xf32>
    %493 = "tosa.mul"(%27, %492) {shift = 0 : i32} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %494 = "tosa.mul"(%309, %493) {shift = 0 : i32} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %495 = "tosa.transpose"(%494, %2) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %496 = "tosa.transpose_conv2d"(%495, %390, %cst_4) {out_pad = array<i64: 0, 0, -1, -1>, out_shape = array<i64: 1, 5, 5, 384>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x1x3x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %497 = "tosa.transpose"(%496, %3) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %498 = "tosa.add"(%490, %497) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %499 = "tosa.equal"(%307, %308) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xi1>
    %500 = "tosa.select"(%499, %498, %1) : (tensor<1x384x5x5xi1>, tensor<1x384x5x5xf32>, tensor<f32>) -> tensor<1x384x5x5xf32>
    %501 = "tosa.mul"(%27, %500) {shift = 0 : i32} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %502 = "tosa.mul"(%306, %501) {shift = 0 : i32} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %503 = "tosa.transpose"(%502, %2) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %504 = "tosa.transpose"(%47, %4) : (tensor<384x1x1x1280xf32>, tensor<4xi64>) -> tensor<1280x1x1x384xf32>
    %505 = "tosa.transpose_conv2d"(%503, %504, %cst_6) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 5, 5, 1280>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<1280x1x1x384xf32>, tensor<1280xf32>) -> tensor<1x5x5x1280xf32>
    %506 = "tosa.transpose"(%505, %3) : (tensor<1x5x5x1280xf32>, tensor<4xi64>) -> tensor<1x1280x5x5xf32>
    %507 = "tosa.add"(%483, %506) : (tensor<1x1280x5x5xf32>, tensor<1x1280x5x5xf32>) -> tensor<1x1280x5x5xf32>
    %508 = "tosa.equal"(%304, %305) : (tensor<1x320x5x5xf32>, tensor<1x320x5x5xf32>) -> tensor<1x320x5x5xi1>
    %509 = "tosa.select"(%508, %extracted_slice_42, %1) : (tensor<1x320x5x5xi1>, tensor<1x320x5x5xf32>, tensor<f32>) -> tensor<1x320x5x5xf32>
    %510 = "tosa.mul"(%44, %509) {shift = 0 : i32} : (tensor<1x320x1x1xf32>, tensor<1x320x5x5xf32>) -> tensor<1x320x5x5xf32>
    %511 = "tosa.mul"(%303, %510) {shift = 0 : i32} : (tensor<1x320x1x1xf32>, tensor<1x320x5x5xf32>) -> tensor<1x320x5x5xf32>
    %512 = "tosa.transpose"(%511, %2) : (tensor<1x320x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x320xf32>
    %513 = "tosa.transpose"(%46, %4) : (tensor<320x1x1x1280xf32>, tensor<4xi64>) -> tensor<1280x1x1x320xf32>
    %514 = "tosa.transpose_conv2d"(%512, %513, %cst_6) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 5, 5, 1280>, stride = array<i64: 1, 1>} : (tensor<1x5x5x320xf32>, tensor<1280x1x1x320xf32>, tensor<1280xf32>) -> tensor<1x5x5x1280xf32>
    %515 = "tosa.transpose"(%514, %3) : (tensor<1x5x5x1280xf32>, tensor<4xi64>) -> tensor<1x1280x5x5xf32>
    %516 = "tosa.add"(%507, %515) : (tensor<1x1280x5x5xf32>, tensor<1x1280x5x5xf32>) -> tensor<1x1280x5x5xf32>
    %extracted_slice_49 = tensor.extract_slice %516[0, 512, 0, 0] [1, 768, 5, 5] [1, 1, 1, 1] : tensor<1x1280x5x5xf32> to tensor<1x768x5x5xf32>
    %extracted_slice_50 = tensor.extract_slice %516[0, 320, 0, 0] [1, 192, 5, 5] [1, 1, 1, 1] : tensor<1x1280x5x5xf32> to tensor<1x192x5x5xf32>
    %extracted_slice_51 = tensor.extract_slice %516[0, 0, 0, 0] [1, 320, 5, 5] [1, 1, 1, 1] : tensor<1x1280x5x5xf32> to tensor<1x320x5x5xf32>
    %517 = "tosa.transpose"(%extracted_slice_49, %2) : (tensor<1x768x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x768xf32>
    %518 = linalg.generic {indexing_maps = [#map3, #map1, #map2, #map2, #map3], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%301, %cst_3, %302, %517 : tensor<1x12x12x768xf32>, tensor<3x3xf32>, tensor<1x5x5x768xf32>, tensor<1x5x5x768xf32>) outs(%cst_8 : tensor<1x12x12x768xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %out: f32):
      %1122 = arith.cmpf oge, %in, %in_98 : f32
      %1123 = arith.select %1122, %in_99, %cst_29 : f32
      %1124 = arith.addf %out, %1123 : f32
      linalg.yield %1124 : f32
    } -> tensor<1x12x12x768xf32>
    %519 = "tosa.transpose"(%518, %3) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %520 = "tosa.equal"(%299, %300) : (tensor<1x192x5x5xf32>, tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xi1>
    %521 = "tosa.select"(%520, %extracted_slice_50, %1) : (tensor<1x192x5x5xi1>, tensor<1x192x5x5xf32>, tensor<f32>) -> tensor<1x192x5x5xf32>
    %522 = "tosa.mul"(%13, %521) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xf32>
    %523 = "tosa.mul"(%298, %522) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xf32>
    %524 = "tosa.transpose"(%523, %2) : (tensor<1x192x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x192xf32>
    %525 = "tosa.transpose"(%45, %4) : (tensor<192x3x3x192xf32>, tensor<4xi64>) -> tensor<192x3x3x192xf32>
    %526 = "tosa.transpose_conv2d"(%524, %525, %cst_9) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 192>, stride = array<i64: 2, 2>} : (tensor<1x5x5x192xf32>, tensor<192x3x3x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %527 = "tosa.transpose"(%526, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %528 = "tosa.equal"(%296, %297) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %529 = "tosa.select"(%528, %527, %1) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %530 = "tosa.mul"(%13, %529) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %531 = "tosa.mul"(%295, %530) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %532 = "tosa.transpose"(%531, %2) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %533 = "tosa.transpose"(%42, %4) : (tensor<192x7x1x192xf32>, tensor<4xi64>) -> tensor<192x7x1x192xf32>
    %534 = "tosa.transpose_conv2d"(%532, %533, %cst_9) {out_pad = array<i64: -3, -3, 0, 0>, out_shape = array<i64: 1, 12, 12, 192>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x7x1x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %535 = "tosa.transpose"(%534, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %536 = "tosa.equal"(%293, %294) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %537 = "tosa.select"(%536, %535, %1) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %538 = "tosa.mul"(%13, %537) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %539 = "tosa.mul"(%292, %538) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %540 = "tosa.transpose"(%539, %2) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %541 = "tosa.transpose"(%41, %4) : (tensor<192x1x7x192xf32>, tensor<4xi64>) -> tensor<192x1x7x192xf32>
    %542 = "tosa.transpose_conv2d"(%540, %541, %cst_9) {out_pad = array<i64: 0, 0, -3, -3>, out_shape = array<i64: 1, 12, 12, 192>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x1x7x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %543 = "tosa.transpose"(%542, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %544 = "tosa.equal"(%290, %291) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %545 = "tosa.select"(%544, %543, %1) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %546 = "tosa.mul"(%13, %545) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %547 = "tosa.mul"(%289, %546) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %548 = "tosa.transpose"(%547, %2) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %549 = "tosa.transpose"(%28, %4) : (tensor<192x1x1x768xf32>, tensor<4xi64>) -> tensor<768x1x1x192xf32>
    %550 = "tosa.transpose_conv2d"(%548, %549, %cst_10) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<768x1x1x192xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %551 = "tosa.transpose"(%550, %3) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %552 = "tosa.add"(%519, %551) : (tensor<1x768x12x12xf32>, tensor<1x768x12x12xf32>) -> tensor<1x768x12x12xf32>
    %553 = "tosa.equal"(%287, %288) : (tensor<1x320x5x5xf32>, tensor<1x320x5x5xf32>) -> tensor<1x320x5x5xi1>
    %554 = "tosa.select"(%553, %extracted_slice_51, %1) : (tensor<1x320x5x5xi1>, tensor<1x320x5x5xf32>, tensor<f32>) -> tensor<1x320x5x5xf32>
    %555 = "tosa.mul"(%44, %554) {shift = 0 : i32} : (tensor<1x320x1x1xf32>, tensor<1x320x5x5xf32>) -> tensor<1x320x5x5xf32>
    %556 = "tosa.mul"(%286, %555) {shift = 0 : i32} : (tensor<1x320x1x1xf32>, tensor<1x320x5x5xf32>) -> tensor<1x320x5x5xf32>
    %557 = "tosa.transpose"(%556, %2) : (tensor<1x320x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x320xf32>
    %558 = "tosa.transpose"(%43, %4) : (tensor<320x3x3x192xf32>, tensor<4xi64>) -> tensor<192x3x3x320xf32>
    %559 = "tosa.transpose_conv2d"(%557, %558, %cst_9) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 192>, stride = array<i64: 2, 2>} : (tensor<1x5x5x320xf32>, tensor<192x3x3x320xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %560 = "tosa.transpose"(%559, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %561 = "tosa.equal"(%284, %285) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %562 = "tosa.select"(%561, %560, %1) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %563 = "tosa.mul"(%13, %562) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %564 = "tosa.mul"(%283, %563) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %565 = "tosa.transpose"(%564, %2) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %566 = "tosa.transpose_conv2d"(%565, %549, %cst_10) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<768x1x1x192xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %567 = "tosa.transpose"(%566, %3) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %568 = "tosa.add"(%552, %567) : (tensor<1x768x12x12xf32>, tensor<1x768x12x12xf32>) -> tensor<1x768x12x12xf32>
    %extracted_slice_52 = tensor.extract_slice %568[0, 576, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %extracted_slice_53 = tensor.extract_slice %568[0, 384, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %extracted_slice_54 = tensor.extract_slice %568[0, 192, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %extracted_slice_55 = tensor.extract_slice %568[0, 0, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %569 = "tosa.equal"(%281, %282) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %570 = "tosa.select"(%569, %extracted_slice_52, %1) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %571 = "tosa.mul"(%13, %570) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %572 = "tosa.mul"(%280, %571) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %573 = "tosa.transpose"(%572, %2) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %574 = "tosa.transpose_conv2d"(%573, %549, %cst_10) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<768x1x1x192xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %padded_56 = tensor.pad %279 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_29 : f32
    } : tensor<1x12x12x768xf32> to tensor<1x14x14x768xf32>
    %575 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%padded_56, %cst_3, %574 : tensor<1x14x14x768xf32>, tensor<3x3xf32>, tensor<1x12x12x768xf32>) outs(%cst_11 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %out: f32):
      %1122 = arith.mulf %in_98, %cst_30 : f32
      %1123 = arith.addf %1122, %out : f32
      linalg.yield %1123 : f32
    } -> tensor<1x14x14x768xf32>
    %extracted_slice_57 = tensor.extract_slice %575[0, 1, 1, 0] [1, 12, 12, 768] [1, 1, 1, 1] : tensor<1x14x14x768xf32> to tensor<1x12x12x768xf32>
    %576 = "tosa.transpose"(%extracted_slice_57, %3) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %577 = "tosa.equal"(%277, %278) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %578 = "tosa.select"(%577, %extracted_slice_53, %1) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %579 = "tosa.mul"(%13, %578) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %580 = "tosa.mul"(%276, %579) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %581 = "tosa.transpose"(%580, %2) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %582 = "tosa.transpose_conv2d"(%581, %541, %cst_9) {out_pad = array<i64: 0, 0, -3, -3>, out_shape = array<i64: 1, 12, 12, 192>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x1x7x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %583 = "tosa.transpose"(%582, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %584 = "tosa.equal"(%274, %275) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %585 = "tosa.select"(%584, %583, %1) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %586 = "tosa.mul"(%13, %585) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %587 = "tosa.mul"(%273, %586) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %588 = "tosa.transpose"(%587, %2) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %589 = "tosa.transpose_conv2d"(%588, %533, %cst_9) {out_pad = array<i64: -3, -3, 0, 0>, out_shape = array<i64: 1, 12, 12, 192>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x7x1x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %590 = "tosa.transpose"(%589, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %591 = "tosa.equal"(%271, %272) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %592 = "tosa.select"(%591, %590, %1) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %593 = "tosa.mul"(%13, %592) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %594 = "tosa.mul"(%270, %593) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %595 = "tosa.transpose"(%594, %2) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %596 = "tosa.transpose_conv2d"(%595, %541, %cst_9) {out_pad = array<i64: 0, 0, -3, -3>, out_shape = array<i64: 1, 12, 12, 192>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x1x7x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %597 = "tosa.transpose"(%596, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %598 = "tosa.equal"(%268, %269) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %599 = "tosa.select"(%598, %597, %1) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %600 = "tosa.mul"(%13, %599) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %601 = "tosa.mul"(%267, %600) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %602 = "tosa.transpose"(%601, %2) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %603 = "tosa.transpose_conv2d"(%602, %533, %cst_9) {out_pad = array<i64: -3, -3, 0, 0>, out_shape = array<i64: 1, 12, 12, 192>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x7x1x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %604 = "tosa.transpose"(%603, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %605 = "tosa.equal"(%265, %266) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %606 = "tosa.select"(%605, %604, %1) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %607 = "tosa.mul"(%13, %606) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %608 = "tosa.mul"(%264, %607) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %609 = "tosa.transpose"(%608, %2) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %610 = "tosa.transpose_conv2d"(%609, %549, %cst_10) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<768x1x1x192xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %611 = "tosa.transpose"(%610, %3) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %612 = "tosa.add"(%576, %611) : (tensor<1x768x12x12xf32>, tensor<1x768x12x12xf32>) -> tensor<1x768x12x12xf32>
    %613 = "tosa.equal"(%262, %263) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %614 = "tosa.select"(%613, %extracted_slice_54, %1) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %615 = "tosa.mul"(%13, %614) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %616 = "tosa.mul"(%261, %615) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %617 = "tosa.transpose"(%616, %2) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %618 = "tosa.transpose_conv2d"(%617, %533, %cst_9) {out_pad = array<i64: -3, -3, 0, 0>, out_shape = array<i64: 1, 12, 12, 192>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x7x1x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %619 = "tosa.transpose"(%618, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %620 = "tosa.equal"(%259, %260) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %621 = "tosa.select"(%620, %619, %1) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %622 = "tosa.mul"(%13, %621) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %623 = "tosa.mul"(%258, %622) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %624 = "tosa.transpose"(%623, %2) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %625 = "tosa.transpose_conv2d"(%624, %541, %cst_9) {out_pad = array<i64: 0, 0, -3, -3>, out_shape = array<i64: 1, 12, 12, 192>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x1x7x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %626 = "tosa.transpose"(%625, %3) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %627 = "tosa.equal"(%256, %257) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %628 = "tosa.select"(%627, %626, %1) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %629 = "tosa.mul"(%13, %628) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %630 = "tosa.mul"(%255, %629) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %631 = "tosa.transpose"(%630, %2) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %632 = "tosa.transpose_conv2d"(%631, %549, %cst_10) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<768x1x1x192xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %633 = "tosa.transpose"(%632, %3) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %634 = "tosa.add"(%612, %633) : (tensor<1x768x12x12xf32>, tensor<1x768x12x12xf32>) -> tensor<1x768x12x12xf32>
    %635 = "tosa.equal"(%253, %254) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %636 = "tosa.select"(%635, %extracted_slice_55, %1) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %637 = "tosa.mul"(%13, %636) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %638 = "tosa.mul"(%252, %637) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %639 = "tosa.transpose"(%638, %2) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %640 = "tosa.transpose_conv2d"(%639, %549, %cst_10) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<768x1x1x192xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %641 = "tosa.transpose"(%640, %3) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %642 = "tosa.add"(%634, %641) : (tensor<1x768x12x12xf32>, tensor<1x768x12x12xf32>) -> tensor<1x768x12x12xf32>
    %extracted_slice_58 = tensor.extract_slice %642[0, 576, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %extracted_slice_59 = tensor.extract_slice %642[0, 384, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %extracted_slice_60 = tensor.extract_slice %642[0, 192, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %extracted_slice_61 = tensor.extract_slice %642[0, 0, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %643 = "tosa.equal"(%250, %251) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %644 = "tosa.select"(%643, %extracted_slice_58, %1) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %645 = "tosa.mul"(%13, %644) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %646 = "tosa.mul"(%249, %645) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %647 = "tosa.transpose"(%646, %2) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %648 = "tosa.transpose_conv2d"(%647, %549, %cst_10) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<768x1x1x192xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %padded_62 = tensor.pad %248 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_29 : f32
    } : tensor<1x12x12x768xf32> to tensor<1x14x14x768xf32>
    %649 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%padded_62, %cst_3, %648 : tensor<1x14x14x768xf32>, tensor<3x3xf32>, tensor<1x12x12x768xf32>) outs(%cst_11 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %out: f32):
      %1122 = arith.mulf %in_98, %cst_30 : f32
      %1123 = arith.addf %1122, %out : f32
      linalg.yield %1123 : f32
    } -> tensor<1x14x14x768xf32>
    %extracted_slice_63 = tensor.extract_slice %649[0, 1, 1, 0] [1, 12, 12, 768] [1, 1, 1, 1] : tensor<1x14x14x768xf32> to tensor<1x12x12x768xf32>
    %650 = "tosa.transpose"(%extracted_slice_63, %3) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %651 = "tosa.equal"(%246, %247) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %652 = "tosa.select"(%651, %extracted_slice_59, %1) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %653 = "tosa.mul"(%13, %652) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %654 = "tosa.mul"(%245, %653) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %655 = "tosa.transpose"(%654, %2) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %656 = "tosa.transpose"(%40, %4) : (tensor<192x1x7x160xf32>, tensor<4xi64>) -> tensor<160x1x7x192xf32>
    %657 = "tosa.transpose_conv2d"(%655, %656, %cst_12) {out_pad = array<i64: 0, 0, -3, -3>, out_shape = array<i64: 1, 12, 12, 160>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<160x1x7x192xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %658 = "tosa.transpose"(%657, %3) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %659 = "tosa.equal"(%243, %244) : (tensor<1x160x12x12xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xi1>
    %660 = "tosa.select"(%659, %658, %1) : (tensor<1x160x12x12xi1>, tensor<1x160x12x12xf32>, tensor<f32>) -> tensor<1x160x12x12xf32>
    %661 = "tosa.mul"(%36, %660) {shift = 0 : i32} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %662 = "tosa.mul"(%242, %661) {shift = 0 : i32} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %663 = "tosa.transpose"(%662, %2) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %664 = "tosa.transpose"(%39, %4) : (tensor<160x7x1x160xf32>, tensor<4xi64>) -> tensor<160x7x1x160xf32>
    %665 = "tosa.transpose_conv2d"(%663, %664, %cst_12) {out_pad = array<i64: -3, -3, 0, 0>, out_shape = array<i64: 1, 12, 12, 160>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x7x1x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %666 = "tosa.transpose"(%665, %3) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %667 = "tosa.equal"(%240, %241) : (tensor<1x160x12x12xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xi1>
    %668 = "tosa.select"(%667, %666, %1) : (tensor<1x160x12x12xi1>, tensor<1x160x12x12xf32>, tensor<f32>) -> tensor<1x160x12x12xf32>
    %669 = "tosa.mul"(%36, %668) {shift = 0 : i32} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %670 = "tosa.mul"(%239, %669) {shift = 0 : i32} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %671 = "tosa.transpose"(%670, %2) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %672 = "tosa.transpose"(%37, %4) : (tensor<160x1x7x160xf32>, tensor<4xi64>) -> tensor<160x1x7x160xf32>
    %673 = "tosa.transpose_conv2d"(%671, %672, %cst_12) {out_pad = array<i64: 0, 0, -3, -3>, out_shape = array<i64: 1, 12, 12, 160>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x1x7x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %674 = "tosa.transpose"(%673, %3) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %675 = "tosa.equal"(%237, %238) : (tensor<1x160x12x12xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xi1>
    %676 = "tosa.select"(%675, %674, %1) : (tensor<1x160x12x12xi1>, tensor<1x160x12x12xf32>, tensor<f32>) -> tensor<1x160x12x12xf32>
    %677 = "tosa.mul"(%36, %676) {shift = 0 : i32} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %678 = "tosa.mul"(%236, %677) {shift = 0 : i32} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %679 = "tosa.transpose"(%678, %2) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %680 = "tosa.transpose_conv2d"(%679, %664, %cst_12) {out_pad = array<i64: -3, -3, 0, 0>, out_shape = array<i64: 1, 12, 12, 160>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x7x1x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %681 = "tosa.transpose"(%680, %3) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %682 = "tosa.equal"(%234, %235) : (tensor<1x160x12x12xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xi1>
    %683 = "tosa.select"(%682, %681, %1) : (tensor<1x160x12x12xi1>, tensor<1x160x12x12xf32>, tensor<f32>) -> tensor<1x160x12x12xf32>
    %684 = "tosa.mul"(%36, %683) {shift = 0 : i32} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %685 = "tosa.mul"(%233, %684) {shift = 0 : i32} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %686 = "tosa.transpose"(%685, %2) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %687 = "tosa.transpose"(%35, %4) : (tensor<160x1x1x768xf32>, tensor<4xi64>) -> tensor<768x1x1x160xf32>
    %688 = "tosa.transpose_conv2d"(%686, %687, %cst_10) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<768x1x1x160xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %689 = "tosa.transpose"(%688, %3) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %690 = "tosa.add"(%650, %689) : (tensor<1x768x12x12xf32>, tensor<1x768x12x12xf32>) -> tensor<1x768x12x12xf32>
    %691 = "tosa.equal"(%231, %232) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %692 = "tosa.select"(%691, %extracted_slice_60, %1) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %693 = "tosa.mul"(%13, %692) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %694 = "tosa.mul"(%230, %693) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %695 = "tosa.transpose"(%694, %2) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %696 = "tosa.transpose"(%38, %4) : (tensor<192x7x1x160xf32>, tensor<4xi64>) -> tensor<160x7x1x192xf32>
    %697 = "tosa.transpose_conv2d"(%695, %696, %cst_12) {out_pad = array<i64: -3, -3, 0, 0>, out_shape = array<i64: 1, 12, 12, 160>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<160x7x1x192xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %698 = "tosa.transpose"(%697, %3) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %699 = "tosa.equal"(%228, %229) : (tensor<1x160x12x12xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xi1>
    %700 = "tosa.select"(%699, %698, %1) : (tensor<1x160x12x12xi1>, tensor<1x160x12x12xf32>, tensor<f32>) -> tensor<1x160x12x12xf32>
    %701 = "tosa.mul"(%36, %700) {shift = 0 : i32} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %702 = "tosa.mul"(%227, %701) {shift = 0 : i32} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %703 = "tosa.transpose"(%702, %2) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %704 = "tosa.transpose_conv2d"(%703, %672, %cst_12) {out_pad = array<i64: 0, 0, -3, -3>, out_shape = array<i64: 1, 12, 12, 160>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x1x7x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %705 = "tosa.transpose"(%704, %3) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %706 = "tosa.equal"(%225, %226) : (tensor<1x160x12x12xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xi1>
    %707 = "tosa.select"(%706, %705, %1) : (tensor<1x160x12x12xi1>, tensor<1x160x12x12xf32>, tensor<f32>) -> tensor<1x160x12x12xf32>
    %708 = "tosa.mul"(%36, %707) {shift = 0 : i32} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %709 = "tosa.mul"(%224, %708) {shift = 0 : i32} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %710 = "tosa.transpose"(%709, %2) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %711 = "tosa.transpose_conv2d"(%710, %687, %cst_10) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<768x1x1x160xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %712 = "tosa.transpose"(%711, %3) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %713 = "tosa.add"(%690, %712) : (tensor<1x768x12x12xf32>, tensor<1x768x12x12xf32>) -> tensor<1x768x12x12xf32>
    %714 = "tosa.equal"(%222, %223) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %715 = "tosa.select"(%714, %extracted_slice_61, %1) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %716 = "tosa.mul"(%13, %715) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %717 = "tosa.mul"(%221, %716) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %718 = "tosa.transpose"(%717, %2) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %719 = "tosa.transpose_conv2d"(%718, %549, %cst_10) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<768x1x1x192xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %720 = "tosa.transpose"(%719, %3) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %721 = "tosa.add"(%713, %720) : (tensor<1x768x12x12xf32>, tensor<1x768x12x12xf32>) -> tensor<1x768x12x12xf32>
    %extracted_slice_64 = tensor.extract_slice %721[0, 576, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %extracted_slice_65 = tensor.extract_slice %721[0, 384, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %extracted_slice_66 = tensor.extract_slice %721[0, 192, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %extracted_slice_67 = tensor.extract_slice %721[0, 0, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %722 = "tosa.equal"(%219, %220) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %723 = "tosa.select"(%722, %extracted_slice_64, %1) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %724 = "tosa.mul"(%13, %723) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %725 = "tosa.mul"(%218, %724) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %726 = "tosa.transpose"(%725, %2) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %727 = "tosa.transpose_conv2d"(%726, %549, %cst_10) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<768x1x1x192xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %padded_68 = tensor.pad %217 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_29 : f32
    } : tensor<1x12x12x768xf32> to tensor<1x14x14x768xf32>
    %728 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%padded_68, %cst_3, %727 : tensor<1x14x14x768xf32>, tensor<3x3xf32>, tensor<1x12x12x768xf32>) outs(%cst_11 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %out: f32):
      %1122 = arith.mulf %in_98, %cst_30 : f32
      %1123 = arith.addf %1122, %out : f32
      linalg.yield %1123 : f32
    } -> tensor<1x14x14x768xf32>
    %extracted_slice_69 = tensor.extract_slice %728[0, 1, 1, 0] [1, 12, 12, 768] [1, 1, 1, 1] : tensor<1x14x14x768xf32> to tensor<1x12x12x768xf32>
    %729 = "tosa.transpose"(%extracted_slice_69, %3) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %730 = "tosa.equal"(%215, %216) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %731 = "tosa.select"(%730, %extracted_slice_65, %1) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %732 = "tosa.mul"(%13, %731) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %733 = "tosa.mul"(%214, %732) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %734 = "tosa.transpose"(%733, %2) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %735 = "tosa.transpose_conv2d"(%734, %656, %cst_12) {out_pad = array<i64: 0, 0, -3, -3>, out_shape = array<i64: 1, 12, 12, 160>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<160x1x7x192xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %736 = "tosa.transpose"(%735, %3) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %737 = "tosa.equal"(%212, %213) : (tensor<1x160x12x12xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xi1>
    %738 = "tosa.select"(%737, %736, %1) : (tensor<1x160x12x12xi1>, tensor<1x160x12x12xf32>, tensor<f32>) -> tensor<1x160x12x12xf32>
    %739 = "tosa.mul"(%36, %738) {shift = 0 : i32} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %740 = "tosa.mul"(%211, %739) {shift = 0 : i32} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %741 = "tosa.transpose"(%740, %2) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %742 = "tosa.transpose_conv2d"(%741, %664, %cst_12) {out_pad = array<i64: -3, -3, 0, 0>, out_shape = array<i64: 1, 12, 12, 160>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x7x1x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %743 = "tosa.transpose"(%742, %3) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %744 = "tosa.equal"(%209, %210) : (tensor<1x160x12x12xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xi1>
    %745 = "tosa.select"(%744, %743, %1) : (tensor<1x160x12x12xi1>, tensor<1x160x12x12xf32>, tensor<f32>) -> tensor<1x160x12x12xf32>
    %746 = "tosa.mul"(%36, %745) {shift = 0 : i32} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %747 = "tosa.mul"(%208, %746) {shift = 0 : i32} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %748 = "tosa.transpose"(%747, %2) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %749 = "tosa.transpose_conv2d"(%748, %672, %cst_12) {out_pad = array<i64: 0, 0, -3, -3>, out_shape = array<i64: 1, 12, 12, 160>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x1x7x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %750 = "tosa.transpose"(%749, %3) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %751 = "tosa.equal"(%206, %207) : (tensor<1x160x12x12xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xi1>
    %752 = "tosa.select"(%751, %750, %1) : (tensor<1x160x12x12xi1>, tensor<1x160x12x12xf32>, tensor<f32>) -> tensor<1x160x12x12xf32>
    %753 = "tosa.mul"(%36, %752) {shift = 0 : i32} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %754 = "tosa.mul"(%205, %753) {shift = 0 : i32} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %755 = "tosa.transpose"(%754, %2) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %756 = "tosa.transpose_conv2d"(%755, %664, %cst_12) {out_pad = array<i64: -3, -3, 0, 0>, out_shape = array<i64: 1, 12, 12, 160>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x7x1x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %757 = "tosa.transpose"(%756, %3) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %758 = "tosa.equal"(%203, %204) : (tensor<1x160x12x12xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xi1>
    %759 = "tosa.select"(%758, %757, %1) : (tensor<1x160x12x12xi1>, tensor<1x160x12x12xf32>, tensor<f32>) -> tensor<1x160x12x12xf32>
    %760 = "tosa.mul"(%36, %759) {shift = 0 : i32} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %761 = "tosa.mul"(%202, %760) {shift = 0 : i32} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %762 = "tosa.transpose"(%761, %2) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %763 = "tosa.transpose_conv2d"(%762, %687, %cst_10) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<768x1x1x160xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %764 = "tosa.transpose"(%763, %3) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %765 = "tosa.add"(%729, %764) : (tensor<1x768x12x12xf32>, tensor<1x768x12x12xf32>) -> tensor<1x768x12x12xf32>
    %766 = "tosa.equal"(%200, %201) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %767 = "tosa.select"(%766, %extracted_slice_66, %1) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %768 = "tosa.mul"(%13, %767) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %769 = "tosa.mul"(%199, %768) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %770 = "tosa.transpose"(%769, %2) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %771 = "tosa.transpose_conv2d"(%770, %696, %cst_12) {out_pad = array<i64: -3, -3, 0, 0>, out_shape = array<i64: 1, 12, 12, 160>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<160x7x1x192xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %772 = "tosa.transpose"(%771, %3) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %773 = "tosa.equal"(%197, %198) : (tensor<1x160x12x12xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xi1>
    %774 = "tosa.select"(%773, %772, %1) : (tensor<1x160x12x12xi1>, tensor<1x160x12x12xf32>, tensor<f32>) -> tensor<1x160x12x12xf32>
    %775 = "tosa.mul"(%36, %774) {shift = 0 : i32} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %776 = "tosa.mul"(%196, %775) {shift = 0 : i32} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %777 = "tosa.transpose"(%776, %2) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %778 = "tosa.transpose_conv2d"(%777, %672, %cst_12) {out_pad = array<i64: 0, 0, -3, -3>, out_shape = array<i64: 1, 12, 12, 160>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x1x7x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %779 = "tosa.transpose"(%778, %3) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %780 = "tosa.equal"(%194, %195) : (tensor<1x160x12x12xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xi1>
    %781 = "tosa.select"(%780, %779, %1) : (tensor<1x160x12x12xi1>, tensor<1x160x12x12xf32>, tensor<f32>) -> tensor<1x160x12x12xf32>
    %782 = "tosa.mul"(%36, %781) {shift = 0 : i32} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %783 = "tosa.mul"(%193, %782) {shift = 0 : i32} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %784 = "tosa.transpose"(%783, %2) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %785 = "tosa.transpose_conv2d"(%784, %687, %cst_10) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<768x1x1x160xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %786 = "tosa.transpose"(%785, %3) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %787 = "tosa.add"(%765, %786) : (tensor<1x768x12x12xf32>, tensor<1x768x12x12xf32>) -> tensor<1x768x12x12xf32>
    %788 = "tosa.equal"(%191, %192) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %789 = "tosa.select"(%788, %extracted_slice_67, %1) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %790 = "tosa.mul"(%13, %789) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %791 = "tosa.mul"(%190, %790) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %792 = "tosa.transpose"(%791, %2) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %793 = "tosa.transpose_conv2d"(%792, %549, %cst_10) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<768x1x1x192xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %794 = "tosa.transpose"(%793, %3) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %795 = "tosa.add"(%787, %794) : (tensor<1x768x12x12xf32>, tensor<1x768x12x12xf32>) -> tensor<1x768x12x12xf32>
    %extracted_slice_70 = tensor.extract_slice %795[0, 576, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %extracted_slice_71 = tensor.extract_slice %795[0, 384, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %extracted_slice_72 = tensor.extract_slice %795[0, 192, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %extracted_slice_73 = tensor.extract_slice %795[0, 0, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %796 = "tosa.equal"(%188, %189) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %797 = "tosa.select"(%796, %extracted_slice_70, %1) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %798 = "tosa.mul"(%13, %797) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %799 = "tosa.mul"(%187, %798) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %800 = "tosa.transpose"(%799, %2) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %801 = "tosa.transpose_conv2d"(%800, %549, %cst_10) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<768x1x1x192xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %padded_74 = tensor.pad %186 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_29 : f32
    } : tensor<1x12x12x768xf32> to tensor<1x14x14x768xf32>
    %802 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%padded_74, %cst_3, %801 : tensor<1x14x14x768xf32>, tensor<3x3xf32>, tensor<1x12x12x768xf32>) outs(%cst_11 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %out: f32):
      %1122 = arith.mulf %in_98, %cst_30 : f32
      %1123 = arith.addf %1122, %out : f32
      linalg.yield %1123 : f32
    } -> tensor<1x14x14x768xf32>
    %extracted_slice_75 = tensor.extract_slice %802[0, 1, 1, 0] [1, 12, 12, 768] [1, 1, 1, 1] : tensor<1x14x14x768xf32> to tensor<1x12x12x768xf32>
    %803 = "tosa.transpose"(%extracted_slice_75, %3) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %804 = "tosa.equal"(%184, %185) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %805 = "tosa.select"(%804, %extracted_slice_71, %1) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %806 = "tosa.mul"(%13, %805) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %807 = "tosa.mul"(%183, %806) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %808 = "tosa.transpose"(%807, %2) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %809 = "tosa.transpose"(%34, %4) : (tensor<192x1x7x128xf32>, tensor<4xi64>) -> tensor<128x1x7x192xf32>
    %810 = "tosa.transpose_conv2d"(%808, %809, %cst_13) {out_pad = array<i64: 0, 0, -3, -3>, out_shape = array<i64: 1, 12, 12, 128>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<128x1x7x192xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %811 = "tosa.transpose"(%810, %3) : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %812 = "tosa.equal"(%181, %182) : (tensor<1x128x12x12xf32>, tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xi1>
    %813 = "tosa.select"(%812, %811, %1) : (tensor<1x128x12x12xi1>, tensor<1x128x12x12xf32>, tensor<f32>) -> tensor<1x128x12x12xf32>
    %814 = "tosa.mul"(%30, %813) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %815 = "tosa.mul"(%180, %814) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %816 = "tosa.transpose"(%815, %2) : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %817 = "tosa.transpose"(%33, %4) : (tensor<128x7x1x128xf32>, tensor<4xi64>) -> tensor<128x7x1x128xf32>
    %818 = "tosa.transpose_conv2d"(%816, %817, %cst_13) {out_pad = array<i64: -3, -3, 0, 0>, out_shape = array<i64: 1, 12, 12, 128>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<128x7x1x128xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %819 = "tosa.transpose"(%818, %3) : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %820 = "tosa.equal"(%178, %179) : (tensor<1x128x12x12xf32>, tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xi1>
    %821 = "tosa.select"(%820, %819, %1) : (tensor<1x128x12x12xi1>, tensor<1x128x12x12xf32>, tensor<f32>) -> tensor<1x128x12x12xf32>
    %822 = "tosa.mul"(%30, %821) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %823 = "tosa.mul"(%177, %822) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %824 = "tosa.transpose"(%823, %2) : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %825 = "tosa.transpose"(%31, %4) : (tensor<128x1x7x128xf32>, tensor<4xi64>) -> tensor<128x1x7x128xf32>
    %826 = "tosa.transpose_conv2d"(%824, %825, %cst_13) {out_pad = array<i64: 0, 0, -3, -3>, out_shape = array<i64: 1, 12, 12, 128>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<128x1x7x128xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %827 = "tosa.transpose"(%826, %3) : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %828 = "tosa.equal"(%175, %176) : (tensor<1x128x12x12xf32>, tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xi1>
    %829 = "tosa.select"(%828, %827, %1) : (tensor<1x128x12x12xi1>, tensor<1x128x12x12xf32>, tensor<f32>) -> tensor<1x128x12x12xf32>
    %830 = "tosa.mul"(%30, %829) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %831 = "tosa.mul"(%174, %830) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %832 = "tosa.transpose"(%831, %2) : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %833 = "tosa.transpose_conv2d"(%832, %817, %cst_13) {out_pad = array<i64: -3, -3, 0, 0>, out_shape = array<i64: 1, 12, 12, 128>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<128x7x1x128xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %834 = "tosa.transpose"(%833, %3) : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %835 = "tosa.equal"(%172, %173) : (tensor<1x128x12x12xf32>, tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xi1>
    %836 = "tosa.select"(%835, %834, %1) : (tensor<1x128x12x12xi1>, tensor<1x128x12x12xf32>, tensor<f32>) -> tensor<1x128x12x12xf32>
    %837 = "tosa.mul"(%30, %836) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %838 = "tosa.mul"(%171, %837) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %839 = "tosa.transpose"(%838, %2) : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %840 = "tosa.transpose"(%29, %4) : (tensor<128x1x1x768xf32>, tensor<4xi64>) -> tensor<768x1x1x128xf32>
    %841 = "tosa.transpose_conv2d"(%839, %840, %cst_10) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<768x1x1x128xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %842 = "tosa.transpose"(%841, %3) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %843 = "tosa.add"(%803, %842) : (tensor<1x768x12x12xf32>, tensor<1x768x12x12xf32>) -> tensor<1x768x12x12xf32>
    %844 = "tosa.equal"(%169, %170) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %845 = "tosa.select"(%844, %extracted_slice_72, %1) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %846 = "tosa.mul"(%13, %845) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %847 = "tosa.mul"(%168, %846) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %848 = "tosa.transpose"(%847, %2) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %849 = "tosa.transpose"(%32, %4) : (tensor<192x7x1x128xf32>, tensor<4xi64>) -> tensor<128x7x1x192xf32>
    %850 = "tosa.transpose_conv2d"(%848, %849, %cst_13) {out_pad = array<i64: -3, -3, 0, 0>, out_shape = array<i64: 1, 12, 12, 128>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<128x7x1x192xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %851 = "tosa.transpose"(%850, %3) : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %852 = "tosa.equal"(%166, %167) : (tensor<1x128x12x12xf32>, tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xi1>
    %853 = "tosa.select"(%852, %851, %1) : (tensor<1x128x12x12xi1>, tensor<1x128x12x12xf32>, tensor<f32>) -> tensor<1x128x12x12xf32>
    %854 = "tosa.mul"(%30, %853) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %855 = "tosa.mul"(%165, %854) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %856 = "tosa.transpose"(%855, %2) : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %857 = "tosa.transpose_conv2d"(%856, %825, %cst_13) {out_pad = array<i64: 0, 0, -3, -3>, out_shape = array<i64: 1, 12, 12, 128>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<128x1x7x128xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %858 = "tosa.transpose"(%857, %3) : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %859 = "tosa.equal"(%163, %164) : (tensor<1x128x12x12xf32>, tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xi1>
    %860 = "tosa.select"(%859, %858, %1) : (tensor<1x128x12x12xi1>, tensor<1x128x12x12xf32>, tensor<f32>) -> tensor<1x128x12x12xf32>
    %861 = "tosa.mul"(%30, %860) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %862 = "tosa.mul"(%162, %861) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %863 = "tosa.transpose"(%862, %2) : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %864 = "tosa.transpose_conv2d"(%863, %840, %cst_10) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<768x1x1x128xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %865 = "tosa.transpose"(%864, %3) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %866 = "tosa.add"(%843, %865) : (tensor<1x768x12x12xf32>, tensor<1x768x12x12xf32>) -> tensor<1x768x12x12xf32>
    %867 = "tosa.equal"(%160, %161) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %868 = "tosa.select"(%867, %extracted_slice_73, %1) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %869 = "tosa.mul"(%13, %868) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %870 = "tosa.mul"(%159, %869) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %871 = "tosa.transpose"(%870, %2) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %872 = "tosa.transpose_conv2d"(%871, %549, %cst_10) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<768x1x1x192xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %873 = "tosa.transpose"(%872, %3) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %874 = "tosa.add"(%866, %873) : (tensor<1x768x12x12xf32>, tensor<1x768x12x12xf32>) -> tensor<1x768x12x12xf32>
    %extracted_slice_76 = tensor.extract_slice %874[0, 480, 0, 0] [1, 288, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x288x12x12xf32>
    %extracted_slice_77 = tensor.extract_slice %874[0, 384, 0, 0] [1, 96, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x96x12x12xf32>
    %extracted_slice_78 = tensor.extract_slice %874[0, 0, 0, 0] [1, 384, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x384x12x12xf32>
    %875 = "tosa.transpose"(%extracted_slice_76, %2) : (tensor<1x288x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x288xf32>
    %876 = linalg.generic {indexing_maps = [#map3, #map1, #map2, #map2, #map3], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%157, %cst_3, %158, %875 : tensor<1x25x25x288xf32>, tensor<3x3xf32>, tensor<1x12x12x288xf32>, tensor<1x12x12x288xf32>) outs(%cst_14 : tensor<1x25x25x288xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %out: f32):
      %1122 = arith.cmpf oge, %in, %in_98 : f32
      %1123 = arith.select %1122, %in_99, %cst_29 : f32
      %1124 = arith.addf %out, %1123 : f32
      linalg.yield %1124 : f32
    } -> tensor<1x25x25x288xf32>
    %877 = "tosa.transpose"(%876, %3) : (tensor<1x25x25x288xf32>, tensor<4xi64>) -> tensor<1x288x25x25xf32>
    %878 = "tosa.equal"(%155, %156) : (tensor<1x96x12x12xf32>, tensor<1x96x12x12xf32>) -> tensor<1x96x12x12xi1>
    %879 = "tosa.select"(%878, %extracted_slice_77, %1) : (tensor<1x96x12x12xi1>, tensor<1x96x12x12xf32>, tensor<f32>) -> tensor<1x96x12x12xf32>
    %880 = "tosa.mul"(%19, %879) {shift = 0 : i32} : (tensor<1x96x1x1xf32>, tensor<1x96x12x12xf32>) -> tensor<1x96x12x12xf32>
    %881 = "tosa.mul"(%154, %880) {shift = 0 : i32} : (tensor<1x96x1x1xf32>, tensor<1x96x12x12xf32>) -> tensor<1x96x12x12xf32>
    %882 = "tosa.transpose"(%881, %2) : (tensor<1x96x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x96xf32>
    %883 = "tosa.transpose"(%20, %4) : (tensor<96x3x3x96xf32>, tensor<4xi64>) -> tensor<96x3x3x96xf32>
    %884 = "tosa.transpose_conv2d"(%882, %883, %cst_15) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 25, 25, 96>, stride = array<i64: 2, 2>} : (tensor<1x12x12x96xf32>, tensor<96x3x3x96xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %885 = "tosa.transpose"(%884, %3) : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %886 = "tosa.equal"(%152, %153) : (tensor<1x96x25x25xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xi1>
    %887 = "tosa.select"(%886, %885, %1) : (tensor<1x96x25x25xi1>, tensor<1x96x25x25xf32>, tensor<f32>) -> tensor<1x96x25x25xf32>
    %888 = "tosa.mul"(%19, %887) {shift = 0 : i32} : (tensor<1x96x1x1xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %889 = "tosa.mul"(%151, %888) {shift = 0 : i32} : (tensor<1x96x1x1xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %890 = "tosa.transpose"(%889, %2) : (tensor<1x96x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x96xf32>
    %891 = "tosa.transpose"(%18, %4) : (tensor<96x3x3x64xf32>, tensor<4xi64>) -> tensor<64x3x3x96xf32>
    %892 = "tosa.transpose_conv2d"(%890, %891, %cst_16) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 25, 25, 64>, stride = array<i64: 1, 1>} : (tensor<1x25x25x96xf32>, tensor<64x3x3x96xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %893 = "tosa.transpose"(%892, %3) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %894 = "tosa.equal"(%149, %150) : (tensor<1x64x25x25xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xi1>
    %895 = "tosa.select"(%894, %893, %1) : (tensor<1x64x25x25xi1>, tensor<1x64x25x25xf32>, tensor<f32>) -> tensor<1x64x25x25xf32>
    %896 = "tosa.mul"(%9, %895) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %897 = "tosa.mul"(%148, %896) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %898 = "tosa.transpose"(%897, %2) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %899 = "tosa.transpose"(%24, %4) : (tensor<64x1x1x288xf32>, tensor<4xi64>) -> tensor<288x1x1x64xf32>
    %900 = "tosa.transpose_conv2d"(%898, %899, %cst_17) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 25, 25, 288>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<288x1x1x64xf32>, tensor<288xf32>) -> tensor<1x25x25x288xf32>
    %901 = "tosa.transpose"(%900, %3) : (tensor<1x25x25x288xf32>, tensor<4xi64>) -> tensor<1x288x25x25xf32>
    %902 = "tosa.add"(%877, %901) : (tensor<1x288x25x25xf32>, tensor<1x288x25x25xf32>) -> tensor<1x288x25x25xf32>
    %903 = "tosa.equal"(%146, %147) : (tensor<1x384x12x12xf32>, tensor<1x384x12x12xf32>) -> tensor<1x384x12x12xi1>
    %904 = "tosa.select"(%903, %extracted_slice_78, %1) : (tensor<1x384x12x12xi1>, tensor<1x384x12x12xf32>, tensor<f32>) -> tensor<1x384x12x12xf32>
    %905 = "tosa.mul"(%27, %904) {shift = 0 : i32} : (tensor<1x384x1x1xf32>, tensor<1x384x12x12xf32>) -> tensor<1x384x12x12xf32>
    %906 = "tosa.mul"(%145, %905) {shift = 0 : i32} : (tensor<1x384x1x1xf32>, tensor<1x384x12x12xf32>) -> tensor<1x384x12x12xf32>
    %907 = "tosa.transpose"(%906, %2) : (tensor<1x384x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x384xf32>
    %908 = "tosa.transpose"(%26, %4) : (tensor<384x3x3x288xf32>, tensor<4xi64>) -> tensor<288x3x3x384xf32>
    %909 = "tosa.transpose_conv2d"(%907, %908, %cst_17) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 25, 25, 288>, stride = array<i64: 2, 2>} : (tensor<1x12x12x384xf32>, tensor<288x3x3x384xf32>, tensor<288xf32>) -> tensor<1x25x25x288xf32>
    %910 = "tosa.transpose"(%909, %3) : (tensor<1x25x25x288xf32>, tensor<4xi64>) -> tensor<1x288x25x25xf32>
    %911 = "tosa.add"(%902, %910) : (tensor<1x288x25x25xf32>, tensor<1x288x25x25xf32>) -> tensor<1x288x25x25xf32>
    %extracted_slice_79 = tensor.extract_slice %911[0, 224, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x288x25x25xf32> to tensor<1x64x25x25xf32>
    %extracted_slice_80 = tensor.extract_slice %911[0, 128, 0, 0] [1, 96, 25, 25] [1, 1, 1, 1] : tensor<1x288x25x25xf32> to tensor<1x96x25x25xf32>
    %extracted_slice_81 = tensor.extract_slice %911[0, 64, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x288x25x25xf32> to tensor<1x64x25x25xf32>
    %extracted_slice_82 = tensor.extract_slice %911[0, 0, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x288x25x25xf32> to tensor<1x64x25x25xf32>
    %912 = "tosa.equal"(%143, %144) : (tensor<1x64x25x25xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xi1>
    %913 = "tosa.select"(%912, %extracted_slice_79, %1) : (tensor<1x64x25x25xi1>, tensor<1x64x25x25xf32>, tensor<f32>) -> tensor<1x64x25x25xf32>
    %914 = "tosa.mul"(%9, %913) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %915 = "tosa.mul"(%142, %914) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %916 = "tosa.transpose"(%915, %2) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %917 = "tosa.transpose_conv2d"(%916, %899, %cst_17) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 25, 25, 288>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<288x1x1x64xf32>, tensor<288xf32>) -> tensor<1x25x25x288xf32>
    %padded_83 = tensor.pad %141 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_29 : f32
    } : tensor<1x25x25x288xf32> to tensor<1x27x27x288xf32>
    %918 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%padded_83, %cst_3, %917 : tensor<1x27x27x288xf32>, tensor<3x3xf32>, tensor<1x25x25x288xf32>) outs(%cst_18 : tensor<1x27x27x288xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %out: f32):
      %1122 = arith.mulf %in_98, %cst_30 : f32
      %1123 = arith.addf %1122, %out : f32
      linalg.yield %1123 : f32
    } -> tensor<1x27x27x288xf32>
    %extracted_slice_84 = tensor.extract_slice %918[0, 1, 1, 0] [1, 25, 25, 288] [1, 1, 1, 1] : tensor<1x27x27x288xf32> to tensor<1x25x25x288xf32>
    %919 = "tosa.transpose"(%extracted_slice_84, %3) : (tensor<1x25x25x288xf32>, tensor<4xi64>) -> tensor<1x288x25x25xf32>
    %920 = "tosa.equal"(%139, %140) : (tensor<1x96x25x25xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xi1>
    %921 = "tosa.select"(%920, %extracted_slice_80, %1) : (tensor<1x96x25x25xi1>, tensor<1x96x25x25xf32>, tensor<f32>) -> tensor<1x96x25x25xf32>
    %922 = "tosa.mul"(%19, %921) {shift = 0 : i32} : (tensor<1x96x1x1xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %923 = "tosa.mul"(%138, %922) {shift = 0 : i32} : (tensor<1x96x1x1xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %924 = "tosa.transpose"(%923, %2) : (tensor<1x96x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x96xf32>
    %925 = "tosa.transpose_conv2d"(%924, %883, %cst_15) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 25, 25, 96>, stride = array<i64: 1, 1>} : (tensor<1x25x25x96xf32>, tensor<96x3x3x96xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %926 = "tosa.transpose"(%925, %3) : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %927 = "tosa.equal"(%136, %137) : (tensor<1x96x25x25xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xi1>
    %928 = "tosa.select"(%927, %926, %1) : (tensor<1x96x25x25xi1>, tensor<1x96x25x25xf32>, tensor<f32>) -> tensor<1x96x25x25xf32>
    %929 = "tosa.mul"(%19, %928) {shift = 0 : i32} : (tensor<1x96x1x1xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %930 = "tosa.mul"(%135, %929) {shift = 0 : i32} : (tensor<1x96x1x1xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %931 = "tosa.transpose"(%930, %2) : (tensor<1x96x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x96xf32>
    %932 = "tosa.transpose_conv2d"(%931, %891, %cst_16) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 25, 25, 64>, stride = array<i64: 1, 1>} : (tensor<1x25x25x96xf32>, tensor<64x3x3x96xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %933 = "tosa.transpose"(%932, %3) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %934 = "tosa.equal"(%133, %134) : (tensor<1x64x25x25xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xi1>
    %935 = "tosa.select"(%934, %933, %1) : (tensor<1x64x25x25xi1>, tensor<1x64x25x25xf32>, tensor<f32>) -> tensor<1x64x25x25xf32>
    %936 = "tosa.mul"(%9, %935) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %937 = "tosa.mul"(%132, %936) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %938 = "tosa.transpose"(%937, %2) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %939 = "tosa.transpose_conv2d"(%938, %899, %cst_17) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 25, 25, 288>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<288x1x1x64xf32>, tensor<288xf32>) -> tensor<1x25x25x288xf32>
    %940 = "tosa.transpose"(%939, %3) : (tensor<1x25x25x288xf32>, tensor<4xi64>) -> tensor<1x288x25x25xf32>
    %941 = "tosa.add"(%919, %940) : (tensor<1x288x25x25xf32>, tensor<1x288x25x25xf32>) -> tensor<1x288x25x25xf32>
    %942 = "tosa.equal"(%130, %131) : (tensor<1x64x25x25xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xi1>
    %943 = "tosa.select"(%942, %extracted_slice_81, %1) : (tensor<1x64x25x25xi1>, tensor<1x64x25x25xf32>, tensor<f32>) -> tensor<1x64x25x25xf32>
    %944 = "tosa.mul"(%9, %943) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %945 = "tosa.mul"(%129, %944) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %946 = "tosa.transpose"(%945, %2) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %947 = "tosa.transpose"(%17, %4) : (tensor<64x5x5x48xf32>, tensor<4xi64>) -> tensor<48x5x5x64xf32>
    %948 = "tosa.transpose_conv2d"(%946, %947, %cst_19) {out_pad = array<i64: -2, -2, -2, -2>, out_shape = array<i64: 1, 25, 25, 48>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<48x5x5x64xf32>, tensor<48xf32>) -> tensor<1x25x25x48xf32>
    %949 = "tosa.transpose"(%948, %3) : (tensor<1x25x25x48xf32>, tensor<4xi64>) -> tensor<1x48x25x25xf32>
    %950 = "tosa.equal"(%127, %128) : (tensor<1x48x25x25xf32>, tensor<1x48x25x25xf32>) -> tensor<1x48x25x25xi1>
    %951 = "tosa.select"(%950, %949, %1) : (tensor<1x48x25x25xi1>, tensor<1x48x25x25xf32>, tensor<f32>) -> tensor<1x48x25x25xf32>
    %952 = "tosa.mul"(%16, %951) {shift = 0 : i32} : (tensor<1x48x1x1xf32>, tensor<1x48x25x25xf32>) -> tensor<1x48x25x25xf32>
    %953 = "tosa.mul"(%126, %952) {shift = 0 : i32} : (tensor<1x48x1x1xf32>, tensor<1x48x25x25xf32>) -> tensor<1x48x25x25xf32>
    %954 = "tosa.transpose"(%953, %2) : (tensor<1x48x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x48xf32>
    %955 = "tosa.transpose"(%25, %4) : (tensor<48x1x1x288xf32>, tensor<4xi64>) -> tensor<288x1x1x48xf32>
    %956 = "tosa.transpose_conv2d"(%954, %955, %cst_17) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 25, 25, 288>, stride = array<i64: 1, 1>} : (tensor<1x25x25x48xf32>, tensor<288x1x1x48xf32>, tensor<288xf32>) -> tensor<1x25x25x288xf32>
    %957 = "tosa.transpose"(%956, %3) : (tensor<1x25x25x288xf32>, tensor<4xi64>) -> tensor<1x288x25x25xf32>
    %958 = "tosa.add"(%941, %957) : (tensor<1x288x25x25xf32>, tensor<1x288x25x25xf32>) -> tensor<1x288x25x25xf32>
    %959 = "tosa.equal"(%124, %125) : (tensor<1x64x25x25xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xi1>
    %960 = "tosa.select"(%959, %extracted_slice_82, %1) : (tensor<1x64x25x25xi1>, tensor<1x64x25x25xf32>, tensor<f32>) -> tensor<1x64x25x25xf32>
    %961 = "tosa.mul"(%9, %960) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %962 = "tosa.mul"(%123, %961) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %963 = "tosa.transpose"(%962, %2) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %964 = "tosa.transpose_conv2d"(%963, %899, %cst_17) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 25, 25, 288>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<288x1x1x64xf32>, tensor<288xf32>) -> tensor<1x25x25x288xf32>
    %965 = "tosa.transpose"(%964, %3) : (tensor<1x25x25x288xf32>, tensor<4xi64>) -> tensor<1x288x25x25xf32>
    %966 = "tosa.add"(%958, %965) : (tensor<1x288x25x25xf32>, tensor<1x288x25x25xf32>) -> tensor<1x288x25x25xf32>
    %extracted_slice_85 = tensor.extract_slice %966[0, 224, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x288x25x25xf32> to tensor<1x64x25x25xf32>
    %extracted_slice_86 = tensor.extract_slice %966[0, 128, 0, 0] [1, 96, 25, 25] [1, 1, 1, 1] : tensor<1x288x25x25xf32> to tensor<1x96x25x25xf32>
    %extracted_slice_87 = tensor.extract_slice %966[0, 64, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x288x25x25xf32> to tensor<1x64x25x25xf32>
    %extracted_slice_88 = tensor.extract_slice %966[0, 0, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x288x25x25xf32> to tensor<1x64x25x25xf32>
    %967 = "tosa.equal"(%121, %122) : (tensor<1x64x25x25xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xi1>
    %968 = "tosa.select"(%967, %extracted_slice_85, %1) : (tensor<1x64x25x25xi1>, tensor<1x64x25x25xf32>, tensor<f32>) -> tensor<1x64x25x25xf32>
    %969 = "tosa.mul"(%9, %968) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %970 = "tosa.mul"(%120, %969) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %971 = "tosa.transpose"(%970, %2) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %972 = "tosa.transpose"(%22, %4) : (tensor<64x1x1x256xf32>, tensor<4xi64>) -> tensor<256x1x1x64xf32>
    %973 = "tosa.transpose_conv2d"(%971, %972, %cst_20) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 25, 25, 256>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x25x25x256xf32>
    %padded_89 = tensor.pad %119 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_29 : f32
    } : tensor<1x25x25x256xf32> to tensor<1x27x27x256xf32>
    %974 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%padded_89, %cst_3, %973 : tensor<1x27x27x256xf32>, tensor<3x3xf32>, tensor<1x25x25x256xf32>) outs(%cst_21 : tensor<1x27x27x256xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %out: f32):
      %1122 = arith.mulf %in_98, %cst_30 : f32
      %1123 = arith.addf %1122, %out : f32
      linalg.yield %1123 : f32
    } -> tensor<1x27x27x256xf32>
    %extracted_slice_90 = tensor.extract_slice %974[0, 1, 1, 0] [1, 25, 25, 256] [1, 1, 1, 1] : tensor<1x27x27x256xf32> to tensor<1x25x25x256xf32>
    %975 = "tosa.transpose"(%extracted_slice_90, %3) : (tensor<1x25x25x256xf32>, tensor<4xi64>) -> tensor<1x256x25x25xf32>
    %976 = "tosa.equal"(%117, %118) : (tensor<1x96x25x25xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xi1>
    %977 = "tosa.select"(%976, %extracted_slice_86, %1) : (tensor<1x96x25x25xi1>, tensor<1x96x25x25xf32>, tensor<f32>) -> tensor<1x96x25x25xf32>
    %978 = "tosa.mul"(%19, %977) {shift = 0 : i32} : (tensor<1x96x1x1xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %979 = "tosa.mul"(%116, %978) {shift = 0 : i32} : (tensor<1x96x1x1xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %980 = "tosa.transpose"(%979, %2) : (tensor<1x96x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x96xf32>
    %981 = "tosa.transpose_conv2d"(%980, %883, %cst_15) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 25, 25, 96>, stride = array<i64: 1, 1>} : (tensor<1x25x25x96xf32>, tensor<96x3x3x96xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %982 = "tosa.transpose"(%981, %3) : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %983 = "tosa.equal"(%114, %115) : (tensor<1x96x25x25xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xi1>
    %984 = "tosa.select"(%983, %982, %1) : (tensor<1x96x25x25xi1>, tensor<1x96x25x25xf32>, tensor<f32>) -> tensor<1x96x25x25xf32>
    %985 = "tosa.mul"(%19, %984) {shift = 0 : i32} : (tensor<1x96x1x1xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %986 = "tosa.mul"(%113, %985) {shift = 0 : i32} : (tensor<1x96x1x1xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %987 = "tosa.transpose"(%986, %2) : (tensor<1x96x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x96xf32>
    %988 = "tosa.transpose_conv2d"(%987, %891, %cst_16) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 25, 25, 64>, stride = array<i64: 1, 1>} : (tensor<1x25x25x96xf32>, tensor<64x3x3x96xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %989 = "tosa.transpose"(%988, %3) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %990 = "tosa.equal"(%111, %112) : (tensor<1x64x25x25xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xi1>
    %991 = "tosa.select"(%990, %989, %1) : (tensor<1x64x25x25xi1>, tensor<1x64x25x25xf32>, tensor<f32>) -> tensor<1x64x25x25xf32>
    %992 = "tosa.mul"(%9, %991) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %993 = "tosa.mul"(%110, %992) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %994 = "tosa.transpose"(%993, %2) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %995 = "tosa.transpose_conv2d"(%994, %972, %cst_20) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 25, 25, 256>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x25x25x256xf32>
    %996 = "tosa.transpose"(%995, %3) : (tensor<1x25x25x256xf32>, tensor<4xi64>) -> tensor<1x256x25x25xf32>
    %997 = "tosa.add"(%975, %996) : (tensor<1x256x25x25xf32>, tensor<1x256x25x25xf32>) -> tensor<1x256x25x25xf32>
    %998 = "tosa.equal"(%108, %109) : (tensor<1x64x25x25xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xi1>
    %999 = "tosa.select"(%998, %extracted_slice_87, %1) : (tensor<1x64x25x25xi1>, tensor<1x64x25x25xf32>, tensor<f32>) -> tensor<1x64x25x25xf32>
    %1000 = "tosa.mul"(%9, %999) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %1001 = "tosa.mul"(%107, %1000) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %1002 = "tosa.transpose"(%1001, %2) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %1003 = "tosa.transpose_conv2d"(%1002, %947, %cst_19) {out_pad = array<i64: -2, -2, -2, -2>, out_shape = array<i64: 1, 25, 25, 48>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<48x5x5x64xf32>, tensor<48xf32>) -> tensor<1x25x25x48xf32>
    %1004 = "tosa.transpose"(%1003, %3) : (tensor<1x25x25x48xf32>, tensor<4xi64>) -> tensor<1x48x25x25xf32>
    %1005 = "tosa.equal"(%105, %106) : (tensor<1x48x25x25xf32>, tensor<1x48x25x25xf32>) -> tensor<1x48x25x25xi1>
    %1006 = "tosa.select"(%1005, %1004, %1) : (tensor<1x48x25x25xi1>, tensor<1x48x25x25xf32>, tensor<f32>) -> tensor<1x48x25x25xf32>
    %1007 = "tosa.mul"(%16, %1006) {shift = 0 : i32} : (tensor<1x48x1x1xf32>, tensor<1x48x25x25xf32>) -> tensor<1x48x25x25xf32>
    %1008 = "tosa.mul"(%104, %1007) {shift = 0 : i32} : (tensor<1x48x1x1xf32>, tensor<1x48x25x25xf32>) -> tensor<1x48x25x25xf32>
    %1009 = "tosa.transpose"(%1008, %2) : (tensor<1x48x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x48xf32>
    %1010 = "tosa.transpose"(%23, %4) : (tensor<48x1x1x256xf32>, tensor<4xi64>) -> tensor<256x1x1x48xf32>
    %1011 = "tosa.transpose_conv2d"(%1009, %1010, %cst_20) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 25, 25, 256>, stride = array<i64: 1, 1>} : (tensor<1x25x25x48xf32>, tensor<256x1x1x48xf32>, tensor<256xf32>) -> tensor<1x25x25x256xf32>
    %1012 = "tosa.transpose"(%1011, %3) : (tensor<1x25x25x256xf32>, tensor<4xi64>) -> tensor<1x256x25x25xf32>
    %1013 = "tosa.add"(%997, %1012) : (tensor<1x256x25x25xf32>, tensor<1x256x25x25xf32>) -> tensor<1x256x25x25xf32>
    %1014 = "tosa.equal"(%102, %103) : (tensor<1x64x25x25xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xi1>
    %1015 = "tosa.select"(%1014, %extracted_slice_88, %1) : (tensor<1x64x25x25xi1>, tensor<1x64x25x25xf32>, tensor<f32>) -> tensor<1x64x25x25xf32>
    %1016 = "tosa.mul"(%9, %1015) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %1017 = "tosa.mul"(%101, %1016) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %1018 = "tosa.transpose"(%1017, %2) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %1019 = "tosa.transpose_conv2d"(%1018, %972, %cst_20) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 25, 25, 256>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x25x25x256xf32>
    %1020 = "tosa.transpose"(%1019, %3) : (tensor<1x25x25x256xf32>, tensor<4xi64>) -> tensor<1x256x25x25xf32>
    %1021 = "tosa.add"(%1013, %1020) : (tensor<1x256x25x25xf32>, tensor<1x256x25x25xf32>) -> tensor<1x256x25x25xf32>
    %extracted_slice_91 = tensor.extract_slice %1021[0, 224, 0, 0] [1, 32, 25, 25] [1, 1, 1, 1] : tensor<1x256x25x25xf32> to tensor<1x32x25x25xf32>
    %extracted_slice_92 = tensor.extract_slice %1021[0, 128, 0, 0] [1, 96, 25, 25] [1, 1, 1, 1] : tensor<1x256x25x25xf32> to tensor<1x96x25x25xf32>
    %extracted_slice_93 = tensor.extract_slice %1021[0, 64, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x256x25x25xf32> to tensor<1x64x25x25xf32>
    %extracted_slice_94 = tensor.extract_slice %1021[0, 0, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x256x25x25xf32> to tensor<1x64x25x25xf32>
    %1022 = "tosa.equal"(%99, %100) : (tensor<1x32x25x25xf32>, tensor<1x32x25x25xf32>) -> tensor<1x32x25x25xi1>
    %1023 = "tosa.select"(%1022, %extracted_slice_91, %1) : (tensor<1x32x25x25xi1>, tensor<1x32x25x25xf32>, tensor<f32>) -> tensor<1x32x25x25xf32>
    %1024 = "tosa.mul"(%6, %1023) {shift = 0 : i32} : (tensor<1x32x1x1xf32>, tensor<1x32x25x25xf32>) -> tensor<1x32x25x25xf32>
    %1025 = "tosa.mul"(%98, %1024) {shift = 0 : i32} : (tensor<1x32x1x1xf32>, tensor<1x32x25x25xf32>) -> tensor<1x32x25x25xf32>
    %1026 = "tosa.transpose"(%1025, %2) : (tensor<1x32x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x32xf32>
    %1027 = "tosa.transpose"(%21, %4) : (tensor<32x1x1x192xf32>, tensor<4xi64>) -> tensor<192x1x1x32xf32>
    %1028 = "tosa.transpose_conv2d"(%1026, %1027, %cst_9) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 25, 25, 192>, stride = array<i64: 1, 1>} : (tensor<1x25x25x32xf32>, tensor<192x1x1x32xf32>, tensor<192xf32>) -> tensor<1x25x25x192xf32>
    %padded_95 = tensor.pad %97 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_29 : f32
    } : tensor<1x25x25x192xf32> to tensor<1x27x27x192xf32>
    %1029 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%padded_95, %cst_3, %1028 : tensor<1x27x27x192xf32>, tensor<3x3xf32>, tensor<1x25x25x192xf32>) outs(%cst_22 : tensor<1x27x27x192xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %out: f32):
      %1122 = arith.mulf %in_98, %cst_30 : f32
      %1123 = arith.addf %1122, %out : f32
      linalg.yield %1123 : f32
    } -> tensor<1x27x27x192xf32>
    %extracted_slice_96 = tensor.extract_slice %1029[0, 1, 1, 0] [1, 25, 25, 192] [1, 1, 1, 1] : tensor<1x27x27x192xf32> to tensor<1x25x25x192xf32>
    %1030 = "tosa.transpose"(%extracted_slice_96, %3) : (tensor<1x25x25x192xf32>, tensor<4xi64>) -> tensor<1x192x25x25xf32>
    %1031 = "tosa.equal"(%95, %96) : (tensor<1x96x25x25xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xi1>
    %1032 = "tosa.select"(%1031, %extracted_slice_92, %1) : (tensor<1x96x25x25xi1>, tensor<1x96x25x25xf32>, tensor<f32>) -> tensor<1x96x25x25xf32>
    %1033 = "tosa.mul"(%19, %1032) {shift = 0 : i32} : (tensor<1x96x1x1xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %1034 = "tosa.mul"(%94, %1033) {shift = 0 : i32} : (tensor<1x96x1x1xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %1035 = "tosa.transpose"(%1034, %2) : (tensor<1x96x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x96xf32>
    %1036 = "tosa.transpose_conv2d"(%1035, %883, %cst_15) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 25, 25, 96>, stride = array<i64: 1, 1>} : (tensor<1x25x25x96xf32>, tensor<96x3x3x96xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %1037 = "tosa.transpose"(%1036, %3) : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %1038 = "tosa.equal"(%92, %93) : (tensor<1x96x25x25xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xi1>
    %1039 = "tosa.select"(%1038, %1037, %1) : (tensor<1x96x25x25xi1>, tensor<1x96x25x25xf32>, tensor<f32>) -> tensor<1x96x25x25xf32>
    %1040 = "tosa.mul"(%19, %1039) {shift = 0 : i32} : (tensor<1x96x1x1xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %1041 = "tosa.mul"(%91, %1040) {shift = 0 : i32} : (tensor<1x96x1x1xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %1042 = "tosa.transpose"(%1041, %2) : (tensor<1x96x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x96xf32>
    %1043 = "tosa.transpose_conv2d"(%1042, %891, %cst_16) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 25, 25, 64>, stride = array<i64: 1, 1>} : (tensor<1x25x25x96xf32>, tensor<64x3x3x96xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %1044 = "tosa.transpose"(%1043, %3) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %1045 = "tosa.equal"(%89, %90) : (tensor<1x64x25x25xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xi1>
    %1046 = "tosa.select"(%1045, %1044, %1) : (tensor<1x64x25x25xi1>, tensor<1x64x25x25xf32>, tensor<f32>) -> tensor<1x64x25x25xf32>
    %1047 = "tosa.mul"(%9, %1046) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %1048 = "tosa.mul"(%88, %1047) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %1049 = "tosa.transpose"(%1048, %2) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %1050 = "tosa.transpose"(%14, %4) : (tensor<64x1x1x192xf32>, tensor<4xi64>) -> tensor<192x1x1x64xf32>
    %1051 = "tosa.transpose_conv2d"(%1049, %1050, %cst_9) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 25, 25, 192>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<192x1x1x64xf32>, tensor<192xf32>) -> tensor<1x25x25x192xf32>
    %1052 = "tosa.transpose"(%1051, %3) : (tensor<1x25x25x192xf32>, tensor<4xi64>) -> tensor<1x192x25x25xf32>
    %1053 = "tosa.add"(%1030, %1052) : (tensor<1x192x25x25xf32>, tensor<1x192x25x25xf32>) -> tensor<1x192x25x25xf32>
    %1054 = "tosa.equal"(%86, %87) : (tensor<1x64x25x25xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xi1>
    %1055 = "tosa.select"(%1054, %extracted_slice_93, %1) : (tensor<1x64x25x25xi1>, tensor<1x64x25x25xf32>, tensor<f32>) -> tensor<1x64x25x25xf32>
    %1056 = "tosa.mul"(%9, %1055) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %1057 = "tosa.mul"(%85, %1056) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %1058 = "tosa.transpose"(%1057, %2) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %1059 = "tosa.transpose_conv2d"(%1058, %947, %cst_19) {out_pad = array<i64: -2, -2, -2, -2>, out_shape = array<i64: 1, 25, 25, 48>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<48x5x5x64xf32>, tensor<48xf32>) -> tensor<1x25x25x48xf32>
    %1060 = "tosa.transpose"(%1059, %3) : (tensor<1x25x25x48xf32>, tensor<4xi64>) -> tensor<1x48x25x25xf32>
    %1061 = "tosa.equal"(%83, %84) : (tensor<1x48x25x25xf32>, tensor<1x48x25x25xf32>) -> tensor<1x48x25x25xi1>
    %1062 = "tosa.select"(%1061, %1060, %1) : (tensor<1x48x25x25xi1>, tensor<1x48x25x25xf32>, tensor<f32>) -> tensor<1x48x25x25xf32>
    %1063 = "tosa.mul"(%16, %1062) {shift = 0 : i32} : (tensor<1x48x1x1xf32>, tensor<1x48x25x25xf32>) -> tensor<1x48x25x25xf32>
    %1064 = "tosa.mul"(%82, %1063) {shift = 0 : i32} : (tensor<1x48x1x1xf32>, tensor<1x48x25x25xf32>) -> tensor<1x48x25x25xf32>
    %1065 = "tosa.transpose"(%1064, %2) : (tensor<1x48x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x48xf32>
    %1066 = "tosa.transpose"(%15, %4) : (tensor<48x1x1x192xf32>, tensor<4xi64>) -> tensor<192x1x1x48xf32>
    %1067 = "tosa.transpose_conv2d"(%1065, %1066, %cst_9) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 25, 25, 192>, stride = array<i64: 1, 1>} : (tensor<1x25x25x48xf32>, tensor<192x1x1x48xf32>, tensor<192xf32>) -> tensor<1x25x25x192xf32>
    %1068 = "tosa.transpose"(%1067, %3) : (tensor<1x25x25x192xf32>, tensor<4xi64>) -> tensor<1x192x25x25xf32>
    %1069 = "tosa.add"(%1053, %1068) : (tensor<1x192x25x25xf32>, tensor<1x192x25x25xf32>) -> tensor<1x192x25x25xf32>
    %1070 = "tosa.equal"(%80, %81) : (tensor<1x64x25x25xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xi1>
    %1071 = "tosa.select"(%1070, %extracted_slice_94, %1) : (tensor<1x64x25x25xi1>, tensor<1x64x25x25xf32>, tensor<f32>) -> tensor<1x64x25x25xf32>
    %1072 = "tosa.mul"(%9, %1071) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %1073 = "tosa.mul"(%79, %1072) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %1074 = "tosa.transpose"(%1073, %2) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %1075 = "tosa.transpose_conv2d"(%1074, %1050, %cst_9) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 25, 25, 192>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<192x1x1x64xf32>, tensor<192xf32>) -> tensor<1x25x25x192xf32>
    %1076 = "tosa.transpose"(%1075, %3) : (tensor<1x25x25x192xf32>, tensor<4xi64>) -> tensor<1x192x25x25xf32>
    %1077 = "tosa.add"(%1069, %1076) : (tensor<1x192x25x25xf32>, tensor<1x192x25x25xf32>) -> tensor<1x192x25x25xf32>
    %1078 = "tosa.transpose"(%1077, %2) : (tensor<1x192x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x192xf32>
    %1079 = linalg.generic {indexing_maps = [#map3, #map1, #map2, #map2, #map3], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%77, %cst_3, %78, %1078 : tensor<1x52x52x192xf32>, tensor<3x3xf32>, tensor<1x25x25x192xf32>, tensor<1x25x25x192xf32>) outs(%cst_23 : tensor<1x52x52x192xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %out: f32):
      %1122 = arith.cmpf oge, %in, %in_98 : f32
      %1123 = arith.select %1122, %in_99, %cst_29 : f32
      %1124 = arith.addf %out, %1123 : f32
      linalg.yield %1124 : f32
    } -> tensor<1x52x52x192xf32>
    %1080 = "tosa.transpose"(%1079, %3) : (tensor<1x52x52x192xf32>, tensor<4xi64>) -> tensor<1x192x52x52xf32>
    %1081 = "tosa.equal"(%75, %76) : (tensor<1x192x52x52xf32>, tensor<1x192x52x52xf32>) -> tensor<1x192x52x52xi1>
    %1082 = "tosa.select"(%1081, %1080, %1) : (tensor<1x192x52x52xi1>, tensor<1x192x52x52xf32>, tensor<f32>) -> tensor<1x192x52x52xf32>
    %1083 = "tosa.mul"(%13, %1082) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x52x52xf32>) -> tensor<1x192x52x52xf32>
    %1084 = "tosa.mul"(%74, %1083) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x52x52xf32>) -> tensor<1x192x52x52xf32>
    %1085 = "tosa.transpose"(%1084, %2) : (tensor<1x192x52x52xf32>, tensor<4xi64>) -> tensor<1x52x52x192xf32>
    %1086 = "tosa.transpose"(%12, %4) : (tensor<192x3x3x80xf32>, tensor<4xi64>) -> tensor<80x3x3x192xf32>
    %1087 = "tosa.transpose_conv2d"(%1085, %1086, %cst_24) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 54, 54, 80>, stride = array<i64: 1, 1>} : (tensor<1x52x52x192xf32>, tensor<80x3x3x192xf32>, tensor<80xf32>) -> tensor<1x54x54x80xf32>
    %1088 = "tosa.transpose"(%1087, %3) : (tensor<1x54x54x80xf32>, tensor<4xi64>) -> tensor<1x80x54x54xf32>
    %1089 = "tosa.equal"(%72, %73) : (tensor<1x80x54x54xf32>, tensor<1x80x54x54xf32>) -> tensor<1x80x54x54xi1>
    %1090 = "tosa.select"(%1089, %1088, %1) : (tensor<1x80x54x54xi1>, tensor<1x80x54x54xf32>, tensor<f32>) -> tensor<1x80x54x54xf32>
    %1091 = "tosa.mul"(%11, %1090) {shift = 0 : i32} : (tensor<1x80x1x1xf32>, tensor<1x80x54x54xf32>) -> tensor<1x80x54x54xf32>
    %1092 = "tosa.mul"(%71, %1091) {shift = 0 : i32} : (tensor<1x80x1x1xf32>, tensor<1x80x54x54xf32>) -> tensor<1x80x54x54xf32>
    %1093 = "tosa.transpose"(%1092, %2) : (tensor<1x80x54x54xf32>, tensor<4xi64>) -> tensor<1x54x54x80xf32>
    %1094 = "tosa.transpose"(%10, %4) : (tensor<80x1x1x64xf32>, tensor<4xi64>) -> tensor<64x1x1x80xf32>
    %1095 = "tosa.transpose_conv2d"(%1093, %1094, %cst_16) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 54, 54, 64>, stride = array<i64: 1, 1>} : (tensor<1x54x54x80xf32>, tensor<64x1x1x80xf32>, tensor<64xf32>) -> tensor<1x54x54x64xf32>
    %1096 = linalg.generic {indexing_maps = [#map3, #map1, #map2, #map2, #map3], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%69, %cst_3, %70, %1095 : tensor<1x109x109x64xf32>, tensor<3x3xf32>, tensor<1x54x54x64xf32>, tensor<1x54x54x64xf32>) outs(%cst_25 : tensor<1x109x109x64xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %out: f32):
      %1122 = arith.cmpf oge, %in, %in_98 : f32
      %1123 = arith.select %1122, %in_99, %cst_29 : f32
      %1124 = arith.addf %out, %1123 : f32
      linalg.yield %1124 : f32
    } -> tensor<1x109x109x64xf32>
    %1097 = "tosa.transpose"(%1096, %3) : (tensor<1x109x109x64xf32>, tensor<4xi64>) -> tensor<1x64x109x109xf32>
    %1098 = "tosa.equal"(%67, %68) : (tensor<1x64x109x109xf32>, tensor<1x64x109x109xf32>) -> tensor<1x64x109x109xi1>
    %1099 = "tosa.select"(%1098, %1097, %1) : (tensor<1x64x109x109xi1>, tensor<1x64x109x109xf32>, tensor<f32>) -> tensor<1x64x109x109xf32>
    %1100 = "tosa.mul"(%9, %1099) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x109x109xf32>) -> tensor<1x64x109x109xf32>
    %1101 = "tosa.mul"(%66, %1100) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x109x109xf32>) -> tensor<1x64x109x109xf32>
    %1102 = "tosa.transpose"(%1101, %2) : (tensor<1x64x109x109xf32>, tensor<4xi64>) -> tensor<1x109x109x64xf32>
    %1103 = "tosa.transpose"(%8, %4) : (tensor<64x3x3x32xf32>, tensor<4xi64>) -> tensor<32x3x3x64xf32>
    %1104 = "tosa.transpose_conv2d"(%1102, %1103, %cst_26) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 109, 109, 32>, stride = array<i64: 1, 1>} : (tensor<1x109x109x64xf32>, tensor<32x3x3x64xf32>, tensor<32xf32>) -> tensor<1x109x109x32xf32>
    %1105 = "tosa.transpose"(%1104, %3) : (tensor<1x109x109x32xf32>, tensor<4xi64>) -> tensor<1x32x109x109xf32>
    %1106 = "tosa.equal"(%64, %65) : (tensor<1x32x109x109xf32>, tensor<1x32x109x109xf32>) -> tensor<1x32x109x109xi1>
    %1107 = "tosa.select"(%1106, %1105, %1) : (tensor<1x32x109x109xi1>, tensor<1x32x109x109xf32>, tensor<f32>) -> tensor<1x32x109x109xf32>
    %1108 = "tosa.mul"(%6, %1107) {shift = 0 : i32} : (tensor<1x32x1x1xf32>, tensor<1x32x109x109xf32>) -> tensor<1x32x109x109xf32>
    %1109 = "tosa.mul"(%63, %1108) {shift = 0 : i32} : (tensor<1x32x1x1xf32>, tensor<1x32x109x109xf32>) -> tensor<1x32x109x109xf32>
    %1110 = "tosa.transpose"(%1109, %2) : (tensor<1x32x109x109xf32>, tensor<4xi64>) -> tensor<1x109x109x32xf32>
    %1111 = "tosa.transpose"(%7, %4) : (tensor<32x3x3x32xf32>, tensor<4xi64>) -> tensor<32x3x3x32xf32>
    %1112 = "tosa.transpose_conv2d"(%1110, %1111, %cst_26) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 111, 111, 32>, stride = array<i64: 1, 1>} : (tensor<1x109x109x32xf32>, tensor<32x3x3x32xf32>, tensor<32xf32>) -> tensor<1x111x111x32xf32>
    %1113 = "tosa.transpose"(%1112, %3) : (tensor<1x111x111x32xf32>, tensor<4xi64>) -> tensor<1x32x111x111xf32>
    %1114 = "tosa.equal"(%61, %62) : (tensor<1x32x111x111xf32>, tensor<1x32x111x111xf32>) -> tensor<1x32x111x111xi1>
    %1115 = "tosa.select"(%1114, %1113, %1) : (tensor<1x32x111x111xi1>, tensor<1x32x111x111xf32>, tensor<f32>) -> tensor<1x32x111x111xf32>
    %1116 = "tosa.mul"(%6, %1115) {shift = 0 : i32} : (tensor<1x32x1x1xf32>, tensor<1x32x111x111xf32>) -> tensor<1x32x111x111xf32>
    %1117 = "tosa.mul"(%60, %1116) {shift = 0 : i32} : (tensor<1x32x1x1xf32>, tensor<1x32x111x111xf32>) -> tensor<1x32x111x111xf32>
    %1118 = "tosa.transpose"(%1117, %2) : (tensor<1x32x111x111xf32>, tensor<4xi64>) -> tensor<1x111x111x32xf32>
    %1119 = "tosa.transpose"(%5, %4) : (tensor<32x3x3x3xf32>, tensor<4xi64>) -> tensor<3x3x3x32xf32>
    %1120 = "tosa.transpose_conv2d"(%1118, %1119, %cst_27) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 224, 224, 3>, stride = array<i64: 2, 2>} : (tensor<1x111x111x32xf32>, tensor<3x3x3x32xf32>, tensor<3xf32>) -> tensor<1x224x224x3xf32>
    %1121 = "tosa.transpose"(%1120, %3) : (tensor<1x224x224x3xf32>, tensor<4xi64>) -> tensor<1x3x224x224xf32>
    return %1121 : tensor<1x3x224x224xf32>
  }
}

