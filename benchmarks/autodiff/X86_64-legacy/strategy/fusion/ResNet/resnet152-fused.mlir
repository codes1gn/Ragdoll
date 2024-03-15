#map = affine_map<(d0, d1, d2, d3) -> (d0, d3, d1, d2)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d2, d3, d1)>
#map3 = affine_map<(d0, d1, d2, d3) -> (d0, d1)>
#map4 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map5 = affine_map<(d0, d1, d2) -> (d0, d2, d1)>
#map6 = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>
#map7 = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2)>
#map8 = affine_map<(d0, d1, d2, d3) -> (d0, d3)>
#map9 = affine_map<(d0, d1, d2, d3) -> (d3)>
#map10 = affine_map<(d0, d1, d2, d3) -> (d3, d1, d2, d0)>
#map11 = affine_map<(d0, d1, d2, d3) -> (d1)>
#map12 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d3, d4, d1, d5, d2, d0)>
#map13 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3, d4, d5)>
#map14 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d2, d3, d0, d4, d1, d5)>
#map15 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d3, d2, d4, d5)>
#map16 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d2, d4, d3, d5, d1)>
#map17 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1)>
#map18 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d1)>
#map19 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d2, d3, d4, d5, d1)>
#map20 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map21 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map22 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
#map23 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d3)>
module attributes {torch.debug_module_name = "ResNet"} {
  ml_program.global private mutable @global1337 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global1336 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global1328 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global1327 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global1320 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global1319 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global1312 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global1311 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global1303 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global1302 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global1295 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global1294 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global1287 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global1286 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global1276 : tensor<1x2048x1x1xf32>
  ml_program.global private mutable @global1270 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global1269 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global1262 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global1261 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global1254 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global1253 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global1245 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1244 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1237 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1236 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1229 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global1228 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global1220 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1219 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1212 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1211 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1204 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global1203 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global1195 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1194 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1187 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1186 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1179 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global1178 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global1170 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1169 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1162 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1161 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1154 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global1153 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global1145 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1144 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1137 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1136 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1129 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global1128 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global1120 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1119 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1112 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1111 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1104 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global1103 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global1095 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1094 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1087 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1086 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1079 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global1078 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global1070 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1069 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1062 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1061 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1054 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global1053 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global1045 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1044 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1037 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1036 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1029 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global1028 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global1020 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1019 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1012 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1011 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global1004 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global1003 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global995 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global994 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global987 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global986 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global979 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global978 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global970 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global969 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global962 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global961 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global954 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global953 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global945 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global944 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global937 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global936 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global929 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global928 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global920 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global919 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global912 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global911 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global904 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global903 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global895 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global894 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global887 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global886 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global879 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global878 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global870 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global869 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global862 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global861 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global854 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global853 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global845 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global844 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global837 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global836 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global829 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global828 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global820 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global819 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global812 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global811 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global804 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global803 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global795 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global794 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global787 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global786 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global779 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global778 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global770 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global769 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global762 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global761 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global754 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global753 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global745 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global744 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global737 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global736 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global729 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global728 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global720 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global719 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global712 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global711 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global704 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global703 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global695 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global694 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global687 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global686 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global679 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global678 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global670 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global669 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global662 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global661 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global654 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global653 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global645 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global644 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global637 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global636 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global629 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global628 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global620 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global619 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global612 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global611 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global604 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global603 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global595 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global594 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global587 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global586 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global579 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global578 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global570 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global569 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global562 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global561 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global554 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global553 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global545 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global544 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global537 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global536 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global529 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global528 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global520 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global519 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global512 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global511 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global504 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global503 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global495 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global494 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global487 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global486 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global479 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global478 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global470 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global469 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global462 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global461 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global454 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global453 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global445 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global444 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global437 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global436 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global429 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global428 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global420 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global419 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global412 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global411 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global404 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global403 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global395 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global394 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global387 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global386 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global379 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global378 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global368 : tensor<1x1024x1x1xf32>
  ml_program.global private mutable @global362 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global361 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global354 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global353 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global346 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global345 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global337 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global336 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global329 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global328 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global321 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global320 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global312 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global311 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global304 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global303 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global296 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global295 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global287 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global286 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global279 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global278 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global271 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global270 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global262 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global261 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global254 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global253 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global246 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global245 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global237 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global236 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global229 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global228 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global221 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global220 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global212 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global211 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global204 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global203 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global196 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global195 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global187 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global186 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global179 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global178 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global171 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global170 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global160 : tensor<1x512x1x1xf32>
  ml_program.global private mutable @global154 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global153 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global146 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global145 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global142 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global136 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global135 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global127 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global126 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global119 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global118 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global111 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global110 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global102 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global101 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global94 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global93 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global86 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global85 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global75 : tensor<1x256x1x1xf32>
  ml_program.global private mutable @global69 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global68 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global61 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global60 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global54 : tensor<1x56x56x64xf32>
  ml_program.global private mutable @global53 : tensor<1x112x112x64xf32>
  ml_program.global private mutable @global52 : tensor<1x64x112x112xf32>
  ml_program.global private mutable @global51 : tensor<1x64x112x112xf32>
  ml_program.global private mutable @global48 : tensor<1x64x1x1xf32>
  ml_program.global private mutable @global42 : tensor<64x7x7x3xf32>
  ml_program.global private mutable @global41 : tensor<1x64x1x1xf32>
  ml_program.global private mutable @global39 : tensor<64x1x1x64xf32>
  ml_program.global private mutable @global38 : tensor<64x3x3x64xf32>
  ml_program.global private mutable @global37 : tensor<256x1x1x64xf32>
  ml_program.global private mutable @global36 : tensor<1x256x1x1xf32>
  ml_program.global private mutable @global34 : tensor<64x1x1x256xf32>
  ml_program.global private mutable @global33 : tensor<128x1x1x256xf32>
  ml_program.global private mutable @global32 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global30 : tensor<128x3x3x128xf32>
  ml_program.global private mutable @global29 : tensor<512x1x1x128xf32>
  ml_program.global private mutable @global28 : tensor<1x512x1x1xf32>
  ml_program.global private mutable @global26 : tensor<512x1x1x256xf32>
  ml_program.global private mutable @global25 : tensor<128x1x1x512xf32>
  ml_program.global private mutable @global24 : tensor<256x1x1x512xf32>
  ml_program.global private mutable @global23 : tensor<256x3x3x256xf32>
  ml_program.global private mutable @global22 : tensor<1024x1x1x256xf32>
  ml_program.global private mutable @global21 : tensor<1x1024x1x1xf32>
  ml_program.global private mutable @global19 : tensor<1024x1x1x512xf32>
  ml_program.global private mutable @global18 : tensor<256x1x1x1024xf32>
  ml_program.global private mutable @global17 : tensor<512x1x1x1024xf32>
  ml_program.global private mutable @global16 : tensor<512x3x3x512xf32>
  ml_program.global private mutable @global15 : tensor<2048x1x1x512xf32>
  ml_program.global private mutable @global14 : tensor<1x2048x1x1xf32>
  ml_program.global private mutable @global12 : tensor<2048x1x1x1024xf32>
  ml_program.global private mutable @global11 : tensor<512x1x1x2048xf32>
  ml_program.global private mutable @global10 : tensor<1x2048x1000xf32>
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %cst = arith.constant 7.777000e-02 : f32
    %cst_0 = arith.constant 0.000000e+00 : f32
    %cst_1 = arith.constant 7.778000e-02 : f32
    %cst_2 = arith.constant 3.40282347E+38 : f32
    %cst_3 = arith.constant 4.900000e+01 : f32
    %cst_4 = arith.constant dense<7.777000e-02> : tensor<512x2048xf32>
    %cst_5 = arith.constant dense<7.777000e-02> : tensor<3x3x512x512xf32>
    %cst_6 = arith.constant dense<7.777000e-02> : tensor<2048x512xf32>
    %cst_7 = arith.constant dense<7.777000e-02> : tensor<1x1x1024x2048xf32>
    %cst_8 = arith.constant dense<7.777000e-02> : tensor<1024x512xf32>
    %cst_9 = arith.constant dense<7.777000e-02> : tensor<256x1024xf32>
    %cst_10 = arith.constant dense<7.777000e-02> : tensor<3x3x256x256xf32>
    %cst_11 = arith.constant dense<7.777000e-02> : tensor<1024x256xf32>
    %cst_12 = arith.constant dense<7.777000e-02> : tensor<1x1x512x1024xf32>
    %cst_13 = arith.constant dense<7.777000e-02> : tensor<512x256xf32>
    %cst_14 = arith.constant dense<7.777000e-02> : tensor<128x512xf32>
    %cst_15 = arith.constant dense<7.777000e-02> : tensor<3x3x128x128xf32>
    %cst_16 = arith.constant dense<7.777000e-02> : tensor<512x128xf32>
    %cst_17 = arith.constant dense<7.777000e-02> : tensor<1x1x256x512xf32>
    %cst_18 = arith.constant dense<7.777000e-02> : tensor<256x128xf32>
    %cst_19 = arith.constant dense<7.777000e-02> : tensor<64x256xf32>
    %cst_20 = arith.constant dense<7.777000e-02> : tensor<3x3x64x64xf32>
    %cst_21 = arith.constant dense<7.777000e-02> : tensor<256x64xf32>
    %cst_22 = arith.constant dense<7.777000e-02> : tensor<64x64xf32>
    %cst_23 = arith.constant dense<7.777000e-02> : tensor<7x7x3x64xf32>
    %cst_24 = arith.constant -3.40282347E+38 : f32
    %cst_25 = arith.constant dense<7.777000e-02> : tensor<1x2048x1000xf32>
    %cst_26 = arith.constant dense<7.777000e-02> : tensor<512x1x1x2048xf32>
    %cst_27 = arith.constant dense<7.777000e-02> : tensor<2048x1x1x1024xf32>
    %cst_28 = arith.constant dense<7.777000e-02> : tensor<1x2048x1x1xf32>
    %cst_29 = arith.constant dense<7.777000e-02> : tensor<2048x1x1x512xf32>
    %cst_30 = arith.constant dense<7.777000e-02> : tensor<512x3x3x512xf32>
    %cst_31 = arith.constant dense<7.777000e-02> : tensor<512x1x1x1024xf32>
    %cst_32 = arith.constant dense<7.777000e-02> : tensor<256x1x1x1024xf32>
    %cst_33 = arith.constant dense<7.777000e-02> : tensor<1024x1x1x512xf32>
    %cst_34 = arith.constant dense<7.777000e-02> : tensor<1x1024x1x1xf32>
    %cst_35 = arith.constant dense<7.777000e-02> : tensor<1024x1x1x256xf32>
    %cst_36 = arith.constant dense<7.777000e-02> : tensor<256x3x3x256xf32>
    %cst_37 = arith.constant dense<7.777000e-02> : tensor<256x1x1x512xf32>
    %cst_38 = arith.constant dense<7.777000e-02> : tensor<128x1x1x512xf32>
    %cst_39 = arith.constant dense<7.777000e-02> : tensor<512x1x1x256xf32>
    %cst_40 = arith.constant dense<7.777000e-02> : tensor<1x512x1x1xf32>
    %cst_41 = arith.constant dense<7.777000e-02> : tensor<512x1x1x128xf32>
    %cst_42 = arith.constant dense<7.777000e-02> : tensor<128x3x3x128xf32>
    %cst_43 = arith.constant dense<7.777000e-02> : tensor<1x128x1x1xf32>
    %cst_44 = arith.constant dense<7.777000e-02> : tensor<128x1x1x256xf32>
    %cst_45 = arith.constant dense<7.777000e-02> : tensor<64x1x1x256xf32>
    %cst_46 = arith.constant dense<7.777000e-02> : tensor<1x256x1x1xf32>
    %cst_47 = arith.constant dense<7.777000e-02> : tensor<256x1x1x64xf32>
    %cst_48 = arith.constant dense<7.777000e-02> : tensor<64x3x3x64xf32>
    %cst_49 = arith.constant dense<7.777000e-02> : tensor<64x1x1x64xf32>
    %cst_50 = arith.constant dense<7.777000e-02> : tensor<1x64x1x1xf32>
    %cst_51 = arith.constant dense<7.777000e-02> : tensor<64x7x7x3xf32>
    ml_program.global_store @global10 = %cst_25 : tensor<1x2048x1000xf32>
    ml_program.global_store @global11 = %cst_26 : tensor<512x1x1x2048xf32>
    ml_program.global_store @global12 = %cst_27 : tensor<2048x1x1x1024xf32>
    ml_program.global_store @global14 = %cst_28 : tensor<1x2048x1x1xf32>
    ml_program.global_store @global15 = %cst_29 : tensor<2048x1x1x512xf32>
    ml_program.global_store @global16 = %cst_30 : tensor<512x3x3x512xf32>
    ml_program.global_store @global17 = %cst_31 : tensor<512x1x1x1024xf32>
    ml_program.global_store @global18 = %cst_32 : tensor<256x1x1x1024xf32>
    ml_program.global_store @global19 = %cst_33 : tensor<1024x1x1x512xf32>
    ml_program.global_store @global21 = %cst_34 : tensor<1x1024x1x1xf32>
    ml_program.global_store @global22 = %cst_35 : tensor<1024x1x1x256xf32>
    ml_program.global_store @global23 = %cst_36 : tensor<256x3x3x256xf32>
    ml_program.global_store @global24 = %cst_37 : tensor<256x1x1x512xf32>
    ml_program.global_store @global25 = %cst_38 : tensor<128x1x1x512xf32>
    ml_program.global_store @global26 = %cst_39 : tensor<512x1x1x256xf32>
    ml_program.global_store @global28 = %cst_40 : tensor<1x512x1x1xf32>
    ml_program.global_store @global29 = %cst_41 : tensor<512x1x1x128xf32>
    ml_program.global_store @global30 = %cst_42 : tensor<128x3x3x128xf32>
    ml_program.global_store @global32 = %cst_43 : tensor<1x128x1x1xf32>
    ml_program.global_store @global33 = %cst_44 : tensor<128x1x1x256xf32>
    ml_program.global_store @global34 = %cst_45 : tensor<64x1x1x256xf32>
    ml_program.global_store @global36 = %cst_46 : tensor<1x256x1x1xf32>
    ml_program.global_store @global37 = %cst_47 : tensor<256x1x1x64xf32>
    ml_program.global_store @global38 = %cst_48 : tensor<64x3x3x64xf32>
    ml_program.global_store @global39 = %cst_49 : tensor<64x1x1x64xf32>
    ml_program.global_store @global41 = %cst_50 : tensor<1x64x1x1xf32>
    ml_program.global_store @global42 = %cst_51 : tensor<64x7x7x3xf32>
    %0 = tensor.empty() : tensor<1x224x224x3xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%arg0 : tensor<1x3x224x224xf32>) outs(%0 : tensor<1x224x224x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x224x224x3xf32>
    %padded = tensor.pad %1 low[0, 3, 3, 0] high[0, 3, 3, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x224x224x3xf32> to tensor<1x230x230x3xf32>
    %2 = tensor.empty() : tensor<1x112x112x64xf32>
    %3 = linalg.fill ins(%cst_0 : f32) outs(%2 : tensor<1x112x112x64xf32>) -> tensor<1x112x112x64xf32>
    %4 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded, %cst_23 : tensor<1x230x230x3xf32>, tensor<7x7x3x64xf32>) outs(%3 : tensor<1x112x112x64xf32>) -> tensor<1x112x112x64xf32>
    %5 = tensor.empty() : tensor<1x64x112x112xf32>
    %6 = tensor.empty() : tensor<1x64x1x1xf32>
    %7 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%6 : tensor<1x64x1x1xf32>) {
    ^bb0(%out: f32):
      %689 = math.rsqrt %cst_1 : f32
      linalg.yield %689 : f32
    } -> tensor<1x64x1x1xf32>
    ml_program.global_store @global48 = %7 : tensor<1x64x1x1xf32>
    %collapsed = tensor.collapse_shape %7 [[0], [1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<1x64xf32>
    %8 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4, %collapsed : tensor<1x112x112x64xf32>, tensor<1x64xf32>) outs(%5 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x64x112x112xf32>
    ml_program.global_store @global51 = %8 : tensor<1x64x112x112xf32>
    %9 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<1x64x112x112xf32>) outs(%5 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x64x112x112xf32>
    ml_program.global_store @global52 = %9 : tensor<1x64x112x112xf32>
    %10 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9 : tensor<1x64x112x112xf32>) outs(%2 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x112x112x64xf32>
    ml_program.global_store @global53 = %10 : tensor<1x112x112x64xf32>
    %padded_52 = tensor.pad %10 low[0, 1, 1, 0] high[0, 0, 0, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x112x112x64xf32> to tensor<1x113x113x64xf32>
    %11 = tensor.empty() : tensor<1x56x56x64xf32>
    %12 = linalg.fill ins(%cst_24 : f32) outs(%11 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %13 = tensor.empty() : tensor<3x3xf32>
    %14 = linalg.pooling_nhwc_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_52, %13 : tensor<1x113x113x64xf32>, tensor<3x3xf32>) outs(%12 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    ml_program.global_store @global54 = %14 : tensor<1x56x56x64xf32>
    %collapsed_53 = tensor.collapse_shape %14 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %15 = tensor.empty() : tensor<3136x64xf32>
    %16 = linalg.fill ins(%cst_0 : f32) outs(%15 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %17 = linalg.matmul ins(%collapsed_53, %cst_22 : tensor<3136x64xf32>, tensor<64x64xf32>) outs(%16 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %expanded = tensor.expand_shape %17 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %18 = tensor.empty() : tensor<1x64x56x56xf32>
    %19 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded, %collapsed : tensor<1x56x56x64xf32>, tensor<1x64xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global60 = %19 : tensor<1x64x56x56xf32>
    %20 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19 : tensor<1x64x56x56xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global61 = %20 : tensor<1x64x56x56xf32>
    %21 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20 : tensor<1x64x56x56xf32>) outs(%11 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_54 = tensor.pad %21 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %22 = linalg.fill ins(%cst_0 : f32) outs(%11 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %23 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_54, %cst_20 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%22 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %24 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %collapsed : tensor<1x56x56x64xf32>, tensor<1x64xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global68 = %24 : tensor<1x64x56x56xf32>
    %25 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24 : tensor<1x64x56x56xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global69 = %25 : tensor<1x64x56x56xf32>
    %26 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25 : tensor<1x64x56x56xf32>) outs(%11 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %collapsed_55 = tensor.collapse_shape %26 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %27 = tensor.empty() : tensor<3136x256xf32>
    %28 = linalg.fill ins(%cst_0 : f32) outs(%27 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %29 = linalg.matmul ins(%collapsed_55, %cst_19 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%28 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %expanded_56 = tensor.expand_shape %29 [[0, 1, 2], [3]] : tensor<3136x256xf32> into tensor<1x56x56x256xf32>
    %30 = tensor.empty() : tensor<1x256x56x56xf32>
    %31 = tensor.empty() : tensor<1x256x1x1xf32>
    %32 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%31 : tensor<1x256x1x1xf32>) {
    ^bb0(%out: f32):
      %689 = math.rsqrt %cst_1 : f32
      linalg.yield %689 : f32
    } -> tensor<1x256x1x1xf32>
    ml_program.global_store @global75 = %32 : tensor<1x256x1x1xf32>
    %collapsed_57 = tensor.collapse_shape %32 [[0], [1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<1x256xf32>
    %33 = linalg.matmul ins(%collapsed_53, %cst_19 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%28 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %expanded_58 = tensor.expand_shape %33 [[0, 1, 2], [3]] : tensor<3136x256xf32> into tensor<1x56x56x256xf32>
    %34 = linalg.generic {indexing_maps = [#map2, #map3, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_56, %collapsed_57, %expanded_58 : tensor<1x56x56x256xf32>, tensor<1x256xf32>, tensor<1x56x56x256xf32>) outs(%30 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in_311, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %in, %cst_0 : f32
      %695 = arith.subf %694, %cst : f32
      %696 = arith.mulf %695, %in_310 : f32
      %697 = arith.mulf %696, %cst : f32
      %698 = arith.addf %697, %cst : f32
      %699 = arith.addf %698, %693 : f32
      linalg.yield %699 : f32
    } -> tensor<1x256x56x56xf32>
    ml_program.global_store @global85 = %34 : tensor<1x256x56x56xf32>
    %35 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34 : tensor<1x256x56x56xf32>) outs(%30 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x56x56xf32>
    ml_program.global_store @global86 = %35 : tensor<1x256x56x56xf32>
    %36 = tensor.empty() : tensor<1x56x56x256xf32>
    %37 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35 : tensor<1x256x56x56xf32>) outs(%36 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %collapsed_59 = tensor.collapse_shape %37 [[0, 1, 2], [3]] : tensor<1x56x56x256xf32> into tensor<3136x256xf32>
    %38 = linalg.matmul ins(%collapsed_59, %cst_21 : tensor<3136x256xf32>, tensor<256x64xf32>) outs(%16 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %expanded_60 = tensor.expand_shape %38 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %39 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_60, %collapsed : tensor<1x56x56x64xf32>, tensor<1x64xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global93 = %39 : tensor<1x64x56x56xf32>
    %40 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39 : tensor<1x64x56x56xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global94 = %40 : tensor<1x64x56x56xf32>
    %41 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40 : tensor<1x64x56x56xf32>) outs(%11 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_61 = tensor.pad %41 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %42 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_61, %cst_20 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%22 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %43 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%42, %collapsed : tensor<1x56x56x64xf32>, tensor<1x64xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global101 = %43 : tensor<1x64x56x56xf32>
    %44 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43 : tensor<1x64x56x56xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global102 = %44 : tensor<1x64x56x56xf32>
    %45 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44 : tensor<1x64x56x56xf32>) outs(%11 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %collapsed_62 = tensor.collapse_shape %45 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %46 = linalg.matmul ins(%collapsed_62, %cst_19 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%28 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %expanded_63 = tensor.expand_shape %46 [[0, 1, 2], [3]] : tensor<3136x256xf32> into tensor<1x56x56x256xf32>
    %47 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_63, %collapsed_57, %35 : tensor<1x56x56x256xf32>, tensor<1x256xf32>, tensor<1x256x56x56xf32>) outs(%30 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x256x56x56xf32>
    ml_program.global_store @global110 = %47 : tensor<1x256x56x56xf32>
    %48 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47 : tensor<1x256x56x56xf32>) outs(%30 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x56x56xf32>
    ml_program.global_store @global111 = %48 : tensor<1x256x56x56xf32>
    %49 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48 : tensor<1x256x56x56xf32>) outs(%36 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %collapsed_64 = tensor.collapse_shape %49 [[0, 1, 2], [3]] : tensor<1x56x56x256xf32> into tensor<3136x256xf32>
    %50 = linalg.matmul ins(%collapsed_64, %cst_21 : tensor<3136x256xf32>, tensor<256x64xf32>) outs(%16 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %expanded_65 = tensor.expand_shape %50 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %51 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_65, %collapsed : tensor<1x56x56x64xf32>, tensor<1x64xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global118 = %51 : tensor<1x64x56x56xf32>
    %52 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51 : tensor<1x64x56x56xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global119 = %52 : tensor<1x64x56x56xf32>
    %53 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52 : tensor<1x64x56x56xf32>) outs(%11 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_66 = tensor.pad %53 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %54 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_66, %cst_20 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%22 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %55 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%54, %collapsed : tensor<1x56x56x64xf32>, tensor<1x64xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global126 = %55 : tensor<1x64x56x56xf32>
    %56 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55 : tensor<1x64x56x56xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global127 = %56 : tensor<1x64x56x56xf32>
    %57 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56 : tensor<1x64x56x56xf32>) outs(%11 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %collapsed_67 = tensor.collapse_shape %57 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %58 = linalg.matmul ins(%collapsed_67, %cst_19 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%28 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %expanded_68 = tensor.expand_shape %58 [[0, 1, 2], [3]] : tensor<3136x256xf32> into tensor<1x56x56x256xf32>
    %59 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_68, %collapsed_57, %48 : tensor<1x56x56x256xf32>, tensor<1x256xf32>, tensor<1x256x56x56xf32>) outs(%30 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x256x56x56xf32>
    ml_program.global_store @global135 = %59 : tensor<1x256x56x56xf32>
    %60 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59 : tensor<1x256x56x56xf32>) outs(%30 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x56x56xf32>
    ml_program.global_store @global136 = %60 : tensor<1x256x56x56xf32>
    %61 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%60 : tensor<1x256x56x56xf32>) outs(%36 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %collapsed_69 = tensor.collapse_shape %61 [[0, 1, 2], [3]] : tensor<1x56x56x256xf32> into tensor<3136x256xf32>
    %62 = tensor.empty() : tensor<3136x128xf32>
    %63 = linalg.fill ins(%cst_0 : f32) outs(%62 : tensor<3136x128xf32>) -> tensor<3136x128xf32>
    %64 = linalg.matmul ins(%collapsed_69, %cst_18 : tensor<3136x256xf32>, tensor<256x128xf32>) outs(%63 : tensor<3136x128xf32>) -> tensor<3136x128xf32>
    %expanded_70 = tensor.expand_shape %64 [[0, 1, 2], [3]] : tensor<3136x128xf32> into tensor<1x56x56x128xf32>
    %65 = tensor.empty() : tensor<1x128x56x56xf32>
    %66 = tensor.empty() : tensor<1x128x1x1xf32>
    %67 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%66 : tensor<1x128x1x1xf32>) {
    ^bb0(%out: f32):
      %689 = math.rsqrt %cst_1 : f32
      linalg.yield %689 : f32
    } -> tensor<1x128x1x1xf32>
    ml_program.global_store @global142 = %67 : tensor<1x128x1x1xf32>
    %collapsed_71 = tensor.collapse_shape %67 [[0], [1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<1x128xf32>
    %68 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_70, %collapsed_71 : tensor<1x56x56x128xf32>, tensor<1x128xf32>) outs(%65 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x128x56x56xf32>
    ml_program.global_store @global145 = %68 : tensor<1x128x56x56xf32>
    %69 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68 : tensor<1x128x56x56xf32>) outs(%65 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x128x56x56xf32>
    ml_program.global_store @global146 = %69 : tensor<1x128x56x56xf32>
    %70 = tensor.empty() : tensor<1x56x56x128xf32>
    %71 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69 : tensor<1x128x56x56xf32>) outs(%70 : tensor<1x56x56x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x128xf32>
    %padded_72 = tensor.pad %71 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x56x56x128xf32> to tensor<1x58x58x128xf32>
    %72 = tensor.empty() : tensor<1x28x28x128xf32>
    %73 = linalg.fill ins(%cst_0 : f32) outs(%72 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %74 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded_72, %cst_15 : tensor<1x58x58x128xf32>, tensor<3x3x128x128xf32>) outs(%73 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %75 = tensor.empty() : tensor<1x128x28x28xf32>
    %76 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74, %collapsed_71 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global153 = %76 : tensor<1x128x28x28xf32>
    %77 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76 : tensor<1x128x28x28xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global154 = %77 : tensor<1x128x28x28xf32>
    %78 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77 : tensor<1x128x28x28xf32>) outs(%72 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_73 = tensor.collapse_shape %78 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %79 = tensor.empty() : tensor<784x512xf32>
    %80 = linalg.fill ins(%cst_0 : f32) outs(%79 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %81 = linalg.matmul ins(%collapsed_73, %cst_14 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%80 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_74 = tensor.expand_shape %81 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %82 = tensor.empty() : tensor<1x512x28x28xf32>
    %83 = tensor.empty() : tensor<1x512x1x1xf32>
    %84 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%83 : tensor<1x512x1x1xf32>) {
    ^bb0(%out: f32):
      %689 = math.rsqrt %cst_1 : f32
      linalg.yield %689 : f32
    } -> tensor<1x512x1x1xf32>
    ml_program.global_store @global160 = %84 : tensor<1x512x1x1xf32>
    %collapsed_75 = tensor.collapse_shape %84 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %85 = tensor.empty() : tensor<1x28x28x512xf32>
    %86 = linalg.fill ins(%cst_0 : f32) outs(%85 : tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %87 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%61, %cst_17 : tensor<1x56x56x256xf32>, tensor<1x1x256x512xf32>) outs(%86 : tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %88 = linalg.generic {indexing_maps = [#map2, #map3, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_74, %collapsed_75, %87 : tensor<1x28x28x512xf32>, tensor<1x512xf32>, tensor<1x28x28x512xf32>) outs(%82 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in_311, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %in, %cst_0 : f32
      %695 = arith.subf %694, %cst : f32
      %696 = arith.mulf %695, %in_310 : f32
      %697 = arith.mulf %696, %cst : f32
      %698 = arith.addf %697, %cst : f32
      %699 = arith.addf %698, %693 : f32
      linalg.yield %699 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global170 = %88 : tensor<1x512x28x28xf32>
    %89 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88 : tensor<1x512x28x28xf32>) outs(%82 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global171 = %89 : tensor<1x512x28x28xf32>
    %90 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89 : tensor<1x512x28x28xf32>) outs(%85 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_76 = tensor.collapse_shape %90 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %91 = tensor.empty() : tensor<784x128xf32>
    %92 = linalg.fill ins(%cst_0 : f32) outs(%91 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %93 = linalg.matmul ins(%collapsed_76, %cst_16 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%92 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_77 = tensor.expand_shape %93 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %94 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_77, %collapsed_71 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global178 = %94 : tensor<1x128x28x28xf32>
    %95 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94 : tensor<1x128x28x28xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global179 = %95 : tensor<1x128x28x28xf32>
    %96 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95 : tensor<1x128x28x28xf32>) outs(%72 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_78 = tensor.pad %96 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %97 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_78, %cst_15 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%73 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %98 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97, %collapsed_71 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global186 = %98 : tensor<1x128x28x28xf32>
    %99 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98 : tensor<1x128x28x28xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global187 = %99 : tensor<1x128x28x28xf32>
    %100 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%99 : tensor<1x128x28x28xf32>) outs(%72 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_79 = tensor.collapse_shape %100 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %101 = linalg.matmul ins(%collapsed_79, %cst_14 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%80 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_80 = tensor.expand_shape %101 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %102 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_80, %collapsed_75, %89 : tensor<1x28x28x512xf32>, tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%82 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global195 = %102 : tensor<1x512x28x28xf32>
    %103 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%102 : tensor<1x512x28x28xf32>) outs(%82 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global196 = %103 : tensor<1x512x28x28xf32>
    %104 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103 : tensor<1x512x28x28xf32>) outs(%85 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_81 = tensor.collapse_shape %104 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %105 = linalg.matmul ins(%collapsed_81, %cst_16 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%92 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_82 = tensor.expand_shape %105 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %106 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_82, %collapsed_71 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global203 = %106 : tensor<1x128x28x28xf32>
    %107 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106 : tensor<1x128x28x28xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global204 = %107 : tensor<1x128x28x28xf32>
    %108 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107 : tensor<1x128x28x28xf32>) outs(%72 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_83 = tensor.pad %108 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %109 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_83, %cst_15 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%73 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %110 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109, %collapsed_71 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global211 = %110 : tensor<1x128x28x28xf32>
    %111 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110 : tensor<1x128x28x28xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global212 = %111 : tensor<1x128x28x28xf32>
    %112 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111 : tensor<1x128x28x28xf32>) outs(%72 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_84 = tensor.collapse_shape %112 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %113 = linalg.matmul ins(%collapsed_84, %cst_14 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%80 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_85 = tensor.expand_shape %113 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %114 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_85, %collapsed_75, %103 : tensor<1x28x28x512xf32>, tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%82 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global220 = %114 : tensor<1x512x28x28xf32>
    %115 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114 : tensor<1x512x28x28xf32>) outs(%82 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global221 = %115 : tensor<1x512x28x28xf32>
    %116 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115 : tensor<1x512x28x28xf32>) outs(%85 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_86 = tensor.collapse_shape %116 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %117 = linalg.matmul ins(%collapsed_86, %cst_16 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%92 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_87 = tensor.expand_shape %117 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %118 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_87, %collapsed_71 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global228 = %118 : tensor<1x128x28x28xf32>
    %119 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118 : tensor<1x128x28x28xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global229 = %119 : tensor<1x128x28x28xf32>
    %120 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119 : tensor<1x128x28x28xf32>) outs(%72 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_88 = tensor.pad %120 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %121 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_88, %cst_15 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%73 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %122 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121, %collapsed_71 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global236 = %122 : tensor<1x128x28x28xf32>
    %123 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122 : tensor<1x128x28x28xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global237 = %123 : tensor<1x128x28x28xf32>
    %124 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123 : tensor<1x128x28x28xf32>) outs(%72 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_89 = tensor.collapse_shape %124 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %125 = linalg.matmul ins(%collapsed_89, %cst_14 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%80 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_90 = tensor.expand_shape %125 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %126 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_90, %collapsed_75, %115 : tensor<1x28x28x512xf32>, tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%82 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global245 = %126 : tensor<1x512x28x28xf32>
    %127 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126 : tensor<1x512x28x28xf32>) outs(%82 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global246 = %127 : tensor<1x512x28x28xf32>
    %128 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%127 : tensor<1x512x28x28xf32>) outs(%85 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_91 = tensor.collapse_shape %128 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %129 = linalg.matmul ins(%collapsed_91, %cst_16 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%92 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_92 = tensor.expand_shape %129 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %130 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_92, %collapsed_71 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global253 = %130 : tensor<1x128x28x28xf32>
    %131 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130 : tensor<1x128x28x28xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global254 = %131 : tensor<1x128x28x28xf32>
    %132 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131 : tensor<1x128x28x28xf32>) outs(%72 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_93 = tensor.pad %132 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %133 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_93, %cst_15 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%73 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %134 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%133, %collapsed_71 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global261 = %134 : tensor<1x128x28x28xf32>
    %135 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134 : tensor<1x128x28x28xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global262 = %135 : tensor<1x128x28x28xf32>
    %136 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135 : tensor<1x128x28x28xf32>) outs(%72 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_94 = tensor.collapse_shape %136 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %137 = linalg.matmul ins(%collapsed_94, %cst_14 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%80 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_95 = tensor.expand_shape %137 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %138 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_95, %collapsed_75, %127 : tensor<1x28x28x512xf32>, tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%82 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global270 = %138 : tensor<1x512x28x28xf32>
    %139 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138 : tensor<1x512x28x28xf32>) outs(%82 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global271 = %139 : tensor<1x512x28x28xf32>
    %140 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139 : tensor<1x512x28x28xf32>) outs(%85 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_96 = tensor.collapse_shape %140 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %141 = linalg.matmul ins(%collapsed_96, %cst_16 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%92 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_97 = tensor.expand_shape %141 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %142 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_97, %collapsed_71 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global278 = %142 : tensor<1x128x28x28xf32>
    %143 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142 : tensor<1x128x28x28xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global279 = %143 : tensor<1x128x28x28xf32>
    %144 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143 : tensor<1x128x28x28xf32>) outs(%72 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_98 = tensor.pad %144 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %145 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_98, %cst_15 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%73 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %146 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145, %collapsed_71 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global286 = %146 : tensor<1x128x28x28xf32>
    %147 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146 : tensor<1x128x28x28xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global287 = %147 : tensor<1x128x28x28xf32>
    %148 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147 : tensor<1x128x28x28xf32>) outs(%72 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_99 = tensor.collapse_shape %148 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %149 = linalg.matmul ins(%collapsed_99, %cst_14 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%80 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_100 = tensor.expand_shape %149 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %150 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_100, %collapsed_75, %139 : tensor<1x28x28x512xf32>, tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%82 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global295 = %150 : tensor<1x512x28x28xf32>
    %151 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%150 : tensor<1x512x28x28xf32>) outs(%82 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global296 = %151 : tensor<1x512x28x28xf32>
    %152 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151 : tensor<1x512x28x28xf32>) outs(%85 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_101 = tensor.collapse_shape %152 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %153 = linalg.matmul ins(%collapsed_101, %cst_16 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%92 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_102 = tensor.expand_shape %153 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %154 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_102, %collapsed_71 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global303 = %154 : tensor<1x128x28x28xf32>
    %155 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154 : tensor<1x128x28x28xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global304 = %155 : tensor<1x128x28x28xf32>
    %156 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155 : tensor<1x128x28x28xf32>) outs(%72 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_103 = tensor.pad %156 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %157 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_103, %cst_15 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%73 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %158 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157, %collapsed_71 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global311 = %158 : tensor<1x128x28x28xf32>
    %159 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158 : tensor<1x128x28x28xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global312 = %159 : tensor<1x128x28x28xf32>
    %160 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%159 : tensor<1x128x28x28xf32>) outs(%72 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_104 = tensor.collapse_shape %160 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %161 = linalg.matmul ins(%collapsed_104, %cst_14 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%80 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_105 = tensor.expand_shape %161 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %162 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_105, %collapsed_75, %151 : tensor<1x28x28x512xf32>, tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%82 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global320 = %162 : tensor<1x512x28x28xf32>
    %163 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162 : tensor<1x512x28x28xf32>) outs(%82 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global321 = %163 : tensor<1x512x28x28xf32>
    %164 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163 : tensor<1x512x28x28xf32>) outs(%85 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_106 = tensor.collapse_shape %164 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %165 = linalg.matmul ins(%collapsed_106, %cst_16 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%92 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_107 = tensor.expand_shape %165 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %166 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_107, %collapsed_71 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global328 = %166 : tensor<1x128x28x28xf32>
    %167 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166 : tensor<1x128x28x28xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global329 = %167 : tensor<1x128x28x28xf32>
    %168 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167 : tensor<1x128x28x28xf32>) outs(%72 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_108 = tensor.pad %168 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %169 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_108, %cst_15 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%73 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %170 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169, %collapsed_71 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global336 = %170 : tensor<1x128x28x28xf32>
    %171 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170 : tensor<1x128x28x28xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global337 = %171 : tensor<1x128x28x28xf32>
    %172 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171 : tensor<1x128x28x28xf32>) outs(%72 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_109 = tensor.collapse_shape %172 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %173 = linalg.matmul ins(%collapsed_109, %cst_14 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%80 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_110 = tensor.expand_shape %173 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %174 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_110, %collapsed_75, %163 : tensor<1x28x28x512xf32>, tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%82 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global345 = %174 : tensor<1x512x28x28xf32>
    %175 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174 : tensor<1x512x28x28xf32>) outs(%82 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global346 = %175 : tensor<1x512x28x28xf32>
    %176 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175 : tensor<1x512x28x28xf32>) outs(%85 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_111 = tensor.collapse_shape %176 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %177 = tensor.empty() : tensor<784x256xf32>
    %178 = linalg.fill ins(%cst_0 : f32) outs(%177 : tensor<784x256xf32>) -> tensor<784x256xf32>
    %179 = linalg.matmul ins(%collapsed_111, %cst_13 : tensor<784x512xf32>, tensor<512x256xf32>) outs(%178 : tensor<784x256xf32>) -> tensor<784x256xf32>
    %expanded_112 = tensor.expand_shape %179 [[0, 1, 2], [3]] : tensor<784x256xf32> into tensor<1x28x28x256xf32>
    %180 = tensor.empty() : tensor<1x256x28x28xf32>
    %181 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_112, %collapsed_57 : tensor<1x28x28x256xf32>, tensor<1x256xf32>) outs(%180 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x28x28xf32>
    ml_program.global_store @global353 = %181 : tensor<1x256x28x28xf32>
    %182 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181 : tensor<1x256x28x28xf32>) outs(%180 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x28x28xf32>
    ml_program.global_store @global354 = %182 : tensor<1x256x28x28xf32>
    %183 = tensor.empty() : tensor<1x28x28x256xf32>
    %184 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%182 : tensor<1x256x28x28xf32>) outs(%183 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x256xf32>
    %padded_113 = tensor.pad %184 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x256xf32> to tensor<1x30x30x256xf32>
    %185 = tensor.empty() : tensor<1x14x14x256xf32>
    %186 = linalg.fill ins(%cst_0 : f32) outs(%185 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %187 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded_113, %cst_10 : tensor<1x30x30x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %188 = tensor.empty() : tensor<1x256x14x14xf32>
    %189 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global361 = %189 : tensor<1x256x14x14xf32>
    %190 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global362 = %190 : tensor<1x256x14x14xf32>
    %191 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_114 = tensor.collapse_shape %191 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %192 = tensor.empty() : tensor<196x1024xf32>
    %193 = linalg.fill ins(%cst_0 : f32) outs(%192 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %194 = linalg.matmul ins(%collapsed_114, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_115 = tensor.expand_shape %194 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %195 = tensor.empty() : tensor<1x1024x14x14xf32>
    %196 = tensor.empty() : tensor<1x1024x1x1xf32>
    %197 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%196 : tensor<1x1024x1x1xf32>) {
    ^bb0(%out: f32):
      %689 = math.rsqrt %cst_1 : f32
      linalg.yield %689 : f32
    } -> tensor<1x1024x1x1xf32>
    ml_program.global_store @global368 = %197 : tensor<1x1024x1x1xf32>
    %collapsed_116 = tensor.collapse_shape %197 [[0], [1, 2, 3]] : tensor<1x1024x1x1xf32> into tensor<1x1024xf32>
    %198 = tensor.empty() : tensor<1x14x14x1024xf32>
    %199 = linalg.fill ins(%cst_0 : f32) outs(%198 : tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %200 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%176, %cst_12 : tensor<1x28x28x512xf32>, tensor<1x1x512x1024xf32>) outs(%199 : tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %201 = linalg.generic {indexing_maps = [#map2, #map3, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_115, %collapsed_116, %200 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x14x14x1024xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in_311, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %in, %cst_0 : f32
      %695 = arith.subf %694, %cst : f32
      %696 = arith.mulf %695, %in_310 : f32
      %697 = arith.mulf %696, %cst : f32
      %698 = arith.addf %697, %cst : f32
      %699 = arith.addf %698, %693 : f32
      linalg.yield %699 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global378 = %201 : tensor<1x1024x14x14xf32>
    %202 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%201 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global379 = %202 : tensor<1x1024x14x14xf32>
    %203 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_117 = tensor.collapse_shape %203 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %204 = tensor.empty() : tensor<196x256xf32>
    %205 = linalg.fill ins(%cst_0 : f32) outs(%204 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %206 = linalg.matmul ins(%collapsed_117, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_118 = tensor.expand_shape %206 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %207 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_118, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global386 = %207 : tensor<1x256x14x14xf32>
    %208 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global387 = %208 : tensor<1x256x14x14xf32>
    %209 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_119 = tensor.pad %209 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %210 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_119, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %211 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global394 = %211 : tensor<1x256x14x14xf32>
    %212 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global395 = %212 : tensor<1x256x14x14xf32>
    %213 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_120 = tensor.collapse_shape %213 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %214 = linalg.matmul ins(%collapsed_120, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_121 = tensor.expand_shape %214 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %215 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_121, %collapsed_116, %202 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global403 = %215 : tensor<1x1024x14x14xf32>
    %216 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global404 = %216 : tensor<1x1024x14x14xf32>
    %217 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%216 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_122 = tensor.collapse_shape %217 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %218 = linalg.matmul ins(%collapsed_122, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_123 = tensor.expand_shape %218 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %219 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_123, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global411 = %219 : tensor<1x256x14x14xf32>
    %220 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global412 = %220 : tensor<1x256x14x14xf32>
    %221 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%220 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_124 = tensor.pad %221 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %222 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_124, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %223 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%222, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global419 = %223 : tensor<1x256x14x14xf32>
    %224 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%223 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global420 = %224 : tensor<1x256x14x14xf32>
    %225 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_125 = tensor.collapse_shape %225 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %226 = linalg.matmul ins(%collapsed_125, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_126 = tensor.expand_shape %226 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %227 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_126, %collapsed_116, %216 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global428 = %227 : tensor<1x1024x14x14xf32>
    %228 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%227 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global429 = %228 : tensor<1x1024x14x14xf32>
    %229 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%228 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_127 = tensor.collapse_shape %229 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %230 = linalg.matmul ins(%collapsed_127, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_128 = tensor.expand_shape %230 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %231 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_128, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global436 = %231 : tensor<1x256x14x14xf32>
    %232 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%231 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global437 = %232 : tensor<1x256x14x14xf32>
    %233 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_129 = tensor.pad %233 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %234 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_129, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %235 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global444 = %235 : tensor<1x256x14x14xf32>
    %236 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%235 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global445 = %236 : tensor<1x256x14x14xf32>
    %237 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_130 = tensor.collapse_shape %237 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %238 = linalg.matmul ins(%collapsed_130, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_131 = tensor.expand_shape %238 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %239 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_131, %collapsed_116, %228 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global453 = %239 : tensor<1x1024x14x14xf32>
    %240 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%239 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global454 = %240 : tensor<1x1024x14x14xf32>
    %241 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_132 = tensor.collapse_shape %241 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %242 = linalg.matmul ins(%collapsed_132, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_133 = tensor.expand_shape %242 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %243 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_133, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global461 = %243 : tensor<1x256x14x14xf32>
    %244 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%243 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global462 = %244 : tensor<1x256x14x14xf32>
    %245 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_134 = tensor.pad %245 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %246 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_134, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %247 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%246, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global469 = %247 : tensor<1x256x14x14xf32>
    %248 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global470 = %248 : tensor<1x256x14x14xf32>
    %249 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%248 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_135 = tensor.collapse_shape %249 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %250 = linalg.matmul ins(%collapsed_135, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_136 = tensor.expand_shape %250 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %251 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_136, %collapsed_116, %240 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global478 = %251 : tensor<1x1024x14x14xf32>
    %252 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%251 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global479 = %252 : tensor<1x1024x14x14xf32>
    %253 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%252 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_137 = tensor.collapse_shape %253 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %254 = linalg.matmul ins(%collapsed_137, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_138 = tensor.expand_shape %254 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %255 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_138, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global486 = %255 : tensor<1x256x14x14xf32>
    %256 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%255 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global487 = %256 : tensor<1x256x14x14xf32>
    %257 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%256 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_139 = tensor.pad %257 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %258 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_139, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %259 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%258, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global494 = %259 : tensor<1x256x14x14xf32>
    %260 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global495 = %260 : tensor<1x256x14x14xf32>
    %261 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%260 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_140 = tensor.collapse_shape %261 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %262 = linalg.matmul ins(%collapsed_140, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_141 = tensor.expand_shape %262 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %263 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_141, %collapsed_116, %252 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global503 = %263 : tensor<1x1024x14x14xf32>
    %264 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%263 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global504 = %264 : tensor<1x1024x14x14xf32>
    %265 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%264 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_142 = tensor.collapse_shape %265 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %266 = linalg.matmul ins(%collapsed_142, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_143 = tensor.expand_shape %266 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %267 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_143, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global511 = %267 : tensor<1x256x14x14xf32>
    %268 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global512 = %268 : tensor<1x256x14x14xf32>
    %269 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_144 = tensor.pad %269 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %270 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_144, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %271 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%270, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global519 = %271 : tensor<1x256x14x14xf32>
    %272 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global520 = %272 : tensor<1x256x14x14xf32>
    %273 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%272 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_145 = tensor.collapse_shape %273 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %274 = linalg.matmul ins(%collapsed_145, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_146 = tensor.expand_shape %274 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %275 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_146, %collapsed_116, %264 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global528 = %275 : tensor<1x1024x14x14xf32>
    %276 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global529 = %276 : tensor<1x1024x14x14xf32>
    %277 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%276 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_147 = tensor.collapse_shape %277 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %278 = linalg.matmul ins(%collapsed_147, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_148 = tensor.expand_shape %278 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %279 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_148, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global536 = %279 : tensor<1x256x14x14xf32>
    %280 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global537 = %280 : tensor<1x256x14x14xf32>
    %281 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%280 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_149 = tensor.pad %281 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %282 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_149, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %283 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%282, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global544 = %283 : tensor<1x256x14x14xf32>
    %284 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%283 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global545 = %284 : tensor<1x256x14x14xf32>
    %285 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%284 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_150 = tensor.collapse_shape %285 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %286 = linalg.matmul ins(%collapsed_150, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_151 = tensor.expand_shape %286 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %287 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_151, %collapsed_116, %276 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global553 = %287 : tensor<1x1024x14x14xf32>
    %288 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global554 = %288 : tensor<1x1024x14x14xf32>
    %289 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%288 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_152 = tensor.collapse_shape %289 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %290 = linalg.matmul ins(%collapsed_152, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_153 = tensor.expand_shape %290 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %291 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_153, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global561 = %291 : tensor<1x256x14x14xf32>
    %292 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%291 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global562 = %292 : tensor<1x256x14x14xf32>
    %293 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%292 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_154 = tensor.pad %293 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %294 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_154, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %295 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global569 = %295 : tensor<1x256x14x14xf32>
    %296 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%295 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global570 = %296 : tensor<1x256x14x14xf32>
    %297 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%296 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_155 = tensor.collapse_shape %297 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %298 = linalg.matmul ins(%collapsed_155, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_156 = tensor.expand_shape %298 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %299 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_156, %collapsed_116, %288 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global578 = %299 : tensor<1x1024x14x14xf32>
    %300 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%299 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global579 = %300 : tensor<1x1024x14x14xf32>
    %301 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%300 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_157 = tensor.collapse_shape %301 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %302 = linalg.matmul ins(%collapsed_157, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_158 = tensor.expand_shape %302 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %303 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_158, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global586 = %303 : tensor<1x256x14x14xf32>
    %304 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%303 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global587 = %304 : tensor<1x256x14x14xf32>
    %305 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_159 = tensor.pad %305 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %306 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_159, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %307 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%306, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global594 = %307 : tensor<1x256x14x14xf32>
    %308 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%307 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global595 = %308 : tensor<1x256x14x14xf32>
    %309 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_160 = tensor.collapse_shape %309 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %310 = linalg.matmul ins(%collapsed_160, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_161 = tensor.expand_shape %310 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %311 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_161, %collapsed_116, %300 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global603 = %311 : tensor<1x1024x14x14xf32>
    %312 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%311 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global604 = %312 : tensor<1x1024x14x14xf32>
    %313 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%312 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_162 = tensor.collapse_shape %313 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %314 = linalg.matmul ins(%collapsed_162, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_163 = tensor.expand_shape %314 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %315 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_163, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global611 = %315 : tensor<1x256x14x14xf32>
    %316 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%315 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global612 = %316 : tensor<1x256x14x14xf32>
    %317 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%316 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_164 = tensor.pad %317 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %318 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_164, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %319 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%318, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global619 = %319 : tensor<1x256x14x14xf32>
    %320 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%319 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global620 = %320 : tensor<1x256x14x14xf32>
    %321 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%320 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_165 = tensor.collapse_shape %321 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %322 = linalg.matmul ins(%collapsed_165, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_166 = tensor.expand_shape %322 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %323 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_166, %collapsed_116, %312 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global628 = %323 : tensor<1x1024x14x14xf32>
    %324 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%323 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global629 = %324 : tensor<1x1024x14x14xf32>
    %325 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%324 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_167 = tensor.collapse_shape %325 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %326 = linalg.matmul ins(%collapsed_167, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_168 = tensor.expand_shape %326 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %327 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_168, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global636 = %327 : tensor<1x256x14x14xf32>
    %328 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%327 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global637 = %328 : tensor<1x256x14x14xf32>
    %329 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%328 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_169 = tensor.pad %329 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %330 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_169, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %331 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%330, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global644 = %331 : tensor<1x256x14x14xf32>
    %332 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global645 = %332 : tensor<1x256x14x14xf32>
    %333 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%332 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_170 = tensor.collapse_shape %333 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %334 = linalg.matmul ins(%collapsed_170, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_171 = tensor.expand_shape %334 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %335 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_171, %collapsed_116, %324 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global653 = %335 : tensor<1x1024x14x14xf32>
    %336 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%335 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global654 = %336 : tensor<1x1024x14x14xf32>
    %337 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%336 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_172 = tensor.collapse_shape %337 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %338 = linalg.matmul ins(%collapsed_172, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_173 = tensor.expand_shape %338 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %339 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_173, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global661 = %339 : tensor<1x256x14x14xf32>
    %340 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%339 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global662 = %340 : tensor<1x256x14x14xf32>
    %341 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%340 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_174 = tensor.pad %341 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %342 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_174, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %343 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%342, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global669 = %343 : tensor<1x256x14x14xf32>
    %344 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%343 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global670 = %344 : tensor<1x256x14x14xf32>
    %345 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_175 = tensor.collapse_shape %345 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %346 = linalg.matmul ins(%collapsed_175, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_176 = tensor.expand_shape %346 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %347 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_176, %collapsed_116, %336 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global678 = %347 : tensor<1x1024x14x14xf32>
    %348 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%347 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global679 = %348 : tensor<1x1024x14x14xf32>
    %349 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%348 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_177 = tensor.collapse_shape %349 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %350 = linalg.matmul ins(%collapsed_177, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_178 = tensor.expand_shape %350 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %351 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_178, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global686 = %351 : tensor<1x256x14x14xf32>
    %352 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global687 = %352 : tensor<1x256x14x14xf32>
    %353 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%352 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_179 = tensor.pad %353 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %354 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_179, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %355 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%354, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global694 = %355 : tensor<1x256x14x14xf32>
    %356 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%355 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global695 = %356 : tensor<1x256x14x14xf32>
    %357 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%356 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_180 = tensor.collapse_shape %357 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %358 = linalg.matmul ins(%collapsed_180, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_181 = tensor.expand_shape %358 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %359 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_181, %collapsed_116, %348 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global703 = %359 : tensor<1x1024x14x14xf32>
    %360 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global704 = %360 : tensor<1x1024x14x14xf32>
    %361 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%360 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_182 = tensor.collapse_shape %361 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %362 = linalg.matmul ins(%collapsed_182, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_183 = tensor.expand_shape %362 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %363 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_183, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global711 = %363 : tensor<1x256x14x14xf32>
    %364 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%363 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global712 = %364 : tensor<1x256x14x14xf32>
    %365 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%364 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_184 = tensor.pad %365 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %366 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_184, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %367 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%366, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global719 = %367 : tensor<1x256x14x14xf32>
    %368 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%367 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global720 = %368 : tensor<1x256x14x14xf32>
    %369 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%368 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_185 = tensor.collapse_shape %369 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %370 = linalg.matmul ins(%collapsed_185, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_186 = tensor.expand_shape %370 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %371 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_186, %collapsed_116, %360 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global728 = %371 : tensor<1x1024x14x14xf32>
    %372 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%371 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global729 = %372 : tensor<1x1024x14x14xf32>
    %373 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%372 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_187 = tensor.collapse_shape %373 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %374 = linalg.matmul ins(%collapsed_187, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_188 = tensor.expand_shape %374 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %375 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_188, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global736 = %375 : tensor<1x256x14x14xf32>
    %376 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%375 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global737 = %376 : tensor<1x256x14x14xf32>
    %377 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%376 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_189 = tensor.pad %377 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %378 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_189, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %379 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%378, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global744 = %379 : tensor<1x256x14x14xf32>
    %380 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%379 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global745 = %380 : tensor<1x256x14x14xf32>
    %381 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%380 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_190 = tensor.collapse_shape %381 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %382 = linalg.matmul ins(%collapsed_190, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_191 = tensor.expand_shape %382 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %383 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_191, %collapsed_116, %372 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global753 = %383 : tensor<1x1024x14x14xf32>
    %384 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%383 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global754 = %384 : tensor<1x1024x14x14xf32>
    %385 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%384 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_192 = tensor.collapse_shape %385 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %386 = linalg.matmul ins(%collapsed_192, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_193 = tensor.expand_shape %386 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %387 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_193, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global761 = %387 : tensor<1x256x14x14xf32>
    %388 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%387 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global762 = %388 : tensor<1x256x14x14xf32>
    %389 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%388 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_194 = tensor.pad %389 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %390 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_194, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %391 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%390, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global769 = %391 : tensor<1x256x14x14xf32>
    %392 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%391 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global770 = %392 : tensor<1x256x14x14xf32>
    %393 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%392 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_195 = tensor.collapse_shape %393 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %394 = linalg.matmul ins(%collapsed_195, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_196 = tensor.expand_shape %394 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %395 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_196, %collapsed_116, %384 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global778 = %395 : tensor<1x1024x14x14xf32>
    %396 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%395 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global779 = %396 : tensor<1x1024x14x14xf32>
    %397 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%396 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_197 = tensor.collapse_shape %397 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %398 = linalg.matmul ins(%collapsed_197, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_198 = tensor.expand_shape %398 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %399 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_198, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global786 = %399 : tensor<1x256x14x14xf32>
    %400 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%399 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global787 = %400 : tensor<1x256x14x14xf32>
    %401 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%400 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_199 = tensor.pad %401 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %402 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_199, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %403 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%402, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global794 = %403 : tensor<1x256x14x14xf32>
    %404 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%403 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global795 = %404 : tensor<1x256x14x14xf32>
    %405 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%404 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_200 = tensor.collapse_shape %405 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %406 = linalg.matmul ins(%collapsed_200, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_201 = tensor.expand_shape %406 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %407 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_201, %collapsed_116, %396 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global803 = %407 : tensor<1x1024x14x14xf32>
    %408 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%407 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global804 = %408 : tensor<1x1024x14x14xf32>
    %409 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%408 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_202 = tensor.collapse_shape %409 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %410 = linalg.matmul ins(%collapsed_202, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_203 = tensor.expand_shape %410 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %411 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_203, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global811 = %411 : tensor<1x256x14x14xf32>
    %412 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%411 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global812 = %412 : tensor<1x256x14x14xf32>
    %413 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%412 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_204 = tensor.pad %413 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %414 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_204, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %415 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%414, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global819 = %415 : tensor<1x256x14x14xf32>
    %416 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%415 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global820 = %416 : tensor<1x256x14x14xf32>
    %417 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%416 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_205 = tensor.collapse_shape %417 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %418 = linalg.matmul ins(%collapsed_205, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_206 = tensor.expand_shape %418 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %419 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_206, %collapsed_116, %408 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global828 = %419 : tensor<1x1024x14x14xf32>
    %420 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%419 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global829 = %420 : tensor<1x1024x14x14xf32>
    %421 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%420 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_207 = tensor.collapse_shape %421 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %422 = linalg.matmul ins(%collapsed_207, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_208 = tensor.expand_shape %422 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %423 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_208, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global836 = %423 : tensor<1x256x14x14xf32>
    %424 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%423 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global837 = %424 : tensor<1x256x14x14xf32>
    %425 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%424 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_209 = tensor.pad %425 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %426 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_209, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %427 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%426, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global844 = %427 : tensor<1x256x14x14xf32>
    %428 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%427 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global845 = %428 : tensor<1x256x14x14xf32>
    %429 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%428 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_210 = tensor.collapse_shape %429 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %430 = linalg.matmul ins(%collapsed_210, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_211 = tensor.expand_shape %430 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %431 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_211, %collapsed_116, %420 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global853 = %431 : tensor<1x1024x14x14xf32>
    %432 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%431 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global854 = %432 : tensor<1x1024x14x14xf32>
    %433 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%432 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_212 = tensor.collapse_shape %433 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %434 = linalg.matmul ins(%collapsed_212, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_213 = tensor.expand_shape %434 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %435 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_213, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global861 = %435 : tensor<1x256x14x14xf32>
    %436 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%435 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global862 = %436 : tensor<1x256x14x14xf32>
    %437 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%436 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_214 = tensor.pad %437 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %438 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_214, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %439 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%438, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global869 = %439 : tensor<1x256x14x14xf32>
    %440 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%439 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global870 = %440 : tensor<1x256x14x14xf32>
    %441 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%440 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_215 = tensor.collapse_shape %441 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %442 = linalg.matmul ins(%collapsed_215, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_216 = tensor.expand_shape %442 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %443 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_216, %collapsed_116, %432 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global878 = %443 : tensor<1x1024x14x14xf32>
    %444 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%443 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global879 = %444 : tensor<1x1024x14x14xf32>
    %445 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%444 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_217 = tensor.collapse_shape %445 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %446 = linalg.matmul ins(%collapsed_217, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_218 = tensor.expand_shape %446 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %447 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_218, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global886 = %447 : tensor<1x256x14x14xf32>
    %448 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%447 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global887 = %448 : tensor<1x256x14x14xf32>
    %449 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%448 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_219 = tensor.pad %449 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %450 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_219, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %451 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%450, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global894 = %451 : tensor<1x256x14x14xf32>
    %452 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%451 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global895 = %452 : tensor<1x256x14x14xf32>
    %453 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%452 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_220 = tensor.collapse_shape %453 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %454 = linalg.matmul ins(%collapsed_220, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_221 = tensor.expand_shape %454 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %455 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_221, %collapsed_116, %444 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global903 = %455 : tensor<1x1024x14x14xf32>
    %456 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%455 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global904 = %456 : tensor<1x1024x14x14xf32>
    %457 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%456 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_222 = tensor.collapse_shape %457 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %458 = linalg.matmul ins(%collapsed_222, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_223 = tensor.expand_shape %458 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %459 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_223, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global911 = %459 : tensor<1x256x14x14xf32>
    %460 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%459 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global912 = %460 : tensor<1x256x14x14xf32>
    %461 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%460 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_224 = tensor.pad %461 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %462 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_224, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %463 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%462, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global919 = %463 : tensor<1x256x14x14xf32>
    %464 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%463 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global920 = %464 : tensor<1x256x14x14xf32>
    %465 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%464 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_225 = tensor.collapse_shape %465 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %466 = linalg.matmul ins(%collapsed_225, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_226 = tensor.expand_shape %466 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %467 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_226, %collapsed_116, %456 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global928 = %467 : tensor<1x1024x14x14xf32>
    %468 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%467 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global929 = %468 : tensor<1x1024x14x14xf32>
    %469 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%468 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_227 = tensor.collapse_shape %469 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %470 = linalg.matmul ins(%collapsed_227, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_228 = tensor.expand_shape %470 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %471 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_228, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global936 = %471 : tensor<1x256x14x14xf32>
    %472 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%471 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global937 = %472 : tensor<1x256x14x14xf32>
    %473 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%472 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_229 = tensor.pad %473 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %474 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_229, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %475 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%474, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global944 = %475 : tensor<1x256x14x14xf32>
    %476 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%475 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global945 = %476 : tensor<1x256x14x14xf32>
    %477 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%476 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_230 = tensor.collapse_shape %477 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %478 = linalg.matmul ins(%collapsed_230, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_231 = tensor.expand_shape %478 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %479 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_231, %collapsed_116, %468 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global953 = %479 : tensor<1x1024x14x14xf32>
    %480 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%479 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global954 = %480 : tensor<1x1024x14x14xf32>
    %481 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%480 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_232 = tensor.collapse_shape %481 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %482 = linalg.matmul ins(%collapsed_232, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_233 = tensor.expand_shape %482 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %483 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_233, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global961 = %483 : tensor<1x256x14x14xf32>
    %484 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%483 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global962 = %484 : tensor<1x256x14x14xf32>
    %485 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%484 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_234 = tensor.pad %485 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %486 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_234, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %487 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%486, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global969 = %487 : tensor<1x256x14x14xf32>
    %488 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%487 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global970 = %488 : tensor<1x256x14x14xf32>
    %489 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%488 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_235 = tensor.collapse_shape %489 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %490 = linalg.matmul ins(%collapsed_235, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_236 = tensor.expand_shape %490 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %491 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_236, %collapsed_116, %480 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global978 = %491 : tensor<1x1024x14x14xf32>
    %492 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%491 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global979 = %492 : tensor<1x1024x14x14xf32>
    %493 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%492 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_237 = tensor.collapse_shape %493 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %494 = linalg.matmul ins(%collapsed_237, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_238 = tensor.expand_shape %494 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %495 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_238, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global986 = %495 : tensor<1x256x14x14xf32>
    %496 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%495 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global987 = %496 : tensor<1x256x14x14xf32>
    %497 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%496 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_239 = tensor.pad %497 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %498 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_239, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %499 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%498, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global994 = %499 : tensor<1x256x14x14xf32>
    %500 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%499 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global995 = %500 : tensor<1x256x14x14xf32>
    %501 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%500 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_240 = tensor.collapse_shape %501 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %502 = linalg.matmul ins(%collapsed_240, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_241 = tensor.expand_shape %502 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %503 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_241, %collapsed_116, %492 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global1003 = %503 : tensor<1x1024x14x14xf32>
    %504 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%503 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global1004 = %504 : tensor<1x1024x14x14xf32>
    %505 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%504 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_242 = tensor.collapse_shape %505 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %506 = linalg.matmul ins(%collapsed_242, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_243 = tensor.expand_shape %506 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %507 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_243, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1011 = %507 : tensor<1x256x14x14xf32>
    %508 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%507 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1012 = %508 : tensor<1x256x14x14xf32>
    %509 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%508 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_244 = tensor.pad %509 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %510 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_244, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %511 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%510, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1019 = %511 : tensor<1x256x14x14xf32>
    %512 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%511 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1020 = %512 : tensor<1x256x14x14xf32>
    %513 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%512 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_245 = tensor.collapse_shape %513 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %514 = linalg.matmul ins(%collapsed_245, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_246 = tensor.expand_shape %514 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %515 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_246, %collapsed_116, %504 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global1028 = %515 : tensor<1x1024x14x14xf32>
    %516 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%515 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global1029 = %516 : tensor<1x1024x14x14xf32>
    %517 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%516 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_247 = tensor.collapse_shape %517 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %518 = linalg.matmul ins(%collapsed_247, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_248 = tensor.expand_shape %518 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %519 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_248, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1036 = %519 : tensor<1x256x14x14xf32>
    %520 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%519 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1037 = %520 : tensor<1x256x14x14xf32>
    %521 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%520 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_249 = tensor.pad %521 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %522 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_249, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %523 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%522, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1044 = %523 : tensor<1x256x14x14xf32>
    %524 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%523 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1045 = %524 : tensor<1x256x14x14xf32>
    %525 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%524 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_250 = tensor.collapse_shape %525 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %526 = linalg.matmul ins(%collapsed_250, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_251 = tensor.expand_shape %526 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %527 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_251, %collapsed_116, %516 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global1053 = %527 : tensor<1x1024x14x14xf32>
    %528 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%527 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global1054 = %528 : tensor<1x1024x14x14xf32>
    %529 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%528 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_252 = tensor.collapse_shape %529 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %530 = linalg.matmul ins(%collapsed_252, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_253 = tensor.expand_shape %530 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %531 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_253, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1061 = %531 : tensor<1x256x14x14xf32>
    %532 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%531 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1062 = %532 : tensor<1x256x14x14xf32>
    %533 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%532 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_254 = tensor.pad %533 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %534 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_254, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %535 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%534, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1069 = %535 : tensor<1x256x14x14xf32>
    %536 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%535 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1070 = %536 : tensor<1x256x14x14xf32>
    %537 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%536 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_255 = tensor.collapse_shape %537 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %538 = linalg.matmul ins(%collapsed_255, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_256 = tensor.expand_shape %538 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %539 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_256, %collapsed_116, %528 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global1078 = %539 : tensor<1x1024x14x14xf32>
    %540 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%539 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global1079 = %540 : tensor<1x1024x14x14xf32>
    %541 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%540 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_257 = tensor.collapse_shape %541 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %542 = linalg.matmul ins(%collapsed_257, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_258 = tensor.expand_shape %542 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %543 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_258, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1086 = %543 : tensor<1x256x14x14xf32>
    %544 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%543 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1087 = %544 : tensor<1x256x14x14xf32>
    %545 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%544 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_259 = tensor.pad %545 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %546 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_259, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %547 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%546, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1094 = %547 : tensor<1x256x14x14xf32>
    %548 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%547 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1095 = %548 : tensor<1x256x14x14xf32>
    %549 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%548 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_260 = tensor.collapse_shape %549 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %550 = linalg.matmul ins(%collapsed_260, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_261 = tensor.expand_shape %550 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %551 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_261, %collapsed_116, %540 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global1103 = %551 : tensor<1x1024x14x14xf32>
    %552 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%551 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global1104 = %552 : tensor<1x1024x14x14xf32>
    %553 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%552 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_262 = tensor.collapse_shape %553 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %554 = linalg.matmul ins(%collapsed_262, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_263 = tensor.expand_shape %554 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %555 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_263, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1111 = %555 : tensor<1x256x14x14xf32>
    %556 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%555 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1112 = %556 : tensor<1x256x14x14xf32>
    %557 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%556 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_264 = tensor.pad %557 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %558 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_264, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %559 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%558, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1119 = %559 : tensor<1x256x14x14xf32>
    %560 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%559 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1120 = %560 : tensor<1x256x14x14xf32>
    %561 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%560 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_265 = tensor.collapse_shape %561 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %562 = linalg.matmul ins(%collapsed_265, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_266 = tensor.expand_shape %562 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %563 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_266, %collapsed_116, %552 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global1128 = %563 : tensor<1x1024x14x14xf32>
    %564 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%563 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global1129 = %564 : tensor<1x1024x14x14xf32>
    %565 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%564 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_267 = tensor.collapse_shape %565 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %566 = linalg.matmul ins(%collapsed_267, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_268 = tensor.expand_shape %566 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %567 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_268, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1136 = %567 : tensor<1x256x14x14xf32>
    %568 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%567 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1137 = %568 : tensor<1x256x14x14xf32>
    %569 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%568 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_269 = tensor.pad %569 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %570 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_269, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %571 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%570, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1144 = %571 : tensor<1x256x14x14xf32>
    %572 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%571 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1145 = %572 : tensor<1x256x14x14xf32>
    %573 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%572 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_270 = tensor.collapse_shape %573 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %574 = linalg.matmul ins(%collapsed_270, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_271 = tensor.expand_shape %574 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %575 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_271, %collapsed_116, %564 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global1153 = %575 : tensor<1x1024x14x14xf32>
    %576 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%575 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global1154 = %576 : tensor<1x1024x14x14xf32>
    %577 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%576 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_272 = tensor.collapse_shape %577 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %578 = linalg.matmul ins(%collapsed_272, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_273 = tensor.expand_shape %578 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %579 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_273, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1161 = %579 : tensor<1x256x14x14xf32>
    %580 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%579 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1162 = %580 : tensor<1x256x14x14xf32>
    %581 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%580 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_274 = tensor.pad %581 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %582 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_274, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %583 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%582, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1169 = %583 : tensor<1x256x14x14xf32>
    %584 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%583 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1170 = %584 : tensor<1x256x14x14xf32>
    %585 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%584 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_275 = tensor.collapse_shape %585 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %586 = linalg.matmul ins(%collapsed_275, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_276 = tensor.expand_shape %586 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %587 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_276, %collapsed_116, %576 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global1178 = %587 : tensor<1x1024x14x14xf32>
    %588 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%587 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global1179 = %588 : tensor<1x1024x14x14xf32>
    %589 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%588 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_277 = tensor.collapse_shape %589 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %590 = linalg.matmul ins(%collapsed_277, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_278 = tensor.expand_shape %590 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %591 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_278, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1186 = %591 : tensor<1x256x14x14xf32>
    %592 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%591 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1187 = %592 : tensor<1x256x14x14xf32>
    %593 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%592 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_279 = tensor.pad %593 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %594 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_279, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %595 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%594, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1194 = %595 : tensor<1x256x14x14xf32>
    %596 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%595 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1195 = %596 : tensor<1x256x14x14xf32>
    %597 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%596 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_280 = tensor.collapse_shape %597 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %598 = linalg.matmul ins(%collapsed_280, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_281 = tensor.expand_shape %598 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %599 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_281, %collapsed_116, %588 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global1203 = %599 : tensor<1x1024x14x14xf32>
    %600 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%599 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global1204 = %600 : tensor<1x1024x14x14xf32>
    %601 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%600 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_282 = tensor.collapse_shape %601 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %602 = linalg.matmul ins(%collapsed_282, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_283 = tensor.expand_shape %602 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %603 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_283, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1211 = %603 : tensor<1x256x14x14xf32>
    %604 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%603 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1212 = %604 : tensor<1x256x14x14xf32>
    %605 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%604 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_284 = tensor.pad %605 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %606 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_284, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %607 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%606, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1219 = %607 : tensor<1x256x14x14xf32>
    %608 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%607 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1220 = %608 : tensor<1x256x14x14xf32>
    %609 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%608 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_285 = tensor.collapse_shape %609 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %610 = linalg.matmul ins(%collapsed_285, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_286 = tensor.expand_shape %610 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %611 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_286, %collapsed_116, %600 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global1228 = %611 : tensor<1x1024x14x14xf32>
    %612 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%611 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global1229 = %612 : tensor<1x1024x14x14xf32>
    %613 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%612 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_287 = tensor.collapse_shape %613 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %614 = linalg.matmul ins(%collapsed_287, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%205 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_288 = tensor.expand_shape %614 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %615 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_288, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1236 = %615 : tensor<1x256x14x14xf32>
    %616 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%615 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1237 = %616 : tensor<1x256x14x14xf32>
    %617 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%616 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_289 = tensor.pad %617 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %618 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_289, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %619 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%618, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1244 = %619 : tensor<1x256x14x14xf32>
    %620 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%619 : tensor<1x256x14x14xf32>) outs(%188 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global1245 = %620 : tensor<1x256x14x14xf32>
    %621 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%620 : tensor<1x256x14x14xf32>) outs(%185 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_290 = tensor.collapse_shape %621 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %622 = linalg.matmul ins(%collapsed_290, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%193 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_291 = tensor.expand_shape %622 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %623 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_291, %collapsed_116, %612 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global1253 = %623 : tensor<1x1024x14x14xf32>
    %624 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%623 : tensor<1x1024x14x14xf32>) outs(%195 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global1254 = %624 : tensor<1x1024x14x14xf32>
    %625 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%624 : tensor<1x1024x14x14xf32>) outs(%198 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_292 = tensor.collapse_shape %625 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %626 = tensor.empty() : tensor<196x512xf32>
    %627 = linalg.fill ins(%cst_0 : f32) outs(%626 : tensor<196x512xf32>) -> tensor<196x512xf32>
    %628 = linalg.matmul ins(%collapsed_292, %cst_8 : tensor<196x1024xf32>, tensor<1024x512xf32>) outs(%627 : tensor<196x512xf32>) -> tensor<196x512xf32>
    %expanded_293 = tensor.expand_shape %628 [[0, 1, 2], [3]] : tensor<196x512xf32> into tensor<1x14x14x512xf32>
    %629 = tensor.empty() : tensor<1x512x14x14xf32>
    %630 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_293, %collapsed_75 : tensor<1x14x14x512xf32>, tensor<1x512xf32>) outs(%629 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x512x14x14xf32>
    ml_program.global_store @global1261 = %630 : tensor<1x512x14x14xf32>
    %631 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%630 : tensor<1x512x14x14xf32>) outs(%629 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x512x14x14xf32>
    ml_program.global_store @global1262 = %631 : tensor<1x512x14x14xf32>
    %632 = tensor.empty() : tensor<1x14x14x512xf32>
    %633 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%631 : tensor<1x512x14x14xf32>) outs(%632 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x512xf32>
    %padded_294 = tensor.pad %633 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x512xf32> to tensor<1x16x16x512xf32>
    %634 = tensor.empty() : tensor<1x7x7x512xf32>
    %635 = linalg.fill ins(%cst_0 : f32) outs(%634 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %636 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded_294, %cst_5 : tensor<1x16x16x512xf32>, tensor<3x3x512x512xf32>) outs(%635 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %637 = tensor.empty() : tensor<1x512x7x7xf32>
    %638 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%636, %collapsed_75 : tensor<1x7x7x512xf32>, tensor<1x512xf32>) outs(%637 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global1269 = %638 : tensor<1x512x7x7xf32>
    %639 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%638 : tensor<1x512x7x7xf32>) outs(%637 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global1270 = %639 : tensor<1x512x7x7xf32>
    %640 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%639 : tensor<1x512x7x7xf32>) outs(%634 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %collapsed_295 = tensor.collapse_shape %640 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %641 = tensor.empty() : tensor<49x2048xf32>
    %642 = linalg.fill ins(%cst_0 : f32) outs(%641 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %643 = linalg.matmul ins(%collapsed_295, %cst_4 : tensor<49x512xf32>, tensor<512x2048xf32>) outs(%642 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %expanded_296 = tensor.expand_shape %643 [[0, 1, 2], [3]] : tensor<49x2048xf32> into tensor<1x7x7x2048xf32>
    %644 = tensor.empty() : tensor<1x2048x7x7xf32>
    %645 = tensor.empty() : tensor<1x2048x1x1xf32>
    %646 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%645 : tensor<1x2048x1x1xf32>) {
    ^bb0(%out: f32):
      %689 = math.rsqrt %cst_1 : f32
      linalg.yield %689 : f32
    } -> tensor<1x2048x1x1xf32>
    ml_program.global_store @global1276 = %646 : tensor<1x2048x1x1xf32>
    %collapsed_297 = tensor.collapse_shape %646 [[0], [1, 2, 3]] : tensor<1x2048x1x1xf32> into tensor<1x2048xf32>
    %647 = tensor.empty() : tensor<1x7x7x2048xf32>
    %648 = linalg.fill ins(%cst_0 : f32) outs(%647 : tensor<1x7x7x2048xf32>) -> tensor<1x7x7x2048xf32>
    %649 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%625, %cst_7 : tensor<1x14x14x1024xf32>, tensor<1x1x1024x2048xf32>) outs(%648 : tensor<1x7x7x2048xf32>) -> tensor<1x7x7x2048xf32>
    %650 = linalg.generic {indexing_maps = [#map2, #map3, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_296, %collapsed_297, %649 : tensor<1x7x7x2048xf32>, tensor<1x2048xf32>, tensor<1x7x7x2048xf32>) outs(%644 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in_311, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %in, %cst_0 : f32
      %695 = arith.subf %694, %cst : f32
      %696 = arith.mulf %695, %in_310 : f32
      %697 = arith.mulf %696, %cst : f32
      %698 = arith.addf %697, %cst : f32
      %699 = arith.addf %698, %693 : f32
      linalg.yield %699 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global1286 = %650 : tensor<1x2048x7x7xf32>
    %651 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%650 : tensor<1x2048x7x7xf32>) outs(%644 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global1287 = %651 : tensor<1x2048x7x7xf32>
    %652 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%651 : tensor<1x2048x7x7xf32>) outs(%647 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x2048xf32>
    %collapsed_298 = tensor.collapse_shape %652 [[0, 1, 2], [3]] : tensor<1x7x7x2048xf32> into tensor<49x2048xf32>
    %653 = tensor.empty() : tensor<49x512xf32>
    %654 = linalg.fill ins(%cst_0 : f32) outs(%653 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %655 = linalg.matmul ins(%collapsed_298, %cst_6 : tensor<49x2048xf32>, tensor<2048x512xf32>) outs(%654 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %expanded_299 = tensor.expand_shape %655 [[0, 1, 2], [3]] : tensor<49x512xf32> into tensor<1x7x7x512xf32>
    %656 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_299, %collapsed_75 : tensor<1x7x7x512xf32>, tensor<1x512xf32>) outs(%637 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global1294 = %656 : tensor<1x512x7x7xf32>
    %657 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%656 : tensor<1x512x7x7xf32>) outs(%637 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global1295 = %657 : tensor<1x512x7x7xf32>
    %658 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%657 : tensor<1x512x7x7xf32>) outs(%634 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_300 = tensor.pad %658 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %659 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_300, %cst_5 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%635 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %660 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%659, %collapsed_75 : tensor<1x7x7x512xf32>, tensor<1x512xf32>) outs(%637 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global1302 = %660 : tensor<1x512x7x7xf32>
    %661 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%660 : tensor<1x512x7x7xf32>) outs(%637 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global1303 = %661 : tensor<1x512x7x7xf32>
    %662 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%661 : tensor<1x512x7x7xf32>) outs(%634 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %collapsed_301 = tensor.collapse_shape %662 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %663 = linalg.matmul ins(%collapsed_301, %cst_4 : tensor<49x512xf32>, tensor<512x2048xf32>) outs(%642 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %expanded_302 = tensor.expand_shape %663 [[0, 1, 2], [3]] : tensor<49x2048xf32> into tensor<1x7x7x2048xf32>
    %664 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_302, %collapsed_297, %651 : tensor<1x7x7x2048xf32>, tensor<1x2048xf32>, tensor<1x2048x7x7xf32>) outs(%644 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global1311 = %664 : tensor<1x2048x7x7xf32>
    %665 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%664 : tensor<1x2048x7x7xf32>) outs(%644 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global1312 = %665 : tensor<1x2048x7x7xf32>
    %666 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%665 : tensor<1x2048x7x7xf32>) outs(%647 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x2048xf32>
    %collapsed_303 = tensor.collapse_shape %666 [[0, 1, 2], [3]] : tensor<1x7x7x2048xf32> into tensor<49x2048xf32>
    %667 = linalg.matmul ins(%collapsed_303, %cst_6 : tensor<49x2048xf32>, tensor<2048x512xf32>) outs(%654 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %expanded_304 = tensor.expand_shape %667 [[0, 1, 2], [3]] : tensor<49x512xf32> into tensor<1x7x7x512xf32>
    %668 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_304, %collapsed_75 : tensor<1x7x7x512xf32>, tensor<1x512xf32>) outs(%637 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global1319 = %668 : tensor<1x512x7x7xf32>
    %669 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%668 : tensor<1x512x7x7xf32>) outs(%637 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global1320 = %669 : tensor<1x512x7x7xf32>
    %670 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%669 : tensor<1x512x7x7xf32>) outs(%634 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_305 = tensor.pad %670 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %671 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_305, %cst_5 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%635 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %672 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%671, %collapsed_75 : tensor<1x7x7x512xf32>, tensor<1x512xf32>) outs(%637 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_310: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      linalg.yield %693 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global1327 = %672 : tensor<1x512x7x7xf32>
    %673 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%672 : tensor<1x512x7x7xf32>) outs(%637 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global1328 = %673 : tensor<1x512x7x7xf32>
    %674 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%673 : tensor<1x512x7x7xf32>) outs(%634 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %collapsed_306 = tensor.collapse_shape %674 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %675 = linalg.matmul ins(%collapsed_306, %cst_4 : tensor<49x512xf32>, tensor<512x2048xf32>) outs(%642 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %expanded_307 = tensor.expand_shape %675 [[0, 1, 2], [3]] : tensor<49x2048xf32> into tensor<1x7x7x2048xf32>
    %676 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_307, %collapsed_297, %665 : tensor<1x7x7x2048xf32>, tensor<1x2048xf32>, tensor<1x2048x7x7xf32>) outs(%644 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_310: f32, %in_311: f32, %out: f32):
      %689 = arith.addf %in, %cst_0 : f32
      %690 = arith.subf %689, %cst : f32
      %691 = arith.mulf %690, %in_310 : f32
      %692 = arith.mulf %691, %cst : f32
      %693 = arith.addf %692, %cst : f32
      %694 = arith.addf %693, %in_311 : f32
      linalg.yield %694 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global1336 = %676 : tensor<1x2048x7x7xf32>
    %677 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%676 : tensor<1x2048x7x7xf32>) outs(%644 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.minf %in, %cst_2 : f32
      %690 = arith.maxf %689, %cst_0 : f32
      linalg.yield %690 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global1337 = %677 : tensor<1x2048x7x7xf32>
    %678 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%677 : tensor<1x2048x7x7xf32>) outs(%647 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x2048xf32>
    %679 = tensor.empty() : tensor<1x1x1x2048xf32>
    %680 = linalg.fill ins(%cst_0 : f32) outs(%679 : tensor<1x1x1x2048xf32>) -> tensor<1x1x1x2048xf32>
    %681 = tensor.empty() : tensor<7x7xf32>
    %682 = linalg.pooling_nhwc_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%678, %681 : tensor<1x7x7x2048xf32>, tensor<7x7xf32>) outs(%680 : tensor<1x1x1x2048xf32>) -> tensor<1x1x1x2048xf32>
    %683 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%682 : tensor<1x1x1x2048xf32>) outs(%679 : tensor<1x1x1x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_3 : f32
      linalg.yield %689 : f32
    } -> tensor<1x1x1x2048xf32>
    %collapsed_308 = tensor.collapse_shape %683 [[0], [1, 2], [3]] : tensor<1x1x1x2048xf32> into tensor<1x1x2048xf32>
    %684 = tensor.empty() : tensor<1x1x1000xf32>
    %685 = linalg.fill ins(%cst_0 : f32) outs(%684 : tensor<1x1x1000xf32>) -> tensor<1x1x1000xf32>
    %686 = linalg.batch_matmul ins(%collapsed_308, %cst_25 : tensor<1x1x2048xf32>, tensor<1x2048x1000xf32>) outs(%685 : tensor<1x1x1000xf32>) -> tensor<1x1x1000xf32>
    %687 = tensor.empty() : tensor<1x1x1000xf32>
    %688 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = ["parallel", "parallel", "parallel"]} ins(%686 : tensor<1x1x1000xf32>) outs(%687 : tensor<1x1x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %cst : f32
      linalg.yield %689 : f32
    } -> tensor<1x1x1000xf32>
    %collapsed_309 = tensor.collapse_shape %688 [[0, 1], [2]] : tensor<1x1x1000xf32> into tensor<1x1000xf32>
    return %collapsed_309 : tensor<1x1000xf32>
  }
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 0.0204081628 : f32
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c1 = arith.constant 1 : index
    %cst_1 = arith.constant -3.40282347E+38 : f32
    %0 = ml_program.global_load @global10 : tensor<1x2048x1000xf32>
    %1 = ml_program.global_load @global11 : tensor<512x1x1x2048xf32>
    %2 = ml_program.global_load @global12 : tensor<2048x1x1x1024xf32>
    %3 = ml_program.global_load @global14 : tensor<1x2048x1x1xf32>
    %4 = ml_program.global_load @global15 : tensor<2048x1x1x512xf32>
    %5 = ml_program.global_load @global16 : tensor<512x3x3x512xf32>
    %6 = ml_program.global_load @global17 : tensor<512x1x1x1024xf32>
    %7 = ml_program.global_load @global18 : tensor<256x1x1x1024xf32>
    %8 = ml_program.global_load @global19 : tensor<1024x1x1x512xf32>
    %9 = ml_program.global_load @global21 : tensor<1x1024x1x1xf32>
    %10 = ml_program.global_load @global22 : tensor<1024x1x1x256xf32>
    %11 = ml_program.global_load @global23 : tensor<256x3x3x256xf32>
    %12 = ml_program.global_load @global24 : tensor<256x1x1x512xf32>
    %13 = ml_program.global_load @global25 : tensor<128x1x1x512xf32>
    %14 = ml_program.global_load @global26 : tensor<512x1x1x256xf32>
    %15 = ml_program.global_load @global28 : tensor<1x512x1x1xf32>
    %16 = ml_program.global_load @global29 : tensor<512x1x1x128xf32>
    %17 = ml_program.global_load @global30 : tensor<128x3x3x128xf32>
    %18 = ml_program.global_load @global32 : tensor<1x128x1x1xf32>
    %19 = ml_program.global_load @global33 : tensor<128x1x1x256xf32>
    %20 = ml_program.global_load @global34 : tensor<64x1x1x256xf32>
    %21 = ml_program.global_load @global36 : tensor<1x256x1x1xf32>
    %22 = ml_program.global_load @global37 : tensor<256x1x1x64xf32>
    %23 = ml_program.global_load @global38 : tensor<64x3x3x64xf32>
    %24 = ml_program.global_load @global39 : tensor<64x1x1x64xf32>
    %25 = ml_program.global_load @global41 : tensor<1x64x1x1xf32>
    %26 = ml_program.global_load @global42 : tensor<64x7x7x3xf32>
    %27 = ml_program.global_load @global48 : tensor<1x64x1x1xf32>
    %28 = ml_program.global_load @global51 : tensor<1x64x112x112xf32>
    %29 = ml_program.global_load @global52 : tensor<1x64x112x112xf32>
    %30 = ml_program.global_load @global53 : tensor<1x112x112x64xf32>
    %31 = ml_program.global_load @global54 : tensor<1x56x56x64xf32>
    %32 = ml_program.global_load @global60 : tensor<1x64x56x56xf32>
    %33 = ml_program.global_load @global61 : tensor<1x64x56x56xf32>
    %34 = ml_program.global_load @global68 : tensor<1x64x56x56xf32>
    %35 = ml_program.global_load @global69 : tensor<1x64x56x56xf32>
    %36 = ml_program.global_load @global75 : tensor<1x256x1x1xf32>
    %37 = ml_program.global_load @global85 : tensor<1x256x56x56xf32>
    %38 = ml_program.global_load @global86 : tensor<1x256x56x56xf32>
    %39 = ml_program.global_load @global93 : tensor<1x64x56x56xf32>
    %40 = ml_program.global_load @global94 : tensor<1x64x56x56xf32>
    %41 = ml_program.global_load @global101 : tensor<1x64x56x56xf32>
    %42 = ml_program.global_load @global102 : tensor<1x64x56x56xf32>
    %43 = ml_program.global_load @global110 : tensor<1x256x56x56xf32>
    %44 = ml_program.global_load @global111 : tensor<1x256x56x56xf32>
    %45 = ml_program.global_load @global118 : tensor<1x64x56x56xf32>
    %46 = ml_program.global_load @global119 : tensor<1x64x56x56xf32>
    %47 = ml_program.global_load @global126 : tensor<1x64x56x56xf32>
    %48 = ml_program.global_load @global127 : tensor<1x64x56x56xf32>
    %49 = ml_program.global_load @global135 : tensor<1x256x56x56xf32>
    %50 = ml_program.global_load @global136 : tensor<1x256x56x56xf32>
    %51 = ml_program.global_load @global142 : tensor<1x128x1x1xf32>
    %52 = ml_program.global_load @global145 : tensor<1x128x56x56xf32>
    %53 = ml_program.global_load @global146 : tensor<1x128x56x56xf32>
    %54 = ml_program.global_load @global153 : tensor<1x128x28x28xf32>
    %55 = ml_program.global_load @global154 : tensor<1x128x28x28xf32>
    %56 = ml_program.global_load @global160 : tensor<1x512x1x1xf32>
    %57 = ml_program.global_load @global170 : tensor<1x512x28x28xf32>
    %58 = ml_program.global_load @global171 : tensor<1x512x28x28xf32>
    %59 = ml_program.global_load @global178 : tensor<1x128x28x28xf32>
    %60 = ml_program.global_load @global179 : tensor<1x128x28x28xf32>
    %61 = ml_program.global_load @global186 : tensor<1x128x28x28xf32>
    %62 = ml_program.global_load @global187 : tensor<1x128x28x28xf32>
    %63 = ml_program.global_load @global195 : tensor<1x512x28x28xf32>
    %64 = ml_program.global_load @global196 : tensor<1x512x28x28xf32>
    %65 = ml_program.global_load @global203 : tensor<1x128x28x28xf32>
    %66 = ml_program.global_load @global204 : tensor<1x128x28x28xf32>
    %67 = ml_program.global_load @global211 : tensor<1x128x28x28xf32>
    %68 = ml_program.global_load @global212 : tensor<1x128x28x28xf32>
    %69 = ml_program.global_load @global220 : tensor<1x512x28x28xf32>
    %70 = ml_program.global_load @global221 : tensor<1x512x28x28xf32>
    %71 = ml_program.global_load @global228 : tensor<1x128x28x28xf32>
    %72 = ml_program.global_load @global229 : tensor<1x128x28x28xf32>
    %73 = ml_program.global_load @global236 : tensor<1x128x28x28xf32>
    %74 = ml_program.global_load @global237 : tensor<1x128x28x28xf32>
    %75 = ml_program.global_load @global245 : tensor<1x512x28x28xf32>
    %76 = ml_program.global_load @global246 : tensor<1x512x28x28xf32>
    %77 = ml_program.global_load @global253 : tensor<1x128x28x28xf32>
    %78 = ml_program.global_load @global254 : tensor<1x128x28x28xf32>
    %79 = ml_program.global_load @global261 : tensor<1x128x28x28xf32>
    %80 = ml_program.global_load @global262 : tensor<1x128x28x28xf32>
    %81 = ml_program.global_load @global270 : tensor<1x512x28x28xf32>
    %82 = ml_program.global_load @global271 : tensor<1x512x28x28xf32>
    %83 = ml_program.global_load @global278 : tensor<1x128x28x28xf32>
    %84 = ml_program.global_load @global279 : tensor<1x128x28x28xf32>
    %85 = ml_program.global_load @global286 : tensor<1x128x28x28xf32>
    %86 = ml_program.global_load @global287 : tensor<1x128x28x28xf32>
    %87 = ml_program.global_load @global295 : tensor<1x512x28x28xf32>
    %88 = ml_program.global_load @global296 : tensor<1x512x28x28xf32>
    %89 = ml_program.global_load @global303 : tensor<1x128x28x28xf32>
    %90 = ml_program.global_load @global304 : tensor<1x128x28x28xf32>
    %91 = ml_program.global_load @global311 : tensor<1x128x28x28xf32>
    %92 = ml_program.global_load @global312 : tensor<1x128x28x28xf32>
    %93 = ml_program.global_load @global320 : tensor<1x512x28x28xf32>
    %94 = ml_program.global_load @global321 : tensor<1x512x28x28xf32>
    %95 = ml_program.global_load @global328 : tensor<1x128x28x28xf32>
    %96 = ml_program.global_load @global329 : tensor<1x128x28x28xf32>
    %97 = ml_program.global_load @global336 : tensor<1x128x28x28xf32>
    %98 = ml_program.global_load @global337 : tensor<1x128x28x28xf32>
    %99 = ml_program.global_load @global345 : tensor<1x512x28x28xf32>
    %100 = ml_program.global_load @global346 : tensor<1x512x28x28xf32>
    %101 = ml_program.global_load @global353 : tensor<1x256x28x28xf32>
    %102 = ml_program.global_load @global354 : tensor<1x256x28x28xf32>
    %103 = ml_program.global_load @global361 : tensor<1x256x14x14xf32>
    %104 = ml_program.global_load @global362 : tensor<1x256x14x14xf32>
    %105 = ml_program.global_load @global368 : tensor<1x1024x1x1xf32>
    %106 = ml_program.global_load @global378 : tensor<1x1024x14x14xf32>
    %107 = ml_program.global_load @global379 : tensor<1x1024x14x14xf32>
    %108 = ml_program.global_load @global386 : tensor<1x256x14x14xf32>
    %109 = ml_program.global_load @global387 : tensor<1x256x14x14xf32>
    %110 = ml_program.global_load @global394 : tensor<1x256x14x14xf32>
    %111 = ml_program.global_load @global395 : tensor<1x256x14x14xf32>
    %112 = ml_program.global_load @global403 : tensor<1x1024x14x14xf32>
    %113 = ml_program.global_load @global404 : tensor<1x1024x14x14xf32>
    %114 = ml_program.global_load @global411 : tensor<1x256x14x14xf32>
    %115 = ml_program.global_load @global412 : tensor<1x256x14x14xf32>
    %116 = ml_program.global_load @global419 : tensor<1x256x14x14xf32>
    %117 = ml_program.global_load @global420 : tensor<1x256x14x14xf32>
    %118 = ml_program.global_load @global428 : tensor<1x1024x14x14xf32>
    %119 = ml_program.global_load @global429 : tensor<1x1024x14x14xf32>
    %120 = ml_program.global_load @global436 : tensor<1x256x14x14xf32>
    %121 = ml_program.global_load @global437 : tensor<1x256x14x14xf32>
    %122 = ml_program.global_load @global444 : tensor<1x256x14x14xf32>
    %123 = ml_program.global_load @global445 : tensor<1x256x14x14xf32>
    %124 = ml_program.global_load @global453 : tensor<1x1024x14x14xf32>
    %125 = ml_program.global_load @global454 : tensor<1x1024x14x14xf32>
    %126 = ml_program.global_load @global461 : tensor<1x256x14x14xf32>
    %127 = ml_program.global_load @global462 : tensor<1x256x14x14xf32>
    %128 = ml_program.global_load @global469 : tensor<1x256x14x14xf32>
    %129 = ml_program.global_load @global470 : tensor<1x256x14x14xf32>
    %130 = ml_program.global_load @global478 : tensor<1x1024x14x14xf32>
    %131 = ml_program.global_load @global479 : tensor<1x1024x14x14xf32>
    %132 = ml_program.global_load @global486 : tensor<1x256x14x14xf32>
    %133 = ml_program.global_load @global487 : tensor<1x256x14x14xf32>
    %134 = ml_program.global_load @global494 : tensor<1x256x14x14xf32>
    %135 = ml_program.global_load @global495 : tensor<1x256x14x14xf32>
    %136 = ml_program.global_load @global503 : tensor<1x1024x14x14xf32>
    %137 = ml_program.global_load @global504 : tensor<1x1024x14x14xf32>
    %138 = ml_program.global_load @global511 : tensor<1x256x14x14xf32>
    %139 = ml_program.global_load @global512 : tensor<1x256x14x14xf32>
    %140 = ml_program.global_load @global519 : tensor<1x256x14x14xf32>
    %141 = ml_program.global_load @global520 : tensor<1x256x14x14xf32>
    %142 = ml_program.global_load @global528 : tensor<1x1024x14x14xf32>
    %143 = ml_program.global_load @global529 : tensor<1x1024x14x14xf32>
    %144 = ml_program.global_load @global536 : tensor<1x256x14x14xf32>
    %145 = ml_program.global_load @global537 : tensor<1x256x14x14xf32>
    %146 = ml_program.global_load @global544 : tensor<1x256x14x14xf32>
    %147 = ml_program.global_load @global545 : tensor<1x256x14x14xf32>
    %148 = ml_program.global_load @global553 : tensor<1x1024x14x14xf32>
    %149 = ml_program.global_load @global554 : tensor<1x1024x14x14xf32>
    %150 = ml_program.global_load @global561 : tensor<1x256x14x14xf32>
    %151 = ml_program.global_load @global562 : tensor<1x256x14x14xf32>
    %152 = ml_program.global_load @global569 : tensor<1x256x14x14xf32>
    %153 = ml_program.global_load @global570 : tensor<1x256x14x14xf32>
    %154 = ml_program.global_load @global578 : tensor<1x1024x14x14xf32>
    %155 = ml_program.global_load @global579 : tensor<1x1024x14x14xf32>
    %156 = ml_program.global_load @global586 : tensor<1x256x14x14xf32>
    %157 = ml_program.global_load @global587 : tensor<1x256x14x14xf32>
    %158 = ml_program.global_load @global594 : tensor<1x256x14x14xf32>
    %159 = ml_program.global_load @global595 : tensor<1x256x14x14xf32>
    %160 = ml_program.global_load @global603 : tensor<1x1024x14x14xf32>
    %161 = ml_program.global_load @global604 : tensor<1x1024x14x14xf32>
    %162 = ml_program.global_load @global611 : tensor<1x256x14x14xf32>
    %163 = ml_program.global_load @global612 : tensor<1x256x14x14xf32>
    %164 = ml_program.global_load @global619 : tensor<1x256x14x14xf32>
    %165 = ml_program.global_load @global620 : tensor<1x256x14x14xf32>
    %166 = ml_program.global_load @global628 : tensor<1x1024x14x14xf32>
    %167 = ml_program.global_load @global629 : tensor<1x1024x14x14xf32>
    %168 = ml_program.global_load @global636 : tensor<1x256x14x14xf32>
    %169 = ml_program.global_load @global637 : tensor<1x256x14x14xf32>
    %170 = ml_program.global_load @global644 : tensor<1x256x14x14xf32>
    %171 = ml_program.global_load @global645 : tensor<1x256x14x14xf32>
    %172 = ml_program.global_load @global653 : tensor<1x1024x14x14xf32>
    %173 = ml_program.global_load @global654 : tensor<1x1024x14x14xf32>
    %174 = ml_program.global_load @global661 : tensor<1x256x14x14xf32>
    %175 = ml_program.global_load @global662 : tensor<1x256x14x14xf32>
    %176 = ml_program.global_load @global669 : tensor<1x256x14x14xf32>
    %177 = ml_program.global_load @global670 : tensor<1x256x14x14xf32>
    %178 = ml_program.global_load @global678 : tensor<1x1024x14x14xf32>
    %179 = ml_program.global_load @global679 : tensor<1x1024x14x14xf32>
    %180 = ml_program.global_load @global686 : tensor<1x256x14x14xf32>
    %181 = ml_program.global_load @global687 : tensor<1x256x14x14xf32>
    %182 = ml_program.global_load @global694 : tensor<1x256x14x14xf32>
    %183 = ml_program.global_load @global695 : tensor<1x256x14x14xf32>
    %184 = ml_program.global_load @global703 : tensor<1x1024x14x14xf32>
    %185 = ml_program.global_load @global704 : tensor<1x1024x14x14xf32>
    %186 = ml_program.global_load @global711 : tensor<1x256x14x14xf32>
    %187 = ml_program.global_load @global712 : tensor<1x256x14x14xf32>
    %188 = ml_program.global_load @global719 : tensor<1x256x14x14xf32>
    %189 = ml_program.global_load @global720 : tensor<1x256x14x14xf32>
    %190 = ml_program.global_load @global728 : tensor<1x1024x14x14xf32>
    %191 = ml_program.global_load @global729 : tensor<1x1024x14x14xf32>
    %192 = ml_program.global_load @global736 : tensor<1x256x14x14xf32>
    %193 = ml_program.global_load @global737 : tensor<1x256x14x14xf32>
    %194 = ml_program.global_load @global744 : tensor<1x256x14x14xf32>
    %195 = ml_program.global_load @global745 : tensor<1x256x14x14xf32>
    %196 = ml_program.global_load @global753 : tensor<1x1024x14x14xf32>
    %197 = ml_program.global_load @global754 : tensor<1x1024x14x14xf32>
    %198 = ml_program.global_load @global761 : tensor<1x256x14x14xf32>
    %199 = ml_program.global_load @global762 : tensor<1x256x14x14xf32>
    %200 = ml_program.global_load @global769 : tensor<1x256x14x14xf32>
    %201 = ml_program.global_load @global770 : tensor<1x256x14x14xf32>
    %202 = ml_program.global_load @global778 : tensor<1x1024x14x14xf32>
    %203 = ml_program.global_load @global779 : tensor<1x1024x14x14xf32>
    %204 = ml_program.global_load @global786 : tensor<1x256x14x14xf32>
    %205 = ml_program.global_load @global787 : tensor<1x256x14x14xf32>
    %206 = ml_program.global_load @global794 : tensor<1x256x14x14xf32>
    %207 = ml_program.global_load @global795 : tensor<1x256x14x14xf32>
    %208 = ml_program.global_load @global803 : tensor<1x1024x14x14xf32>
    %209 = ml_program.global_load @global804 : tensor<1x1024x14x14xf32>
    %210 = ml_program.global_load @global811 : tensor<1x256x14x14xf32>
    %211 = ml_program.global_load @global812 : tensor<1x256x14x14xf32>
    %212 = ml_program.global_load @global819 : tensor<1x256x14x14xf32>
    %213 = ml_program.global_load @global820 : tensor<1x256x14x14xf32>
    %214 = ml_program.global_load @global828 : tensor<1x1024x14x14xf32>
    %215 = ml_program.global_load @global829 : tensor<1x1024x14x14xf32>
    %216 = ml_program.global_load @global836 : tensor<1x256x14x14xf32>
    %217 = ml_program.global_load @global837 : tensor<1x256x14x14xf32>
    %218 = ml_program.global_load @global844 : tensor<1x256x14x14xf32>
    %219 = ml_program.global_load @global845 : tensor<1x256x14x14xf32>
    %220 = ml_program.global_load @global853 : tensor<1x1024x14x14xf32>
    %221 = ml_program.global_load @global854 : tensor<1x1024x14x14xf32>
    %222 = ml_program.global_load @global861 : tensor<1x256x14x14xf32>
    %223 = ml_program.global_load @global862 : tensor<1x256x14x14xf32>
    %224 = ml_program.global_load @global869 : tensor<1x256x14x14xf32>
    %225 = ml_program.global_load @global870 : tensor<1x256x14x14xf32>
    %226 = ml_program.global_load @global878 : tensor<1x1024x14x14xf32>
    %227 = ml_program.global_load @global879 : tensor<1x1024x14x14xf32>
    %228 = ml_program.global_load @global886 : tensor<1x256x14x14xf32>
    %229 = ml_program.global_load @global887 : tensor<1x256x14x14xf32>
    %230 = ml_program.global_load @global894 : tensor<1x256x14x14xf32>
    %231 = ml_program.global_load @global895 : tensor<1x256x14x14xf32>
    %232 = ml_program.global_load @global903 : tensor<1x1024x14x14xf32>
    %233 = ml_program.global_load @global904 : tensor<1x1024x14x14xf32>
    %234 = ml_program.global_load @global911 : tensor<1x256x14x14xf32>
    %235 = ml_program.global_load @global912 : tensor<1x256x14x14xf32>
    %236 = ml_program.global_load @global919 : tensor<1x256x14x14xf32>
    %237 = ml_program.global_load @global920 : tensor<1x256x14x14xf32>
    %238 = ml_program.global_load @global928 : tensor<1x1024x14x14xf32>
    %239 = ml_program.global_load @global929 : tensor<1x1024x14x14xf32>
    %240 = ml_program.global_load @global936 : tensor<1x256x14x14xf32>
    %241 = ml_program.global_load @global937 : tensor<1x256x14x14xf32>
    %242 = ml_program.global_load @global944 : tensor<1x256x14x14xf32>
    %243 = ml_program.global_load @global945 : tensor<1x256x14x14xf32>
    %244 = ml_program.global_load @global953 : tensor<1x1024x14x14xf32>
    %245 = ml_program.global_load @global954 : tensor<1x1024x14x14xf32>
    %246 = ml_program.global_load @global961 : tensor<1x256x14x14xf32>
    %247 = ml_program.global_load @global962 : tensor<1x256x14x14xf32>
    %248 = ml_program.global_load @global969 : tensor<1x256x14x14xf32>
    %249 = ml_program.global_load @global970 : tensor<1x256x14x14xf32>
    %250 = ml_program.global_load @global978 : tensor<1x1024x14x14xf32>
    %251 = ml_program.global_load @global979 : tensor<1x1024x14x14xf32>
    %252 = ml_program.global_load @global986 : tensor<1x256x14x14xf32>
    %253 = ml_program.global_load @global987 : tensor<1x256x14x14xf32>
    %254 = ml_program.global_load @global994 : tensor<1x256x14x14xf32>
    %255 = ml_program.global_load @global995 : tensor<1x256x14x14xf32>
    %256 = ml_program.global_load @global1003 : tensor<1x1024x14x14xf32>
    %257 = ml_program.global_load @global1004 : tensor<1x1024x14x14xf32>
    %258 = ml_program.global_load @global1011 : tensor<1x256x14x14xf32>
    %259 = ml_program.global_load @global1012 : tensor<1x256x14x14xf32>
    %260 = ml_program.global_load @global1019 : tensor<1x256x14x14xf32>
    %261 = ml_program.global_load @global1020 : tensor<1x256x14x14xf32>
    %262 = ml_program.global_load @global1028 : tensor<1x1024x14x14xf32>
    %263 = ml_program.global_load @global1029 : tensor<1x1024x14x14xf32>
    %264 = ml_program.global_load @global1036 : tensor<1x256x14x14xf32>
    %265 = ml_program.global_load @global1037 : tensor<1x256x14x14xf32>
    %266 = ml_program.global_load @global1044 : tensor<1x256x14x14xf32>
    %267 = ml_program.global_load @global1045 : tensor<1x256x14x14xf32>
    %268 = ml_program.global_load @global1053 : tensor<1x1024x14x14xf32>
    %269 = ml_program.global_load @global1054 : tensor<1x1024x14x14xf32>
    %270 = ml_program.global_load @global1061 : tensor<1x256x14x14xf32>
    %271 = ml_program.global_load @global1062 : tensor<1x256x14x14xf32>
    %272 = ml_program.global_load @global1069 : tensor<1x256x14x14xf32>
    %273 = ml_program.global_load @global1070 : tensor<1x256x14x14xf32>
    %274 = ml_program.global_load @global1078 : tensor<1x1024x14x14xf32>
    %275 = ml_program.global_load @global1079 : tensor<1x1024x14x14xf32>
    %276 = ml_program.global_load @global1086 : tensor<1x256x14x14xf32>
    %277 = ml_program.global_load @global1087 : tensor<1x256x14x14xf32>
    %278 = ml_program.global_load @global1094 : tensor<1x256x14x14xf32>
    %279 = ml_program.global_load @global1095 : tensor<1x256x14x14xf32>
    %280 = ml_program.global_load @global1103 : tensor<1x1024x14x14xf32>
    %281 = ml_program.global_load @global1104 : tensor<1x1024x14x14xf32>
    %282 = ml_program.global_load @global1111 : tensor<1x256x14x14xf32>
    %283 = ml_program.global_load @global1112 : tensor<1x256x14x14xf32>
    %284 = ml_program.global_load @global1119 : tensor<1x256x14x14xf32>
    %285 = ml_program.global_load @global1120 : tensor<1x256x14x14xf32>
    %286 = ml_program.global_load @global1128 : tensor<1x1024x14x14xf32>
    %287 = ml_program.global_load @global1129 : tensor<1x1024x14x14xf32>
    %288 = ml_program.global_load @global1136 : tensor<1x256x14x14xf32>
    %289 = ml_program.global_load @global1137 : tensor<1x256x14x14xf32>
    %290 = ml_program.global_load @global1144 : tensor<1x256x14x14xf32>
    %291 = ml_program.global_load @global1145 : tensor<1x256x14x14xf32>
    %292 = ml_program.global_load @global1153 : tensor<1x1024x14x14xf32>
    %293 = ml_program.global_load @global1154 : tensor<1x1024x14x14xf32>
    %294 = ml_program.global_load @global1161 : tensor<1x256x14x14xf32>
    %295 = ml_program.global_load @global1162 : tensor<1x256x14x14xf32>
    %296 = ml_program.global_load @global1169 : tensor<1x256x14x14xf32>
    %297 = ml_program.global_load @global1170 : tensor<1x256x14x14xf32>
    %298 = ml_program.global_load @global1178 : tensor<1x1024x14x14xf32>
    %299 = ml_program.global_load @global1179 : tensor<1x1024x14x14xf32>
    %300 = ml_program.global_load @global1186 : tensor<1x256x14x14xf32>
    %301 = ml_program.global_load @global1187 : tensor<1x256x14x14xf32>
    %302 = ml_program.global_load @global1194 : tensor<1x256x14x14xf32>
    %303 = ml_program.global_load @global1195 : tensor<1x256x14x14xf32>
    %304 = ml_program.global_load @global1203 : tensor<1x1024x14x14xf32>
    %305 = ml_program.global_load @global1204 : tensor<1x1024x14x14xf32>
    %306 = ml_program.global_load @global1211 : tensor<1x256x14x14xf32>
    %307 = ml_program.global_load @global1212 : tensor<1x256x14x14xf32>
    %308 = ml_program.global_load @global1219 : tensor<1x256x14x14xf32>
    %309 = ml_program.global_load @global1220 : tensor<1x256x14x14xf32>
    %310 = ml_program.global_load @global1228 : tensor<1x1024x14x14xf32>
    %311 = ml_program.global_load @global1229 : tensor<1x1024x14x14xf32>
    %312 = ml_program.global_load @global1236 : tensor<1x256x14x14xf32>
    %313 = ml_program.global_load @global1237 : tensor<1x256x14x14xf32>
    %314 = ml_program.global_load @global1244 : tensor<1x256x14x14xf32>
    %315 = ml_program.global_load @global1245 : tensor<1x256x14x14xf32>
    %316 = ml_program.global_load @global1253 : tensor<1x1024x14x14xf32>
    %317 = ml_program.global_load @global1254 : tensor<1x1024x14x14xf32>
    %318 = ml_program.global_load @global1261 : tensor<1x512x14x14xf32>
    %319 = ml_program.global_load @global1262 : tensor<1x512x14x14xf32>
    %320 = ml_program.global_load @global1269 : tensor<1x512x7x7xf32>
    %321 = ml_program.global_load @global1270 : tensor<1x512x7x7xf32>
    %322 = ml_program.global_load @global1276 : tensor<1x2048x1x1xf32>
    %323 = ml_program.global_load @global1286 : tensor<1x2048x7x7xf32>
    %324 = ml_program.global_load @global1287 : tensor<1x2048x7x7xf32>
    %325 = ml_program.global_load @global1294 : tensor<1x512x7x7xf32>
    %326 = ml_program.global_load @global1295 : tensor<1x512x7x7xf32>
    %327 = ml_program.global_load @global1302 : tensor<1x512x7x7xf32>
    %328 = ml_program.global_load @global1303 : tensor<1x512x7x7xf32>
    %329 = ml_program.global_load @global1311 : tensor<1x2048x7x7xf32>
    %330 = ml_program.global_load @global1312 : tensor<1x2048x7x7xf32>
    %331 = ml_program.global_load @global1319 : tensor<1x512x7x7xf32>
    %332 = ml_program.global_load @global1320 : tensor<1x512x7x7xf32>
    %333 = ml_program.global_load @global1327 : tensor<1x512x7x7xf32>
    %334 = ml_program.global_load @global1328 : tensor<1x512x7x7xf32>
    %335 = ml_program.global_load @global1336 : tensor<1x2048x7x7xf32>
    %336 = ml_program.global_load @global1337 : tensor<1x2048x7x7xf32>
    %expanded = tensor.expand_shape %arg0 [[0, 1], [2]] : tensor<1x1000xf32> into tensor<1x1x1000xf32>
    %337 = tensor.empty() : tensor<1x1000x2048xf32>
    %338 = linalg.generic {indexing_maps = [#map5, #map4], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0 : tensor<1x2048x1000xf32>) outs(%337 : tensor<1x1000x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1000x2048xf32>
    %339 = tensor.empty() : tensor<1x1x2048xf32>
    %340 = linalg.fill ins(%cst : f32) outs(%339 : tensor<1x1x2048xf32>) -> tensor<1x1x2048xf32>
    %341 = linalg.batch_matmul ins(%expanded, %338 : tensor<1x1x1000xf32>, tensor<1x1000x2048xf32>) outs(%340 : tensor<1x1x2048xf32>) -> tensor<1x1x2048xf32>
    %342 = tensor.empty() : tensor<1x7x7x2048xf32>
    %343 = tensor.empty() : tensor<1x2048x7x7xf32>
    %expanded_2 = tensor.expand_shape %335 [[0, 1], [2], [3], [4]] : tensor<1x2048x7x7xf32> into tensor<1x1x2048x7x7xf32>
    %expanded_3 = tensor.expand_shape %336 [[0, 1], [2], [3], [4]] : tensor<1x2048x7x7xf32> into tensor<1x1x2048x7x7xf32>
    %344 = tensor.empty() : tensor<1x1x2048x7x7xf32>
    %345 = linalg.generic {indexing_maps = [#map6, #map6, #map7, #map6], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_2, %expanded_3, %341 : tensor<1x1x2048x7x7xf32>, tensor<1x1x2048x7x7xf32>, tensor<1x1x2048xf32>) outs(%344 : tensor<1x1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_330, %cst_0 : f32
      %852 = arith.cmpf oeq, %in, %in_329 : f32
      %853 = arith.select %852, %851, %cst : f32
      linalg.yield %853 : f32
    } -> tensor<1x1x2048x7x7xf32>
    %collapsed = tensor.collapse_shape %345 [[0, 1], [2], [3], [4]] : tensor<1x1x2048x7x7xf32> into tensor<1x2048x7x7xf32>
    %collapsed_4 = tensor.collapse_shape %3 [[0], [1, 2, 3]] : tensor<1x2048x1x1xf32> into tensor<1x2048xf32>
    %collapsed_5 = tensor.collapse_shape %322 [[0], [1, 2, 3]] : tensor<1x2048x1x1xf32> into tensor<1x2048xf32>
    %346 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_5, %collapsed_4, %collapsed : tensor<1x2048xf32>, tensor<1x2048xf32>, tensor<1x2048x7x7xf32>) outs(%342 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x7x7x2048xf32>
    %347 = tensor.empty() : tensor<512xf32>
    %collapsed_6 = tensor.collapse_shape %346 [[0, 1, 2], [3]] : tensor<1x7x7x2048xf32> into tensor<49x2048xf32>
    %348 = tensor.empty() : tensor<49x512xf32>
    %349 = linalg.fill ins(%cst : f32) outs(%348 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %350 = tensor.empty() : tensor<2048x512x1x1xf32>
    %351 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<2048x1x1x512xf32>) outs(%350 : tensor<2048x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512x1x1xf32>
    %collapsed_7 = tensor.collapse_shape %351 [[0], [1, 2, 3]] : tensor<2048x512x1x1xf32> into tensor<2048x512xf32>
    %352 = linalg.matmul ins(%collapsed_6, %collapsed_7 : tensor<49x2048xf32>, tensor<2048x512xf32>) outs(%349 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %expanded_8 = tensor.expand_shape %352 [[0, 1, 2], [3]] : tensor<49x512xf32> into tensor<1x7x7x512xf32>
    %collapsed_9 = tensor.collapse_shape %15 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %collapsed_10 = tensor.collapse_shape %56 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %353 = tensor.empty() : tensor<1x7x7x512xf32>
    %354 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %333, %334, %347, %expanded_8 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%353 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x7x7x512xf32>
    %355 = tensor.empty() : tensor<512x3x3x512xf32>
    %356 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5 : tensor<512x3x3x512xf32>) outs(%355 : tensor<512x3x3x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x3x3x512xf32>
    %357 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%355 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %851 = linalg.index 0 : index
      %852 = linalg.index 1 : index
      %853 = arith.subi %c2, %852 : index
      %854 = linalg.index 2 : index
      %855 = linalg.index 3 : index
      %extracted = tensor.extract %356[%851, %853, %854, %855] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded = tensor.pad %354 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %358 = tensor.empty() : tensor<3x3x512x512xf32>
    %359 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%358 : tensor<3x3x512x512xf32>) {
    ^bb0(%out: f32):
      %851 = linalg.index 0 : index
      %852 = linalg.index 1 : index
      %853 = linalg.index 2 : index
      %854 = linalg.index 3 : index
      %855 = arith.subi %c2, %852 : index
      %extracted = tensor.extract %357[%854, %851, %855, %853] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x512x512xf32>
    %360 = linalg.fill ins(%cst : f32) outs(%353 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %361 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded, %359 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%360 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %362 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %331, %332, %347, %361 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%353 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x7x7x512xf32>
    %363 = tensor.empty() : tensor<2048xf32>
    %collapsed_11 = tensor.collapse_shape %362 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %364 = tensor.empty() : tensor<49x2048xf32>
    %365 = linalg.fill ins(%cst : f32) outs(%364 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %366 = tensor.empty() : tensor<512x2048x1x1xf32>
    %367 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1 : tensor<512x1x1x2048xf32>) outs(%366 : tensor<512x2048x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048x1x1xf32>
    %collapsed_12 = tensor.collapse_shape %367 [[0], [1, 2, 3]] : tensor<512x2048x1x1xf32> into tensor<512x2048xf32>
    %368 = linalg.matmul ins(%collapsed_11, %collapsed_12 : tensor<49x512xf32>, tensor<512x2048xf32>) outs(%365 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %expanded_13 = tensor.expand_shape %368 [[0, 1, 2], [3]] : tensor<49x2048xf32> into tensor<1x7x7x2048xf32>
    %369 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329, %330, %collapsed, %363, %expanded_13 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>, tensor<2048xf32>, tensor<1x7x7x2048xf32>) outs(%343 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x2048x7x7xf32>
    %370 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_5, %collapsed_4, %369 : tensor<1x2048xf32>, tensor<1x2048xf32>, tensor<1x2048x7x7xf32>) outs(%342 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x7x7x2048xf32>
    %collapsed_14 = tensor.collapse_shape %370 [[0, 1, 2], [3]] : tensor<1x7x7x2048xf32> into tensor<49x2048xf32>
    %371 = linalg.matmul ins(%collapsed_14, %collapsed_7 : tensor<49x2048xf32>, tensor<2048x512xf32>) outs(%349 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %expanded_15 = tensor.expand_shape %371 [[0, 1, 2], [3]] : tensor<49x512xf32> into tensor<1x7x7x512xf32>
    %372 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %327, %328, %347, %expanded_15 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%353 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x7x7x512xf32>
    %padded_16 = tensor.pad %372 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %373 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_16, %359 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%360 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %374 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %325, %326, %347, %373 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%353 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x7x7x512xf32>
    %collapsed_17 = tensor.collapse_shape %374 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %375 = linalg.matmul ins(%collapsed_17, %collapsed_12 : tensor<49x512xf32>, tensor<512x2048xf32>) outs(%365 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %expanded_18 = tensor.expand_shape %375 [[0, 1, 2], [3]] : tensor<49x2048xf32> into tensor<1x7x7x2048xf32>
    %376 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_5, %collapsed_4, %323, %324, %369, %363, %expanded_18 : tensor<1x2048xf32>, tensor<1x2048xf32>, tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>, tensor<2048xf32>, tensor<1x7x7x2048xf32>) outs(%342 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %in_334: f32, %out: f32):
      %851 = arith.addf %in_333, %in_334 : f32
      %852 = arith.addf %in_332, %851 : f32
      %853 = arith.cmpf oeq, %in_330, %in_331 : f32
      %854 = arith.select %853, %852, %cst : f32
      %855 = arith.mulf %in_329, %854 : f32
      %856 = arith.mulf %in, %855 : f32
      linalg.yield %856 : f32
    } -> tensor<1x7x7x2048xf32>
    %377 = tensor.empty() : tensor<1024x1x1x2048xf32>
    %378 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2 : tensor<2048x1x1x1024xf32>) outs(%377 : tensor<1024x1x1x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x1x1x2048xf32>
    %379 = tensor.empty() : tensor<1024xf32>
    %padded_19 = tensor.pad %378 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1024x1x1x2048xf32> to tensor<1024x2x2x2048xf32>
    %expanded_20 = tensor.expand_shape %padded_19 [[0, 1], [2, 3], [4], [5]] : tensor<1024x2x2x2048xf32> into tensor<1024x1x2x1x2x2048xf32>
    %collapsed_21 = tensor.collapse_shape %376 [[0, 1, 2], [3]] : tensor<1x7x7x2048xf32> into tensor<49x2048xf32>
    %380 = tensor.empty() : tensor<49x4096xf32>
    %381 = linalg.fill ins(%cst : f32) outs(%380 : tensor<49x4096xf32>) -> tensor<49x4096xf32>
    %382 = tensor.empty() : tensor<2048x2x2x1024x1x1xf32>
    %383 = linalg.generic {indexing_maps = [#map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_20 : tensor<1024x1x2x1x2x2048xf32>) outs(%382 : tensor<2048x2x2x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x2x2x1024x1x1xf32>
    %collapsed_22 = tensor.collapse_shape %383 [[0], [1, 2, 3, 4, 5]] : tensor<2048x2x2x1024x1x1xf32> into tensor<2048x4096xf32>
    %384 = linalg.matmul ins(%collapsed_21, %collapsed_22 : tensor<49x2048xf32>, tensor<2048x4096xf32>) outs(%381 : tensor<49x4096xf32>) -> tensor<49x4096xf32>
    %expanded_23 = tensor.expand_shape %384 [[0, 1, 2], [3, 4, 5]] : tensor<49x4096xf32> into tensor<1x7x7x2x2x1024xf32>
    %385 = tensor.empty() : tensor<1x14x14x1024xf32>
    %expanded_24 = tensor.expand_shape %379 [[0, 1]] : tensor<1024xf32> into tensor<1x1024xf32>
    %386 = linalg.matmul ins(%collapsed_21, %collapsed_7 : tensor<49x2048xf32>, tensor<2048x512xf32>) outs(%349 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %expanded_25 = tensor.expand_shape %386 [[0, 1, 2], [3]] : tensor<49x512xf32> into tensor<1x7x7x512xf32>
    %387 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %320, %321, %347, %expanded_25 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%353 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x7x7x512xf32>
    %padded_26 = tensor.pad %356 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<512x3x3x512xf32> to tensor<512x4x4x512xf32>
    %expanded_27 = tensor.expand_shape %padded_26 [[0], [1, 2], [3, 4], [5]] : tensor<512x4x4x512xf32> into tensor<512x2x2x2x2x512xf32>
    %388 = tensor.empty() : tensor<2x2x512x2x2x512xf32>
    %389 = linalg.generic {indexing_maps = [#map14, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_27 : tensor<512x2x2x2x2x512xf32>) outs(%388 : tensor<2x2x512x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x512x2x2x512xf32>
    %collapsed_28 = tensor.collapse_shape %389 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x512x2x2x512xf32> into tensor<2048x2x2x512xf32>
    %390 = tensor.empty() : tensor<2048x2x2x512xf32>
    %391 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%390 : tensor<2048x2x2x512xf32>) {
    ^bb0(%out: f32):
      %851 = linalg.index 0 : index
      %852 = linalg.index 1 : index
      %853 = arith.subi %c1, %852 : index
      %854 = linalg.index 2 : index
      %855 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_28[%851, %853, %854, %855] : tensor<2048x2x2x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<2048x2x2x512xf32>
    %padded_29 = tensor.pad %387 low[%c0, %c1, %c1, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %392 = tensor.empty() : tensor<2x2x512x2048xf32>
    %393 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%392 : tensor<2x2x512x2048xf32>) {
    ^bb0(%out: f32):
      %851 = linalg.index 0 : index
      %852 = linalg.index 1 : index
      %853 = linalg.index 2 : index
      %854 = linalg.index 3 : index
      %855 = arith.subi %c1, %852 : index
      %extracted = tensor.extract %391[%854, %851, %855, %853] : tensor<2048x2x2x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<2x2x512x2048xf32>
    %394 = tensor.empty() : tensor<1x8x8x2048xf32>
    %395 = linalg.fill ins(%cst : f32) outs(%394 : tensor<1x8x8x2048xf32>) -> tensor<1x8x8x2048xf32>
    %396 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_29, %393 : tensor<1x9x9x512xf32>, tensor<2x2x512x2048xf32>) outs(%395 : tensor<1x8x8x2048xf32>) -> tensor<1x8x8x2048xf32>
    %expanded_30 = tensor.expand_shape %396 [[0], [1], [2], [3, 4, 5]] : tensor<1x8x8x2048xf32> into tensor<1x8x8x2x2x512xf32>
    %397 = tensor.empty() : tensor<1x8x2x8x2x512xf32>
    %398 = linalg.generic {indexing_maps = [#map15, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_30 : tensor<1x8x8x2x2x512xf32>) outs(%397 : tensor<1x8x2x8x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %851 = arith.addf %in, %cst : f32
      linalg.yield %851 : f32
    } -> tensor<1x8x2x8x2x512xf32>
    %collapsed_31 = tensor.collapse_shape %398 [[0], [1, 2], [3, 4], [5]] : tensor<1x8x2x8x2x512xf32> into tensor<1x16x16x512xf32>
    %extracted_slice = tensor.extract_slice %collapsed_31[0, 1, 1, 0] [1, 14, 14, 512] [1, 1, 1, 1] : tensor<1x16x16x512xf32> to tensor<1x14x14x512xf32>
    %399 = tensor.empty() : tensor<1x14x14x512xf32>
    %expanded_32 = tensor.expand_shape %347 [[0, 1]] : tensor<512xf32> into tensor<1x512xf32>
    %400 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map1, #map8, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %318, %319, %extracted_slice, %expanded_32 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>, tensor<1x14x14x512xf32>, tensor<1x512xf32>) outs(%399 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x512xf32>
    %collapsed_33 = tensor.collapse_shape %400 [[0, 1, 2], [3]] : tensor<1x14x14x512xf32> into tensor<196x512xf32>
    %401 = tensor.empty() : tensor<196x1024xf32>
    %402 = linalg.fill ins(%cst : f32) outs(%401 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %403 = tensor.empty() : tensor<512x1024x1x1xf32>
    %404 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6 : tensor<512x1x1x1024xf32>) outs(%403 : tensor<512x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x1024x1x1xf32>
    %collapsed_34 = tensor.collapse_shape %404 [[0], [1, 2, 3]] : tensor<512x1024x1x1xf32> into tensor<512x1024xf32>
    %405 = linalg.matmul ins(%collapsed_33, %collapsed_34 : tensor<196x512xf32>, tensor<512x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_35 = tensor.expand_shape %405 [[0, 1, 2, 3, 4], [5]] : tensor<196x1024xf32> into tensor<1x7x2x7x2x1024xf32>
    %406 = tensor.empty() : tensor<1x1024x14x14xf32>
    %expanded_36 = tensor.expand_shape %316 [[0], [1], [2, 3], [4, 5]] : tensor<1x1024x14x14xf32> into tensor<1x1024x7x2x7x2xf32>
    %expanded_37 = tensor.expand_shape %317 [[0], [1], [2, 3], [4, 5]] : tensor<1x1024x14x14xf32> into tensor<1x1024x7x2x7x2xf32>
    %407 = tensor.empty() : tensor<1x1024x7x2x7x2xf32>
    %408 = linalg.generic {indexing_maps = [#map13, #map13, #map16, #map17, #map18, #map19, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_36, %expanded_37, %expanded_23, %expanded_24, %379, %expanded_35 : tensor<1x1024x7x2x7x2xf32>, tensor<1x1024x7x2x7x2xf32>, tensor<1x7x7x2x2x1024xf32>, tensor<1x1024xf32>, tensor<1024xf32>, tensor<1x7x2x7x2x1024xf32>) outs(%407 : tensor<1x1024x7x2x7x2xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_330, %cst : f32
      %852 = arith.addf %851, %in_331 : f32
      %853 = arith.addf %in_332, %in_333 : f32
      %854 = arith.addf %852, %853 : f32
      %855 = arith.cmpf oeq, %in, %in_329 : f32
      %856 = arith.select %855, %854, %cst : f32
      linalg.yield %856 : f32
    } -> tensor<1x1024x7x2x7x2xf32>
    %collapsed_38 = tensor.collapse_shape %408 [[0], [1], [2, 3], [4, 5]] : tensor<1x1024x7x2x7x2xf32> into tensor<1x1024x14x14xf32>
    %collapsed_39 = tensor.collapse_shape %9 [[0], [1, 2, 3]] : tensor<1x1024x1x1xf32> into tensor<1x1024xf32>
    %collapsed_40 = tensor.collapse_shape %105 [[0], [1, 2, 3]] : tensor<1x1024x1x1xf32> into tensor<1x1024xf32>
    %409 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %collapsed_38 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %410 = tensor.empty() : tensor<256xf32>
    %collapsed_41 = tensor.collapse_shape %409 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %411 = tensor.empty() : tensor<196x256xf32>
    %412 = linalg.fill ins(%cst : f32) outs(%411 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %413 = tensor.empty() : tensor<1024x256x1x1xf32>
    %414 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<1024x1x1x256xf32>) outs(%413 : tensor<1024x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x256x1x1xf32>
    %collapsed_42 = tensor.collapse_shape %414 [[0], [1, 2, 3]] : tensor<1024x256x1x1xf32> into tensor<1024x256xf32>
    %415 = linalg.matmul ins(%collapsed_41, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_43 = tensor.expand_shape %415 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %collapsed_44 = tensor.collapse_shape %21 [[0], [1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<1x256xf32>
    %collapsed_45 = tensor.collapse_shape %36 [[0], [1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<1x256xf32>
    %416 = tensor.empty() : tensor<1x14x14x256xf32>
    %417 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %314, %315, %410, %expanded_43 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %418 = tensor.empty() : tensor<256x3x3x256xf32>
    %419 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11 : tensor<256x3x3x256xf32>) outs(%418 : tensor<256x3x3x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x3x3x256xf32>
    %420 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%418 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %851 = linalg.index 0 : index
      %852 = linalg.index 1 : index
      %853 = arith.subi %c2, %852 : index
      %854 = linalg.index 2 : index
      %855 = linalg.index 3 : index
      %extracted = tensor.extract %419[%851, %853, %854, %855] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %padded_46 = tensor.pad %417 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %421 = tensor.empty() : tensor<3x3x256x256xf32>
    %422 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%421 : tensor<3x3x256x256xf32>) {
    ^bb0(%out: f32):
      %851 = linalg.index 0 : index
      %852 = linalg.index 1 : index
      %853 = linalg.index 2 : index
      %854 = linalg.index 3 : index
      %855 = arith.subi %c2, %852 : index
      %extracted = tensor.extract %420[%854, %851, %855, %853] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x256x256xf32>
    %423 = linalg.fill ins(%cst : f32) outs(%416 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %424 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_46, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %425 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %312, %313, %410, %424 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_47 = tensor.collapse_shape %425 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %426 = tensor.empty() : tensor<256x1024x1x1xf32>
    %427 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7 : tensor<256x1x1x1024xf32>) outs(%426 : tensor<256x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1024x1x1xf32>
    %collapsed_48 = tensor.collapse_shape %427 [[0], [1, 2, 3]] : tensor<256x1024x1x1xf32> into tensor<256x1024xf32>
    %428 = linalg.matmul ins(%collapsed_47, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_49 = tensor.expand_shape %428 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %429 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%310, %311, %collapsed_38, %379, %expanded_49 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %430 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %429 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_50 = tensor.collapse_shape %430 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %431 = linalg.matmul ins(%collapsed_50, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_51 = tensor.expand_shape %431 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %432 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %308, %309, %410, %expanded_51 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_52 = tensor.pad %432 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %433 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_52, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %434 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %306, %307, %410, %433 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_53 = tensor.collapse_shape %434 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %435 = linalg.matmul ins(%collapsed_53, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_54 = tensor.expand_shape %435 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %436 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304, %305, %429, %379, %expanded_54 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %437 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %436 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_55 = tensor.collapse_shape %437 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %438 = linalg.matmul ins(%collapsed_55, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_56 = tensor.expand_shape %438 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %439 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %302, %303, %410, %expanded_56 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_57 = tensor.pad %439 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %440 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_57, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %441 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %300, %301, %410, %440 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_58 = tensor.collapse_shape %441 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %442 = linalg.matmul ins(%collapsed_58, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_59 = tensor.expand_shape %442 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %443 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%298, %299, %436, %379, %expanded_59 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %444 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %443 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_60 = tensor.collapse_shape %444 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %445 = linalg.matmul ins(%collapsed_60, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_61 = tensor.expand_shape %445 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %446 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %296, %297, %410, %expanded_61 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_62 = tensor.pad %446 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %447 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_62, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %448 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %294, %295, %410, %447 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_63 = tensor.collapse_shape %448 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %449 = linalg.matmul ins(%collapsed_63, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_64 = tensor.expand_shape %449 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %450 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%292, %293, %443, %379, %expanded_64 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %451 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %450 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_65 = tensor.collapse_shape %451 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %452 = linalg.matmul ins(%collapsed_65, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_66 = tensor.expand_shape %452 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %453 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %290, %291, %410, %expanded_66 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_67 = tensor.pad %453 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %454 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_67, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %455 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %288, %289, %410, %454 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_68 = tensor.collapse_shape %455 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %456 = linalg.matmul ins(%collapsed_68, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_69 = tensor.expand_shape %456 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %457 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%286, %287, %450, %379, %expanded_69 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %458 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %457 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_70 = tensor.collapse_shape %458 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %459 = linalg.matmul ins(%collapsed_70, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_71 = tensor.expand_shape %459 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %460 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %284, %285, %410, %expanded_71 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_72 = tensor.pad %460 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %461 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_72, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %462 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %282, %283, %410, %461 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_73 = tensor.collapse_shape %462 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %463 = linalg.matmul ins(%collapsed_73, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_74 = tensor.expand_shape %463 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %464 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%280, %281, %457, %379, %expanded_74 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %465 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %464 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_75 = tensor.collapse_shape %465 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %466 = linalg.matmul ins(%collapsed_75, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_76 = tensor.expand_shape %466 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %467 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %278, %279, %410, %expanded_76 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_77 = tensor.pad %467 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %468 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_77, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %469 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %276, %277, %410, %468 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_78 = tensor.collapse_shape %469 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %470 = linalg.matmul ins(%collapsed_78, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_79 = tensor.expand_shape %470 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %471 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%274, %275, %464, %379, %expanded_79 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %472 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %471 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_80 = tensor.collapse_shape %472 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %473 = linalg.matmul ins(%collapsed_80, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_81 = tensor.expand_shape %473 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %474 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %272, %273, %410, %expanded_81 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_82 = tensor.pad %474 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %475 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_82, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %476 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %270, %271, %410, %475 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_83 = tensor.collapse_shape %476 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %477 = linalg.matmul ins(%collapsed_83, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_84 = tensor.expand_shape %477 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %478 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268, %269, %471, %379, %expanded_84 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %479 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %478 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_85 = tensor.collapse_shape %479 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %480 = linalg.matmul ins(%collapsed_85, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_86 = tensor.expand_shape %480 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %481 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %266, %267, %410, %expanded_86 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_87 = tensor.pad %481 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %482 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_87, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %483 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %264, %265, %410, %482 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_88 = tensor.collapse_shape %483 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %484 = linalg.matmul ins(%collapsed_88, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_89 = tensor.expand_shape %484 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %485 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262, %263, %478, %379, %expanded_89 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %486 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %485 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_90 = tensor.collapse_shape %486 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %487 = linalg.matmul ins(%collapsed_90, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_91 = tensor.expand_shape %487 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %488 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %260, %261, %410, %expanded_91 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_92 = tensor.pad %488 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %489 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_92, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %490 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %258, %259, %410, %489 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_93 = tensor.collapse_shape %490 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %491 = linalg.matmul ins(%collapsed_93, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_94 = tensor.expand_shape %491 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %492 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%256, %257, %485, %379, %expanded_94 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %493 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %492 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_95 = tensor.collapse_shape %493 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %494 = linalg.matmul ins(%collapsed_95, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_96 = tensor.expand_shape %494 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %495 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %254, %255, %410, %expanded_96 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_97 = tensor.pad %495 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %496 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_97, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %497 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %252, %253, %410, %496 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_98 = tensor.collapse_shape %497 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %498 = linalg.matmul ins(%collapsed_98, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_99 = tensor.expand_shape %498 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %499 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%250, %251, %492, %379, %expanded_99 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %500 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %499 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_100 = tensor.collapse_shape %500 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %501 = linalg.matmul ins(%collapsed_100, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_101 = tensor.expand_shape %501 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %502 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %248, %249, %410, %expanded_101 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_102 = tensor.pad %502 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %503 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_102, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %504 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %246, %247, %410, %503 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_103 = tensor.collapse_shape %504 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %505 = linalg.matmul ins(%collapsed_103, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_104 = tensor.expand_shape %505 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %506 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244, %245, %499, %379, %expanded_104 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %507 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %506 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_105 = tensor.collapse_shape %507 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %508 = linalg.matmul ins(%collapsed_105, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_106 = tensor.expand_shape %508 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %509 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %242, %243, %410, %expanded_106 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_107 = tensor.pad %509 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %510 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_107, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %511 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %240, %241, %410, %510 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_108 = tensor.collapse_shape %511 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %512 = linalg.matmul ins(%collapsed_108, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_109 = tensor.expand_shape %512 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %513 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238, %239, %506, %379, %expanded_109 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %514 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %513 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_110 = tensor.collapse_shape %514 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %515 = linalg.matmul ins(%collapsed_110, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_111 = tensor.expand_shape %515 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %516 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %236, %237, %410, %expanded_111 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_112 = tensor.pad %516 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %517 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_112, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %518 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %234, %235, %410, %517 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_113 = tensor.collapse_shape %518 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %519 = linalg.matmul ins(%collapsed_113, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_114 = tensor.expand_shape %519 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %520 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232, %233, %513, %379, %expanded_114 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %521 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %520 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_115 = tensor.collapse_shape %521 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %522 = linalg.matmul ins(%collapsed_115, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_116 = tensor.expand_shape %522 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %523 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %230, %231, %410, %expanded_116 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_117 = tensor.pad %523 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %524 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_117, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %525 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %228, %229, %410, %524 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_118 = tensor.collapse_shape %525 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %526 = linalg.matmul ins(%collapsed_118, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_119 = tensor.expand_shape %526 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %527 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226, %227, %520, %379, %expanded_119 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %528 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %527 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_120 = tensor.collapse_shape %528 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %529 = linalg.matmul ins(%collapsed_120, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_121 = tensor.expand_shape %529 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %530 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %224, %225, %410, %expanded_121 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_122 = tensor.pad %530 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %531 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_122, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %532 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %222, %223, %410, %531 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_123 = tensor.collapse_shape %532 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %533 = linalg.matmul ins(%collapsed_123, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_124 = tensor.expand_shape %533 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %534 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%220, %221, %527, %379, %expanded_124 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %535 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %534 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_125 = tensor.collapse_shape %535 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %536 = linalg.matmul ins(%collapsed_125, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_126 = tensor.expand_shape %536 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %537 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %218, %219, %410, %expanded_126 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_127 = tensor.pad %537 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %538 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_127, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %539 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %216, %217, %410, %538 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_128 = tensor.collapse_shape %539 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %540 = linalg.matmul ins(%collapsed_128, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_129 = tensor.expand_shape %540 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %541 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214, %215, %534, %379, %expanded_129 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %542 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %541 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_130 = tensor.collapse_shape %542 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %543 = linalg.matmul ins(%collapsed_130, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_131 = tensor.expand_shape %543 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %544 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %212, %213, %410, %expanded_131 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_132 = tensor.pad %544 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %545 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_132, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %546 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %210, %211, %410, %545 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_133 = tensor.collapse_shape %546 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %547 = linalg.matmul ins(%collapsed_133, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_134 = tensor.expand_shape %547 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %548 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208, %209, %541, %379, %expanded_134 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %549 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %548 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_135 = tensor.collapse_shape %549 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %550 = linalg.matmul ins(%collapsed_135, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_136 = tensor.expand_shape %550 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %551 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %206, %207, %410, %expanded_136 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_137 = tensor.pad %551 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %552 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_137, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %553 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %204, %205, %410, %552 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_138 = tensor.collapse_shape %553 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %554 = linalg.matmul ins(%collapsed_138, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_139 = tensor.expand_shape %554 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %555 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202, %203, %548, %379, %expanded_139 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %556 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %555 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_140 = tensor.collapse_shape %556 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %557 = linalg.matmul ins(%collapsed_140, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_141 = tensor.expand_shape %557 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %558 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %200, %201, %410, %expanded_141 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_142 = tensor.pad %558 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %559 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_142, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %560 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %198, %199, %410, %559 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_143 = tensor.collapse_shape %560 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %561 = linalg.matmul ins(%collapsed_143, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_144 = tensor.expand_shape %561 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %562 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196, %197, %555, %379, %expanded_144 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %563 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %562 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_145 = tensor.collapse_shape %563 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %564 = linalg.matmul ins(%collapsed_145, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_146 = tensor.expand_shape %564 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %565 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %194, %195, %410, %expanded_146 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_147 = tensor.pad %565 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %566 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_147, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %567 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %192, %193, %410, %566 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_148 = tensor.collapse_shape %567 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %568 = linalg.matmul ins(%collapsed_148, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_149 = tensor.expand_shape %568 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %569 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190, %191, %562, %379, %expanded_149 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %570 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %569 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_150 = tensor.collapse_shape %570 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %571 = linalg.matmul ins(%collapsed_150, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_151 = tensor.expand_shape %571 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %572 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %188, %189, %410, %expanded_151 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_152 = tensor.pad %572 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %573 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_152, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %574 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %186, %187, %410, %573 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_153 = tensor.collapse_shape %574 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %575 = linalg.matmul ins(%collapsed_153, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_154 = tensor.expand_shape %575 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %576 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184, %185, %569, %379, %expanded_154 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %577 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %576 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_155 = tensor.collapse_shape %577 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %578 = linalg.matmul ins(%collapsed_155, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_156 = tensor.expand_shape %578 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %579 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %182, %183, %410, %expanded_156 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_157 = tensor.pad %579 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %580 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_157, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %581 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %180, %181, %410, %580 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_158 = tensor.collapse_shape %581 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %582 = linalg.matmul ins(%collapsed_158, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_159 = tensor.expand_shape %582 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %583 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178, %179, %576, %379, %expanded_159 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %584 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %583 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_160 = tensor.collapse_shape %584 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %585 = linalg.matmul ins(%collapsed_160, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_161 = tensor.expand_shape %585 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %586 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %176, %177, %410, %expanded_161 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_162 = tensor.pad %586 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %587 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_162, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %588 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %174, %175, %410, %587 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_163 = tensor.collapse_shape %588 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %589 = linalg.matmul ins(%collapsed_163, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_164 = tensor.expand_shape %589 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %590 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172, %173, %583, %379, %expanded_164 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %591 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %590 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_165 = tensor.collapse_shape %591 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %592 = linalg.matmul ins(%collapsed_165, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_166 = tensor.expand_shape %592 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %593 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %170, %171, %410, %expanded_166 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_167 = tensor.pad %593 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %594 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_167, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %595 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %168, %169, %410, %594 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_168 = tensor.collapse_shape %595 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %596 = linalg.matmul ins(%collapsed_168, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_169 = tensor.expand_shape %596 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %597 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166, %167, %590, %379, %expanded_169 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %598 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %597 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_170 = tensor.collapse_shape %598 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %599 = linalg.matmul ins(%collapsed_170, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_171 = tensor.expand_shape %599 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %600 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %164, %165, %410, %expanded_171 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_172 = tensor.pad %600 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %601 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_172, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %602 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %162, %163, %410, %601 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_173 = tensor.collapse_shape %602 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %603 = linalg.matmul ins(%collapsed_173, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_174 = tensor.expand_shape %603 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %604 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160, %161, %597, %379, %expanded_174 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %605 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %604 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_175 = tensor.collapse_shape %605 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %606 = linalg.matmul ins(%collapsed_175, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_176 = tensor.expand_shape %606 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %607 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %158, %159, %410, %expanded_176 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_177 = tensor.pad %607 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %608 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_177, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %609 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %156, %157, %410, %608 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_178 = tensor.collapse_shape %609 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %610 = linalg.matmul ins(%collapsed_178, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_179 = tensor.expand_shape %610 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %611 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %155, %604, %379, %expanded_179 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %612 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %611 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_180 = tensor.collapse_shape %612 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %613 = linalg.matmul ins(%collapsed_180, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_181 = tensor.expand_shape %613 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %614 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %152, %153, %410, %expanded_181 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_182 = tensor.pad %614 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %615 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_182, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %616 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %150, %151, %410, %615 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_183 = tensor.collapse_shape %616 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %617 = linalg.matmul ins(%collapsed_183, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_184 = tensor.expand_shape %617 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %618 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148, %149, %611, %379, %expanded_184 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %619 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %618 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_185 = tensor.collapse_shape %619 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %620 = linalg.matmul ins(%collapsed_185, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_186 = tensor.expand_shape %620 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %621 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %146, %147, %410, %expanded_186 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_187 = tensor.pad %621 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %622 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_187, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %623 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %144, %145, %410, %622 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_188 = tensor.collapse_shape %623 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %624 = linalg.matmul ins(%collapsed_188, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_189 = tensor.expand_shape %624 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %625 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142, %143, %618, %379, %expanded_189 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %626 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %625 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_190 = tensor.collapse_shape %626 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %627 = linalg.matmul ins(%collapsed_190, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_191 = tensor.expand_shape %627 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %628 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %140, %141, %410, %expanded_191 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_192 = tensor.pad %628 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %629 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_192, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %630 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %138, %139, %410, %629 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_193 = tensor.collapse_shape %630 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %631 = linalg.matmul ins(%collapsed_193, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_194 = tensor.expand_shape %631 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %632 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%136, %137, %625, %379, %expanded_194 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %633 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %632 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_195 = tensor.collapse_shape %633 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %634 = linalg.matmul ins(%collapsed_195, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_196 = tensor.expand_shape %634 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %635 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %134, %135, %410, %expanded_196 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_197 = tensor.pad %635 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %636 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_197, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %637 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %132, %133, %410, %636 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_198 = tensor.collapse_shape %637 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %638 = linalg.matmul ins(%collapsed_198, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_199 = tensor.expand_shape %638 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %639 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130, %131, %632, %379, %expanded_199 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %640 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %639 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_200 = tensor.collapse_shape %640 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %641 = linalg.matmul ins(%collapsed_200, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_201 = tensor.expand_shape %641 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %642 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %128, %129, %410, %expanded_201 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_202 = tensor.pad %642 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %643 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_202, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %644 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %126, %127, %410, %643 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_203 = tensor.collapse_shape %644 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %645 = linalg.matmul ins(%collapsed_203, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_204 = tensor.expand_shape %645 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %646 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %125, %639, %379, %expanded_204 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %647 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %646 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_205 = tensor.collapse_shape %647 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %648 = linalg.matmul ins(%collapsed_205, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_206 = tensor.expand_shape %648 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %649 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %122, %123, %410, %expanded_206 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_207 = tensor.pad %649 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %650 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_207, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %651 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %120, %121, %410, %650 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_208 = tensor.collapse_shape %651 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %652 = linalg.matmul ins(%collapsed_208, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_209 = tensor.expand_shape %652 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %653 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118, %119, %646, %379, %expanded_209 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %654 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %653 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_210 = tensor.collapse_shape %654 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %655 = linalg.matmul ins(%collapsed_210, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_211 = tensor.expand_shape %655 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %656 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %116, %117, %410, %expanded_211 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_212 = tensor.pad %656 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %657 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_212, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %658 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %114, %115, %410, %657 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_213 = tensor.collapse_shape %658 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %659 = linalg.matmul ins(%collapsed_213, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_214 = tensor.expand_shape %659 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %660 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112, %113, %653, %379, %expanded_214 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%406 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x1024x14x14xf32>
    %661 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %660 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_215 = tensor.collapse_shape %661 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %662 = linalg.matmul ins(%collapsed_215, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_216 = tensor.expand_shape %662 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %663 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %110, %111, %410, %expanded_216 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_217 = tensor.pad %663 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %664 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_217, %422 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%423 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %665 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %108, %109, %410, %664 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_218 = tensor.collapse_shape %665 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %666 = linalg.matmul ins(%collapsed_218, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%402 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_219 = tensor.expand_shape %666 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %667 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %106, %107, %660, %379, %expanded_219 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%385 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %in_334: f32, %out: f32):
      %851 = arith.addf %in_333, %in_334 : f32
      %852 = arith.addf %in_332, %851 : f32
      %853 = arith.cmpf oeq, %in_330, %in_331 : f32
      %854 = arith.select %853, %852, %cst : f32
      %855 = arith.mulf %in_329, %854 : f32
      %856 = arith.mulf %in, %855 : f32
      linalg.yield %856 : f32
    } -> tensor<1x14x14x1024xf32>
    %668 = tensor.empty() : tensor<512x1x1x1024xf32>
    %669 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<1024x1x1x512xf32>) outs(%668 : tensor<512x1x1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x1x1x1024xf32>
    %padded_220 = tensor.pad %669 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<512x1x1x1024xf32> to tensor<512x2x2x1024xf32>
    %expanded_221 = tensor.expand_shape %padded_220 [[0, 1], [2, 3], [4], [5]] : tensor<512x2x2x1024xf32> into tensor<512x1x2x1x2x1024xf32>
    %collapsed_222 = tensor.collapse_shape %667 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %670 = tensor.empty() : tensor<196x2048xf32>
    %671 = linalg.fill ins(%cst : f32) outs(%670 : tensor<196x2048xf32>) -> tensor<196x2048xf32>
    %672 = tensor.empty() : tensor<1024x2x2x512x1x1xf32>
    %673 = linalg.generic {indexing_maps = [#map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_221 : tensor<512x1x2x1x2x1024xf32>) outs(%672 : tensor<1024x2x2x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x2x2x512x1x1xf32>
    %collapsed_223 = tensor.collapse_shape %673 [[0], [1, 2, 3, 4, 5]] : tensor<1024x2x2x512x1x1xf32> into tensor<1024x2048xf32>
    %674 = linalg.matmul ins(%collapsed_222, %collapsed_223 : tensor<196x1024xf32>, tensor<1024x2048xf32>) outs(%671 : tensor<196x2048xf32>) -> tensor<196x2048xf32>
    %expanded_224 = tensor.expand_shape %674 [[0, 1, 2], [3, 4, 5]] : tensor<196x2048xf32> into tensor<1x14x14x2x2x512xf32>
    %675 = tensor.empty() : tensor<1x28x28x512xf32>
    %676 = linalg.matmul ins(%collapsed_222, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%412 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_225 = tensor.expand_shape %676 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %677 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %103, %104, %410, %expanded_225 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%416 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_226 = tensor.pad %419 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<256x3x3x256xf32> to tensor<256x4x4x256xf32>
    %expanded_227 = tensor.expand_shape %padded_226 [[0], [1, 2], [3, 4], [5]] : tensor<256x4x4x256xf32> into tensor<256x2x2x2x2x256xf32>
    %678 = tensor.empty() : tensor<2x2x256x2x2x256xf32>
    %679 = linalg.generic {indexing_maps = [#map14, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_227 : tensor<256x2x2x2x2x256xf32>) outs(%678 : tensor<2x2x256x2x2x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x256x2x2x256xf32>
    %collapsed_228 = tensor.collapse_shape %679 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x256x2x2x256xf32> into tensor<1024x2x2x256xf32>
    %680 = tensor.empty() : tensor<1024x2x2x256xf32>
    %681 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%680 : tensor<1024x2x2x256xf32>) {
    ^bb0(%out: f32):
      %851 = linalg.index 0 : index
      %852 = linalg.index 1 : index
      %853 = arith.subi %c1, %852 : index
      %854 = linalg.index 2 : index
      %855 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_228[%851, %853, %854, %855] : tensor<1024x2x2x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<1024x2x2x256xf32>
    %padded_229 = tensor.pad %677 low[%c0, %c1, %c1, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %682 = tensor.empty() : tensor<2x2x256x1024xf32>
    %683 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%682 : tensor<2x2x256x1024xf32>) {
    ^bb0(%out: f32):
      %851 = linalg.index 0 : index
      %852 = linalg.index 1 : index
      %853 = linalg.index 2 : index
      %854 = linalg.index 3 : index
      %855 = arith.subi %c1, %852 : index
      %extracted = tensor.extract %681[%854, %851, %855, %853] : tensor<1024x2x2x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<2x2x256x1024xf32>
    %684 = tensor.empty() : tensor<1x15x15x1024xf32>
    %685 = linalg.fill ins(%cst : f32) outs(%684 : tensor<1x15x15x1024xf32>) -> tensor<1x15x15x1024xf32>
    %686 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_229, %683 : tensor<1x16x16x256xf32>, tensor<2x2x256x1024xf32>) outs(%685 : tensor<1x15x15x1024xf32>) -> tensor<1x15x15x1024xf32>
    %expanded_230 = tensor.expand_shape %686 [[0], [1], [2], [3, 4, 5]] : tensor<1x15x15x1024xf32> into tensor<1x15x15x2x2x256xf32>
    %687 = tensor.empty() : tensor<1x15x2x15x2x256xf32>
    %688 = linalg.generic {indexing_maps = [#map15, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_230 : tensor<1x15x15x2x2x256xf32>) outs(%687 : tensor<1x15x2x15x2x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %851 = arith.addf %in, %cst : f32
      linalg.yield %851 : f32
    } -> tensor<1x15x2x15x2x256xf32>
    %collapsed_231 = tensor.collapse_shape %688 [[0], [1, 2], [3, 4], [5]] : tensor<1x15x2x15x2x256xf32> into tensor<1x30x30x256xf32>
    %extracted_slice_232 = tensor.extract_slice %collapsed_231[0, 1, 1, 0] [1, 28, 28, 256] [1, 1, 1, 1] : tensor<1x30x30x256xf32> to tensor<1x28x28x256xf32>
    %689 = tensor.empty() : tensor<1x28x28x256xf32>
    %expanded_233 = tensor.expand_shape %410 [[0, 1]] : tensor<256xf32> into tensor<1x256xf32>
    %690 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map1, #map8, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %101, %102, %extracted_slice_232, %expanded_233 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>, tensor<1x28x28x256xf32>, tensor<1x256xf32>) outs(%689 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x28x28x256xf32>
    %collapsed_234 = tensor.collapse_shape %690 [[0, 1, 2], [3]] : tensor<1x28x28x256xf32> into tensor<784x256xf32>
    %691 = tensor.empty() : tensor<784x512xf32>
    %692 = linalg.fill ins(%cst : f32) outs(%691 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %693 = tensor.empty() : tensor<256x512x1x1xf32>
    %694 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12 : tensor<256x1x1x512xf32>) outs(%693 : tensor<256x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x512x1x1xf32>
    %collapsed_235 = tensor.collapse_shape %694 [[0], [1, 2, 3]] : tensor<256x512x1x1xf32> into tensor<256x512xf32>
    %695 = linalg.matmul ins(%collapsed_234, %collapsed_235 : tensor<784x256xf32>, tensor<256x512xf32>) outs(%692 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_236 = tensor.expand_shape %695 [[0, 1, 2, 3, 4], [5]] : tensor<784x512xf32> into tensor<1x14x2x14x2x512xf32>
    %696 = tensor.empty() : tensor<1x512x28x28xf32>
    %expanded_237 = tensor.expand_shape %99 [[0], [1], [2, 3], [4, 5]] : tensor<1x512x28x28xf32> into tensor<1x512x14x2x14x2xf32>
    %expanded_238 = tensor.expand_shape %100 [[0], [1], [2, 3], [4, 5]] : tensor<1x512x28x28xf32> into tensor<1x512x14x2x14x2xf32>
    %697 = tensor.empty() : tensor<1x512x14x2x14x2xf32>
    %698 = linalg.generic {indexing_maps = [#map13, #map13, #map16, #map17, #map18, #map19, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_237, %expanded_238, %expanded_224, %expanded_32, %347, %expanded_236 : tensor<1x512x14x2x14x2xf32>, tensor<1x512x14x2x14x2xf32>, tensor<1x14x14x2x2x512xf32>, tensor<1x512xf32>, tensor<512xf32>, tensor<1x14x2x14x2x512xf32>) outs(%697 : tensor<1x512x14x2x14x2xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_330, %cst : f32
      %852 = arith.addf %851, %in_331 : f32
      %853 = arith.addf %in_332, %in_333 : f32
      %854 = arith.addf %852, %853 : f32
      %855 = arith.cmpf oeq, %in, %in_329 : f32
      %856 = arith.select %855, %854, %cst : f32
      linalg.yield %856 : f32
    } -> tensor<1x512x14x2x14x2xf32>
    %collapsed_239 = tensor.collapse_shape %698 [[0], [1], [2, 3], [4, 5]] : tensor<1x512x14x2x14x2xf32> into tensor<1x512x28x28xf32>
    %699 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %collapsed_239 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%675 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x28x28x512xf32>
    %700 = tensor.empty() : tensor<128xf32>
    %collapsed_240 = tensor.collapse_shape %699 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %701 = tensor.empty() : tensor<784x128xf32>
    %702 = linalg.fill ins(%cst : f32) outs(%701 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %703 = tensor.empty() : tensor<512x128x1x1xf32>
    %704 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16 : tensor<512x1x1x128xf32>) outs(%703 : tensor<512x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x128x1x1xf32>
    %collapsed_241 = tensor.collapse_shape %704 [[0], [1, 2, 3]] : tensor<512x128x1x1xf32> into tensor<512x128xf32>
    %705 = linalg.matmul ins(%collapsed_240, %collapsed_241 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%702 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_242 = tensor.expand_shape %705 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %collapsed_243 = tensor.collapse_shape %18 [[0], [1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<1x128xf32>
    %collapsed_244 = tensor.collapse_shape %51 [[0], [1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<1x128xf32>
    %706 = tensor.empty() : tensor<1x28x28x128xf32>
    %707 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_244, %collapsed_243, %97, %98, %700, %expanded_242 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%706 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x28x28x128xf32>
    %708 = tensor.empty() : tensor<128x3x3x128xf32>
    %709 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17 : tensor<128x3x3x128xf32>) outs(%708 : tensor<128x3x3x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x3x3x128xf32>
    %710 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%708 : tensor<128x3x3x128xf32>) {
    ^bb0(%out: f32):
      %851 = linalg.index 0 : index
      %852 = linalg.index 1 : index
      %853 = arith.subi %c2, %852 : index
      %854 = linalg.index 2 : index
      %855 = linalg.index 3 : index
      %extracted = tensor.extract %709[%851, %853, %854, %855] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x128xf32>
    %padded_245 = tensor.pad %707 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %711 = tensor.empty() : tensor<3x3x128x128xf32>
    %712 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%711 : tensor<3x3x128x128xf32>) {
    ^bb0(%out: f32):
      %851 = linalg.index 0 : index
      %852 = linalg.index 1 : index
      %853 = linalg.index 2 : index
      %854 = linalg.index 3 : index
      %855 = arith.subi %c2, %852 : index
      %extracted = tensor.extract %710[%854, %851, %855, %853] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x128x128xf32>
    %713 = linalg.fill ins(%cst : f32) outs(%706 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %714 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_245, %712 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%713 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %715 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_244, %collapsed_243, %95, %96, %700, %714 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%706 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_246 = tensor.collapse_shape %715 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %716 = tensor.empty() : tensor<128x512x1x1xf32>
    %717 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<128x1x1x512xf32>) outs(%716 : tensor<128x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x512x1x1xf32>
    %collapsed_247 = tensor.collapse_shape %717 [[0], [1, 2, 3]] : tensor<128x512x1x1xf32> into tensor<128x512xf32>
    %718 = linalg.matmul ins(%collapsed_246, %collapsed_247 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%692 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_248 = tensor.expand_shape %718 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %719 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93, %94, %collapsed_239, %347, %expanded_248 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%696 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x512x28x28xf32>
    %720 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %719 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%675 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_249 = tensor.collapse_shape %720 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %721 = linalg.matmul ins(%collapsed_249, %collapsed_241 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%702 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_250 = tensor.expand_shape %721 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %722 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_244, %collapsed_243, %91, %92, %700, %expanded_250 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%706 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x28x28x128xf32>
    %padded_251 = tensor.pad %722 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %723 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_251, %712 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%713 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %724 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_244, %collapsed_243, %89, %90, %700, %723 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%706 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_252 = tensor.collapse_shape %724 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %725 = linalg.matmul ins(%collapsed_252, %collapsed_247 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%692 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_253 = tensor.expand_shape %725 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %726 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%87, %88, %719, %347, %expanded_253 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%696 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x512x28x28xf32>
    %727 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %726 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%675 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_254 = tensor.collapse_shape %727 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %728 = linalg.matmul ins(%collapsed_254, %collapsed_241 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%702 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_255 = tensor.expand_shape %728 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %729 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_244, %collapsed_243, %85, %86, %700, %expanded_255 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%706 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x28x28x128xf32>
    %padded_256 = tensor.pad %729 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %730 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_256, %712 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%713 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %731 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_244, %collapsed_243, %83, %84, %700, %730 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%706 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_257 = tensor.collapse_shape %731 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %732 = linalg.matmul ins(%collapsed_257, %collapsed_247 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%692 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_258 = tensor.expand_shape %732 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %733 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81, %82, %726, %347, %expanded_258 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%696 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x512x28x28xf32>
    %734 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %733 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%675 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_259 = tensor.collapse_shape %734 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %735 = linalg.matmul ins(%collapsed_259, %collapsed_241 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%702 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_260 = tensor.expand_shape %735 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %736 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_244, %collapsed_243, %79, %80, %700, %expanded_260 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%706 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x28x28x128xf32>
    %padded_261 = tensor.pad %736 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %737 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_261, %712 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%713 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %738 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_244, %collapsed_243, %77, %78, %700, %737 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%706 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_262 = tensor.collapse_shape %738 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %739 = linalg.matmul ins(%collapsed_262, %collapsed_247 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%692 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_263 = tensor.expand_shape %739 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %740 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75, %76, %733, %347, %expanded_263 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%696 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x512x28x28xf32>
    %741 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %740 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%675 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_264 = tensor.collapse_shape %741 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %742 = linalg.matmul ins(%collapsed_264, %collapsed_241 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%702 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_265 = tensor.expand_shape %742 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %743 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_244, %collapsed_243, %73, %74, %700, %expanded_265 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%706 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x28x28x128xf32>
    %padded_266 = tensor.pad %743 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %744 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_266, %712 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%713 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %745 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_244, %collapsed_243, %71, %72, %700, %744 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%706 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_267 = tensor.collapse_shape %745 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %746 = linalg.matmul ins(%collapsed_267, %collapsed_247 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%692 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_268 = tensor.expand_shape %746 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %747 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %70, %740, %347, %expanded_268 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%696 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x512x28x28xf32>
    %748 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %747 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%675 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_269 = tensor.collapse_shape %748 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %749 = linalg.matmul ins(%collapsed_269, %collapsed_241 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%702 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_270 = tensor.expand_shape %749 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %750 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_244, %collapsed_243, %67, %68, %700, %expanded_270 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%706 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x28x28x128xf32>
    %padded_271 = tensor.pad %750 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %751 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_271, %712 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%713 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %752 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_244, %collapsed_243, %65, %66, %700, %751 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%706 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_272 = tensor.collapse_shape %752 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %753 = linalg.matmul ins(%collapsed_272, %collapsed_247 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%692 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_273 = tensor.expand_shape %753 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %754 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63, %64, %747, %347, %expanded_273 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%696 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x512x28x28xf32>
    %755 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %754 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%675 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_274 = tensor.collapse_shape %755 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %756 = linalg.matmul ins(%collapsed_274, %collapsed_241 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%702 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_275 = tensor.expand_shape %756 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %757 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_244, %collapsed_243, %61, %62, %700, %expanded_275 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%706 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x28x28x128xf32>
    %padded_276 = tensor.pad %757 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %758 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_276, %712 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%713 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %759 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_244, %collapsed_243, %59, %60, %700, %758 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%706 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_277 = tensor.collapse_shape %759 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %760 = linalg.matmul ins(%collapsed_277, %collapsed_247 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%692 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_278 = tensor.expand_shape %760 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %761 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %57, %58, %754, %347, %expanded_278 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%675 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %in_334: f32, %out: f32):
      %851 = arith.addf %in_333, %in_334 : f32
      %852 = arith.addf %in_332, %851 : f32
      %853 = arith.cmpf oeq, %in_330, %in_331 : f32
      %854 = arith.select %853, %852, %cst : f32
      %855 = arith.mulf %in_329, %854 : f32
      %856 = arith.mulf %in, %855 : f32
      linalg.yield %856 : f32
    } -> tensor<1x28x28x512xf32>
    %762 = tensor.empty() : tensor<256x1x1x512xf32>
    %763 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14 : tensor<512x1x1x256xf32>) outs(%762 : tensor<256x1x1x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1x1x512xf32>
    %padded_279 = tensor.pad %763 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<256x1x1x512xf32> to tensor<256x2x2x512xf32>
    %expanded_280 = tensor.expand_shape %padded_279 [[0, 1], [2, 3], [4], [5]] : tensor<256x2x2x512xf32> into tensor<256x1x2x1x2x512xf32>
    %collapsed_281 = tensor.collapse_shape %761 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %764 = tensor.empty() : tensor<784x1024xf32>
    %765 = linalg.fill ins(%cst : f32) outs(%764 : tensor<784x1024xf32>) -> tensor<784x1024xf32>
    %766 = tensor.empty() : tensor<512x2x2x256x1x1xf32>
    %767 = linalg.generic {indexing_maps = [#map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_280 : tensor<256x1x2x1x2x512xf32>) outs(%766 : tensor<512x2x2x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2x2x256x1x1xf32>
    %collapsed_282 = tensor.collapse_shape %767 [[0], [1, 2, 3, 4, 5]] : tensor<512x2x2x256x1x1xf32> into tensor<512x1024xf32>
    %768 = linalg.matmul ins(%collapsed_281, %collapsed_282 : tensor<784x512xf32>, tensor<512x1024xf32>) outs(%765 : tensor<784x1024xf32>) -> tensor<784x1024xf32>
    %expanded_283 = tensor.expand_shape %768 [[0, 1, 2], [3, 4, 5]] : tensor<784x1024xf32> into tensor<1x28x28x2x2x256xf32>
    %769 = tensor.empty() : tensor<1x56x56x256xf32>
    %770 = linalg.matmul ins(%collapsed_281, %collapsed_241 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%702 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_284 = tensor.expand_shape %770 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %771 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_244, %collapsed_243, %54, %55, %700, %expanded_284 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%706 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x28x28x128xf32>
    %padded_285 = tensor.pad %709 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<128x3x3x128xf32> to tensor<128x4x4x128xf32>
    %expanded_286 = tensor.expand_shape %padded_285 [[0], [1, 2], [3, 4], [5]] : tensor<128x4x4x128xf32> into tensor<128x2x2x2x2x128xf32>
    %772 = tensor.empty() : tensor<2x2x128x2x2x128xf32>
    %773 = linalg.generic {indexing_maps = [#map14, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_286 : tensor<128x2x2x2x2x128xf32>) outs(%772 : tensor<2x2x128x2x2x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x128x2x2x128xf32>
    %collapsed_287 = tensor.collapse_shape %773 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x128x2x2x128xf32> into tensor<512x2x2x128xf32>
    %774 = tensor.empty() : tensor<512x2x2x128xf32>
    %775 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%774 : tensor<512x2x2x128xf32>) {
    ^bb0(%out: f32):
      %851 = linalg.index 0 : index
      %852 = linalg.index 1 : index
      %853 = arith.subi %c1, %852 : index
      %854 = linalg.index 2 : index
      %855 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_287[%851, %853, %854, %855] : tensor<512x2x2x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x2x2x128xf32>
    %padded_288 = tensor.pad %771 low[%c0, %c1, %c1, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %776 = tensor.empty() : tensor<2x2x128x512xf32>
    %777 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%776 : tensor<2x2x128x512xf32>) {
    ^bb0(%out: f32):
      %851 = linalg.index 0 : index
      %852 = linalg.index 1 : index
      %853 = linalg.index 2 : index
      %854 = linalg.index 3 : index
      %855 = arith.subi %c1, %852 : index
      %extracted = tensor.extract %775[%854, %851, %855, %853] : tensor<512x2x2x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<2x2x128x512xf32>
    %778 = tensor.empty() : tensor<1x29x29x512xf32>
    %779 = linalg.fill ins(%cst : f32) outs(%778 : tensor<1x29x29x512xf32>) -> tensor<1x29x29x512xf32>
    %780 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_288, %777 : tensor<1x30x30x128xf32>, tensor<2x2x128x512xf32>) outs(%779 : tensor<1x29x29x512xf32>) -> tensor<1x29x29x512xf32>
    %expanded_289 = tensor.expand_shape %780 [[0], [1], [2], [3, 4, 5]] : tensor<1x29x29x512xf32> into tensor<1x29x29x2x2x128xf32>
    %781 = tensor.empty() : tensor<1x29x2x29x2x128xf32>
    %782 = linalg.generic {indexing_maps = [#map15, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_289 : tensor<1x29x29x2x2x128xf32>) outs(%781 : tensor<1x29x2x29x2x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %851 = arith.addf %in, %cst : f32
      linalg.yield %851 : f32
    } -> tensor<1x29x2x29x2x128xf32>
    %collapsed_290 = tensor.collapse_shape %782 [[0], [1, 2], [3, 4], [5]] : tensor<1x29x2x29x2x128xf32> into tensor<1x58x58x128xf32>
    %extracted_slice_291 = tensor.extract_slice %collapsed_290[0, 1, 1, 0] [1, 56, 56, 128] [1, 1, 1, 1] : tensor<1x58x58x128xf32> to tensor<1x56x56x128xf32>
    %783 = tensor.empty() : tensor<1x56x56x128xf32>
    %expanded_292 = tensor.expand_shape %700 [[0, 1]] : tensor<128xf32> into tensor<1x128xf32>
    %784 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map1, #map8, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_244, %collapsed_243, %52, %53, %extracted_slice_291, %expanded_292 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>, tensor<1x56x56x128xf32>, tensor<1x128xf32>) outs(%783 : tensor<1x56x56x128xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x56x56x128xf32>
    %collapsed_293 = tensor.collapse_shape %784 [[0, 1, 2], [3]] : tensor<1x56x56x128xf32> into tensor<3136x128xf32>
    %785 = tensor.empty() : tensor<3136x256xf32>
    %786 = linalg.fill ins(%cst : f32) outs(%785 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %787 = tensor.empty() : tensor<128x256x1x1xf32>
    %788 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19 : tensor<128x1x1x256xf32>) outs(%787 : tensor<128x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x256x1x1xf32>
    %collapsed_294 = tensor.collapse_shape %788 [[0], [1, 2, 3]] : tensor<128x256x1x1xf32> into tensor<128x256xf32>
    %789 = linalg.matmul ins(%collapsed_293, %collapsed_294 : tensor<3136x128xf32>, tensor<128x256xf32>) outs(%786 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %expanded_295 = tensor.expand_shape %789 [[0, 1, 2, 3, 4], [5]] : tensor<3136x256xf32> into tensor<1x28x2x28x2x256xf32>
    %790 = tensor.empty() : tensor<1x256x56x56xf32>
    %expanded_296 = tensor.expand_shape %49 [[0], [1], [2, 3], [4, 5]] : tensor<1x256x56x56xf32> into tensor<1x256x28x2x28x2xf32>
    %expanded_297 = tensor.expand_shape %50 [[0], [1], [2, 3], [4, 5]] : tensor<1x256x56x56xf32> into tensor<1x256x28x2x28x2xf32>
    %791 = tensor.empty() : tensor<1x256x28x2x28x2xf32>
    %792 = linalg.generic {indexing_maps = [#map13, #map13, #map16, #map17, #map18, #map19, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_296, %expanded_297, %expanded_283, %expanded_233, %410, %expanded_295 : tensor<1x256x28x2x28x2xf32>, tensor<1x256x28x2x28x2xf32>, tensor<1x28x28x2x2x256xf32>, tensor<1x256xf32>, tensor<256xf32>, tensor<1x28x2x28x2x256xf32>) outs(%791 : tensor<1x256x28x2x28x2xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_330, %cst : f32
      %852 = arith.addf %851, %in_331 : f32
      %853 = arith.addf %in_332, %in_333 : f32
      %854 = arith.addf %852, %853 : f32
      %855 = arith.cmpf oeq, %in, %in_329 : f32
      %856 = arith.select %855, %854, %cst : f32
      linalg.yield %856 : f32
    } -> tensor<1x256x28x2x28x2xf32>
    %collapsed_298 = tensor.collapse_shape %792 [[0], [1], [2, 3], [4, 5]] : tensor<1x256x28x2x28x2xf32> into tensor<1x256x56x56xf32>
    %793 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %collapsed_298 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x56x56xf32>) outs(%769 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x56x56x256xf32>
    %794 = tensor.empty() : tensor<64xf32>
    %collapsed_299 = tensor.collapse_shape %793 [[0, 1, 2], [3]] : tensor<1x56x56x256xf32> into tensor<3136x256xf32>
    %795 = tensor.empty() : tensor<3136x64xf32>
    %796 = linalg.fill ins(%cst : f32) outs(%795 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %797 = tensor.empty() : tensor<256x64x1x1xf32>
    %798 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22 : tensor<256x1x1x64xf32>) outs(%797 : tensor<256x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x64x1x1xf32>
    %collapsed_300 = tensor.collapse_shape %798 [[0], [1, 2, 3]] : tensor<256x64x1x1xf32> into tensor<256x64xf32>
    %799 = linalg.matmul ins(%collapsed_299, %collapsed_300 : tensor<3136x256xf32>, tensor<256x64xf32>) outs(%796 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %expanded_301 = tensor.expand_shape %799 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %collapsed_302 = tensor.collapse_shape %25 [[0], [1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<1x64xf32>
    %collapsed_303 = tensor.collapse_shape %27 [[0], [1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<1x64xf32>
    %800 = tensor.empty() : tensor<1x56x56x64xf32>
    %801 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_303, %collapsed_302, %47, %48, %794, %expanded_301 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%800 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x56x56x64xf32>
    %802 = tensor.empty() : tensor<64x3x3x64xf32>
    %803 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23 : tensor<64x3x3x64xf32>) outs(%802 : tensor<64x3x3x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x3x3x64xf32>
    %804 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%802 : tensor<64x3x3x64xf32>) {
    ^bb0(%out: f32):
      %851 = linalg.index 0 : index
      %852 = linalg.index 1 : index
      %853 = arith.subi %c2, %852 : index
      %854 = linalg.index 2 : index
      %855 = linalg.index 3 : index
      %extracted = tensor.extract %803[%851, %853, %854, %855] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x64xf32>
    %padded_304 = tensor.pad %801 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %805 = tensor.empty() : tensor<3x3x64x64xf32>
    %806 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%805 : tensor<3x3x64x64xf32>) {
    ^bb0(%out: f32):
      %851 = linalg.index 0 : index
      %852 = linalg.index 1 : index
      %853 = linalg.index 2 : index
      %854 = linalg.index 3 : index
      %855 = arith.subi %c2, %852 : index
      %extracted = tensor.extract %804[%854, %851, %855, %853] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x64x64xf32>
    %807 = linalg.fill ins(%cst : f32) outs(%800 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %808 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_304, %806 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%807 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %809 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_303, %collapsed_302, %45, %46, %794, %808 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%800 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x56x56x64xf32>
    %collapsed_305 = tensor.collapse_shape %809 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %810 = tensor.empty() : tensor<64x256x1x1xf32>
    %811 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20 : tensor<64x1x1x256xf32>) outs(%810 : tensor<64x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x256x1x1xf32>
    %collapsed_306 = tensor.collapse_shape %811 [[0], [1, 2, 3]] : tensor<64x256x1x1xf32> into tensor<64x256xf32>
    %812 = linalg.matmul ins(%collapsed_305, %collapsed_306 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%786 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %expanded_307 = tensor.expand_shape %812 [[0, 1, 2], [3]] : tensor<3136x256xf32> into tensor<1x56x56x256xf32>
    %813 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %44, %collapsed_298, %410, %expanded_307 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<1x56x56x256xf32>) outs(%790 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.addf %in_331, %in_332 : f32
      %852 = arith.addf %in_330, %851 : f32
      %853 = arith.cmpf oeq, %in, %in_329 : f32
      %854 = arith.select %853, %852, %cst : f32
      linalg.yield %854 : f32
    } -> tensor<1x256x56x56xf32>
    %814 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %813 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x56x56xf32>) outs(%769 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %851 = arith.mulf %in_329, %in_330 : f32
      %852 = arith.mulf %in, %851 : f32
      linalg.yield %852 : f32
    } -> tensor<1x56x56x256xf32>
    %collapsed_308 = tensor.collapse_shape %814 [[0, 1, 2], [3]] : tensor<1x56x56x256xf32> into tensor<3136x256xf32>
    %815 = linalg.matmul ins(%collapsed_308, %collapsed_300 : tensor<3136x256xf32>, tensor<256x64xf32>) outs(%796 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %expanded_309 = tensor.expand_shape %815 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %816 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_303, %collapsed_302, %41, %42, %794, %expanded_309 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%800 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x56x56x64xf32>
    %padded_310 = tensor.pad %816 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %817 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_310, %806 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%807 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %818 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_303, %collapsed_302, %39, %40, %794, %817 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%800 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x56x56x64xf32>
    %collapsed_311 = tensor.collapse_shape %818 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %819 = linalg.matmul ins(%collapsed_311, %collapsed_306 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%786 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %expanded_312 = tensor.expand_shape %819 [[0, 1, 2], [3]] : tensor<3136x256xf32> into tensor<1x56x56x256xf32>
    %820 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %37, %38, %813, %410, %expanded_312 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<1x56x56x256xf32>) outs(%769 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %in_334: f32, %out: f32):
      %851 = arith.addf %in_333, %in_334 : f32
      %852 = arith.addf %in_332, %851 : f32
      %853 = arith.cmpf oeq, %in_330, %in_331 : f32
      %854 = arith.select %853, %852, %cst : f32
      %855 = arith.mulf %in_329, %854 : f32
      %856 = arith.mulf %in, %855 : f32
      linalg.yield %856 : f32
    } -> tensor<1x56x56x256xf32>
    %collapsed_313 = tensor.collapse_shape %820 [[0, 1, 2], [3]] : tensor<1x56x56x256xf32> into tensor<3136x256xf32>
    %821 = linalg.matmul ins(%collapsed_313, %collapsed_300 : tensor<3136x256xf32>, tensor<256x64xf32>) outs(%796 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %expanded_314 = tensor.expand_shape %821 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %822 = tensor.empty() : tensor<1x56x56x64xf32>
    %823 = linalg.generic {indexing_maps = [#map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%794, %expanded_314 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%822 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_329: f32, %out: f32):
      %851 = arith.addf %in, %in_329 : f32
      linalg.yield %851 : f32
    } -> tensor<1x56x56x64xf32>
    %824 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_303, %collapsed_302, %34, %35, %823 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<1x56x56x64xf32>) outs(%800 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.cmpf oeq, %in_330, %in_331 : f32
      %852 = arith.select %851, %in_332, %cst : f32
      %853 = arith.mulf %in_329, %852 : f32
      %854 = arith.mulf %in, %853 : f32
      linalg.yield %854 : f32
    } -> tensor<1x56x56x64xf32>
    %padded_315 = tensor.pad %824 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %825 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_315, %806 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%807 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %826 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_303, %collapsed_302, %32, %33, %794, %825 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%800 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.cmpf oeq, %in_330, %in_331 : f32
      %853 = arith.select %852, %851, %cst : f32
      %854 = arith.mulf %in_329, %853 : f32
      %855 = arith.mulf %in, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x56x56x64xf32>
    %collapsed_316 = tensor.collapse_shape %826 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %827 = tensor.empty() : tensor<64x64x1x1xf32>
    %828 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24 : tensor<64x1x1x64xf32>) outs(%827 : tensor<64x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x64x1x1xf32>
    %collapsed_317 = tensor.collapse_shape %828 [[0], [1, 2, 3]] : tensor<64x64x1x1xf32> into tensor<64x64xf32>
    %829 = linalg.matmul ins(%collapsed_316, %collapsed_317 : tensor<3136x64xf32>, tensor<64x64xf32>) outs(%796 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %expanded_318 = tensor.expand_shape %829 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %padded_319 = tensor.pad %30 low[0, 1, 1, 0] high[0, 0, 0, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1 : f32
    } : tensor<1x112x112x64xf32> to tensor<1x113x113x64xf32>
    %830 = tensor.empty() : tensor<1x113x113x64xf32>
    %831 = tensor.empty() : tensor<3x3xf32>
    %832 = linalg.generic {indexing_maps = [#map20, #map21, #map22, #map22, #map23, #map22, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%padded_319, %831, %31, %823, %794, %expanded_318 : tensor<1x113x113x64xf32>, tensor<3x3xf32>, tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>, tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%830 : tensor<1x113x113x64xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %851 = arith.addf %in_332, %in_333 : f32
      %852 = arith.addf %in_331, %851 : f32
      %853 = arith.cmpf oge, %in, %in_330 : f32
      %854 = arith.select %853, %852, %cst : f32
      %855 = arith.addf %out, %854 : f32
      linalg.yield %855 : f32
    } -> tensor<1x113x113x64xf32>
    %extracted_slice_320 = tensor.extract_slice %832[0, 1, 1, 0] [1, 112, 112, 64] [1, 1, 1, 1] : tensor<1x113x113x64xf32> to tensor<1x112x112x64xf32>
    %833 = tensor.empty() : tensor<1x112x112x64xf32>
    %834 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_303, %collapsed_302, %28, %29, %extracted_slice_320 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x112x112xf32>, tensor<1x64x112x112xf32>, tensor<1x112x112x64xf32>) outs(%833 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %851 = arith.cmpf oeq, %in_330, %in_331 : f32
      %852 = arith.select %851, %in_332, %cst : f32
      %853 = arith.mulf %in_329, %852 : f32
      %854 = arith.mulf %in, %853 : f32
      linalg.yield %854 : f32
    } -> tensor<1x112x112x64xf32>
    %835 = tensor.empty() : tensor<3x7x7x64xf32>
    %836 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26 : tensor<64x7x7x3xf32>) outs(%835 : tensor<3x7x7x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x7x7x64xf32>
    %837 = tensor.empty() : tensor<3xf32>
    %padded_321 = tensor.pad %836 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<3x7x7x64xf32> to tensor<3x8x8x64xf32>
    %expanded_322 = tensor.expand_shape %padded_321 [[0], [1, 2], [3, 4], [5]] : tensor<3x8x8x64xf32> into tensor<3x4x2x4x2x64xf32>
    %838 = tensor.empty() : tensor<2x2x3x4x4x64xf32>
    %839 = linalg.generic {indexing_maps = [#map14, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_322 : tensor<3x4x2x4x2x64xf32>) outs(%838 : tensor<2x2x3x4x4x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x3x4x4x64xf32>
    %collapsed_323 = tensor.collapse_shape %839 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x3x4x4x64xf32> into tensor<12x4x4x64xf32>
    %840 = tensor.empty() : tensor<12x4x4x64xf32>
    %841 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%840 : tensor<12x4x4x64xf32>) {
    ^bb0(%out: f32):
      %851 = linalg.index 0 : index
      %852 = linalg.index 1 : index
      %853 = arith.subi %c3, %852 : index
      %854 = linalg.index 2 : index
      %855 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_323[%851, %853, %854, %855] : tensor<12x4x4x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<12x4x4x64xf32>
    %padded_324 = tensor.pad %834 low[%c0, %c3, %c3, %c0] high[%c0, %c3, %c3, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x112x112x64xf32> to tensor<1x118x118x64xf32>
    %842 = tensor.empty() : tensor<4x4x64x12xf32>
    %843 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%842 : tensor<4x4x64x12xf32>) {
    ^bb0(%out: f32):
      %851 = linalg.index 0 : index
      %852 = linalg.index 1 : index
      %853 = linalg.index 2 : index
      %854 = linalg.index 3 : index
      %855 = arith.subi %c3, %852 : index
      %extracted = tensor.extract %841[%854, %851, %855, %853] : tensor<12x4x4x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<4x4x64x12xf32>
    %844 = tensor.empty() : tensor<1x115x115x12xf32>
    %845 = linalg.fill ins(%cst : f32) outs(%844 : tensor<1x115x115x12xf32>) -> tensor<1x115x115x12xf32>
    %846 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_324, %843 : tensor<1x118x118x64xf32>, tensor<4x4x64x12xf32>) outs(%845 : tensor<1x115x115x12xf32>) -> tensor<1x115x115x12xf32>
    %expanded_325 = tensor.expand_shape %846 [[0], [1], [2], [3, 4, 5]] : tensor<1x115x115x12xf32> into tensor<1x115x115x2x2x3xf32>
    %847 = tensor.empty() : tensor<1x115x2x115x2x3xf32>
    %848 = linalg.generic {indexing_maps = [#map15, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_325 : tensor<1x115x115x2x2x3xf32>) outs(%847 : tensor<1x115x2x115x2x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %851 = arith.addf %in, %cst : f32
      linalg.yield %851 : f32
    } -> tensor<1x115x2x115x2x3xf32>
    %collapsed_326 = tensor.collapse_shape %848 [[0], [1, 2], [3, 4], [5]] : tensor<1x115x2x115x2x3xf32> into tensor<1x230x230x3xf32>
    %extracted_slice_327 = tensor.extract_slice %collapsed_326[0, 3, 3, 0] [1, 224, 224, 3] [1, 1, 1, 1] : tensor<1x230x230x3xf32> to tensor<1x224x224x3xf32>
    %expanded_328 = tensor.expand_shape %837 [[0, 1]] : tensor<3xf32> into tensor<1x3xf32>
    %849 = tensor.empty() : tensor<1x3x224x224xf32>
    %850 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%extracted_slice_327, %expanded_328 : tensor<1x224x224x3xf32>, tensor<1x3xf32>) outs(%849 : tensor<1x3x224x224xf32>) {
    ^bb0(%in: f32, %in_329: f32, %out: f32):
      %851 = arith.addf %in, %in_329 : f32
      linalg.yield %851 : f32
    } -> tensor<1x3x224x224xf32>
    return %850 : tensor<1x3x224x224xf32>
  }
}

