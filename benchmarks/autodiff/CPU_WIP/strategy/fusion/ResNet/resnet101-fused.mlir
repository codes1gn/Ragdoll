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
  ml_program.global private mutable @global912 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global911 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global903 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global902 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global895 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global894 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global887 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global886 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global878 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global877 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global870 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global869 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global862 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global861 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global851 : tensor<1x2048x1x1xf32>
  ml_program.global private mutable @global845 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global844 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global837 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global836 : tensor<1x512x14x14xf32>
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
  ml_program.global private mutable @global370 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global369 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global362 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global361 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global354 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global353 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global345 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global344 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global337 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global336 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global329 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global328 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global320 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global319 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global312 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global311 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global304 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global303 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global295 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global294 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global287 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global286 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global279 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global278 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global268 : tensor<1x1024x1x1xf32>
  ml_program.global private mutable @global262 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global261 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global254 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global253 : tensor<1x256x28x28xf32>
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
      %485 = math.rsqrt %cst_1 : f32
      linalg.yield %485 : f32
    } -> tensor<1x64x1x1xf32>
    ml_program.global_store @global48 = %7 : tensor<1x64x1x1xf32>
    %collapsed = tensor.collapse_shape %7 [[0], [1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<1x64xf32>
    %8 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4, %collapsed : tensor<1x112x112x64xf32>, tensor<1x64xf32>) outs(%5 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x64x112x112xf32>
    ml_program.global_store @global51 = %8 : tensor<1x64x112x112xf32>
    %9 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<1x64x112x112xf32>) outs(%5 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
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
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global60 = %19 : tensor<1x64x56x56xf32>
    %20 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19 : tensor<1x64x56x56xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
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
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global68 = %24 : tensor<1x64x56x56xf32>
    %25 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24 : tensor<1x64x56x56xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
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
      %485 = math.rsqrt %cst_1 : f32
      linalg.yield %485 : f32
    } -> tensor<1x256x1x1xf32>
    ml_program.global_store @global75 = %32 : tensor<1x256x1x1xf32>
    %collapsed_57 = tensor.collapse_shape %32 [[0], [1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<1x256xf32>
    %33 = linalg.matmul ins(%collapsed_53, %cst_19 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%28 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %expanded_58 = tensor.expand_shape %33 [[0, 1, 2], [3]] : tensor<3136x256xf32> into tensor<1x56x56x256xf32>
    %34 = linalg.generic {indexing_maps = [#map2, #map3, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_56, %collapsed_57, %expanded_58 : tensor<1x56x56x256xf32>, tensor<1x256xf32>, tensor<1x56x56x256xf32>) outs(%30 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in_226, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %in, %cst_0 : f32
      %491 = arith.subf %490, %cst : f32
      %492 = arith.mulf %491, %in_225 : f32
      %493 = arith.mulf %492, %cst : f32
      %494 = arith.addf %493, %cst : f32
      %495 = arith.addf %494, %489 : f32
      linalg.yield %495 : f32
    } -> tensor<1x256x56x56xf32>
    ml_program.global_store @global85 = %34 : tensor<1x256x56x56xf32>
    %35 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34 : tensor<1x256x56x56xf32>) outs(%30 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
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
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global93 = %39 : tensor<1x64x56x56xf32>
    %40 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39 : tensor<1x64x56x56xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
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
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global101 = %43 : tensor<1x64x56x56xf32>
    %44 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43 : tensor<1x64x56x56xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
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
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %489, %in_226 : f32
      linalg.yield %490 : f32
    } -> tensor<1x256x56x56xf32>
    ml_program.global_store @global110 = %47 : tensor<1x256x56x56xf32>
    %48 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47 : tensor<1x256x56x56xf32>) outs(%30 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
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
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global118 = %51 : tensor<1x64x56x56xf32>
    %52 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51 : tensor<1x64x56x56xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
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
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global126 = %55 : tensor<1x64x56x56xf32>
    %56 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55 : tensor<1x64x56x56xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
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
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %489, %in_226 : f32
      linalg.yield %490 : f32
    } -> tensor<1x256x56x56xf32>
    ml_program.global_store @global135 = %59 : tensor<1x256x56x56xf32>
    %60 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59 : tensor<1x256x56x56xf32>) outs(%30 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
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
      %485 = math.rsqrt %cst_1 : f32
      linalg.yield %485 : f32
    } -> tensor<1x128x1x1xf32>
    ml_program.global_store @global142 = %67 : tensor<1x128x1x1xf32>
    %collapsed_71 = tensor.collapse_shape %67 [[0], [1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<1x128xf32>
    %68 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_70, %collapsed_71 : tensor<1x56x56x128xf32>, tensor<1x128xf32>) outs(%65 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x128x56x56xf32>
    ml_program.global_store @global145 = %68 : tensor<1x128x56x56xf32>
    %69 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68 : tensor<1x128x56x56xf32>) outs(%65 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
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
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global153 = %76 : tensor<1x128x28x28xf32>
    %77 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76 : tensor<1x128x28x28xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
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
      %485 = math.rsqrt %cst_1 : f32
      linalg.yield %485 : f32
    } -> tensor<1x512x1x1xf32>
    ml_program.global_store @global160 = %84 : tensor<1x512x1x1xf32>
    %collapsed_75 = tensor.collapse_shape %84 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %85 = tensor.empty() : tensor<1x28x28x512xf32>
    %86 = linalg.fill ins(%cst_0 : f32) outs(%85 : tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %87 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%61, %cst_17 : tensor<1x56x56x256xf32>, tensor<1x1x256x512xf32>) outs(%86 : tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %88 = linalg.generic {indexing_maps = [#map2, #map3, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_74, %collapsed_75, %87 : tensor<1x28x28x512xf32>, tensor<1x512xf32>, tensor<1x28x28x512xf32>) outs(%82 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in_226, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %in, %cst_0 : f32
      %491 = arith.subf %490, %cst : f32
      %492 = arith.mulf %491, %in_225 : f32
      %493 = arith.mulf %492, %cst : f32
      %494 = arith.addf %493, %cst : f32
      %495 = arith.addf %494, %489 : f32
      linalg.yield %495 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global170 = %88 : tensor<1x512x28x28xf32>
    %89 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88 : tensor<1x512x28x28xf32>) outs(%82 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
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
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global178 = %94 : tensor<1x128x28x28xf32>
    %95 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94 : tensor<1x128x28x28xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
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
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global186 = %98 : tensor<1x128x28x28xf32>
    %99 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98 : tensor<1x128x28x28xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
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
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %489, %in_226 : f32
      linalg.yield %490 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global195 = %102 : tensor<1x512x28x28xf32>
    %103 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%102 : tensor<1x512x28x28xf32>) outs(%82 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
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
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global203 = %106 : tensor<1x128x28x28xf32>
    %107 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106 : tensor<1x128x28x28xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
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
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global211 = %110 : tensor<1x128x28x28xf32>
    %111 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110 : tensor<1x128x28x28xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
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
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %489, %in_226 : f32
      linalg.yield %490 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global220 = %114 : tensor<1x512x28x28xf32>
    %115 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114 : tensor<1x512x28x28xf32>) outs(%82 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
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
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global228 = %118 : tensor<1x128x28x28xf32>
    %119 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118 : tensor<1x128x28x28xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
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
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global236 = %122 : tensor<1x128x28x28xf32>
    %123 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122 : tensor<1x128x28x28xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
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
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %489, %in_226 : f32
      linalg.yield %490 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global245 = %126 : tensor<1x512x28x28xf32>
    %127 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126 : tensor<1x512x28x28xf32>) outs(%82 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global246 = %127 : tensor<1x512x28x28xf32>
    %128 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%127 : tensor<1x512x28x28xf32>) outs(%85 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_91 = tensor.collapse_shape %128 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %129 = tensor.empty() : tensor<784x256xf32>
    %130 = linalg.fill ins(%cst_0 : f32) outs(%129 : tensor<784x256xf32>) -> tensor<784x256xf32>
    %131 = linalg.matmul ins(%collapsed_91, %cst_13 : tensor<784x512xf32>, tensor<512x256xf32>) outs(%130 : tensor<784x256xf32>) -> tensor<784x256xf32>
    %expanded_92 = tensor.expand_shape %131 [[0, 1, 2], [3]] : tensor<784x256xf32> into tensor<1x28x28x256xf32>
    %132 = tensor.empty() : tensor<1x256x28x28xf32>
    %133 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_92, %collapsed_57 : tensor<1x28x28x256xf32>, tensor<1x256xf32>) outs(%132 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x28x28xf32>
    ml_program.global_store @global253 = %133 : tensor<1x256x28x28xf32>
    %134 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%133 : tensor<1x256x28x28xf32>) outs(%132 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x28x28xf32>
    ml_program.global_store @global254 = %134 : tensor<1x256x28x28xf32>
    %135 = tensor.empty() : tensor<1x28x28x256xf32>
    %136 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134 : tensor<1x256x28x28xf32>) outs(%135 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x256xf32>
    %padded_93 = tensor.pad %136 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x256xf32> to tensor<1x30x30x256xf32>
    %137 = tensor.empty() : tensor<1x14x14x256xf32>
    %138 = linalg.fill ins(%cst_0 : f32) outs(%137 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %139 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded_93, %cst_10 : tensor<1x30x30x256xf32>, tensor<3x3x256x256xf32>) outs(%138 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %140 = tensor.empty() : tensor<1x256x14x14xf32>
    %141 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global261 = %141 : tensor<1x256x14x14xf32>
    %142 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global262 = %142 : tensor<1x256x14x14xf32>
    %143 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_94 = tensor.collapse_shape %143 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %144 = tensor.empty() : tensor<196x1024xf32>
    %145 = linalg.fill ins(%cst_0 : f32) outs(%144 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %146 = linalg.matmul ins(%collapsed_94, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%145 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_95 = tensor.expand_shape %146 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %147 = tensor.empty() : tensor<1x1024x14x14xf32>
    %148 = tensor.empty() : tensor<1x1024x1x1xf32>
    %149 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%148 : tensor<1x1024x1x1xf32>) {
    ^bb0(%out: f32):
      %485 = math.rsqrt %cst_1 : f32
      linalg.yield %485 : f32
    } -> tensor<1x1024x1x1xf32>
    ml_program.global_store @global268 = %149 : tensor<1x1024x1x1xf32>
    %collapsed_96 = tensor.collapse_shape %149 [[0], [1, 2, 3]] : tensor<1x1024x1x1xf32> into tensor<1x1024xf32>
    %150 = tensor.empty() : tensor<1x14x14x1024xf32>
    %151 = linalg.fill ins(%cst_0 : f32) outs(%150 : tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %152 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%128, %cst_12 : tensor<1x28x28x512xf32>, tensor<1x1x512x1024xf32>) outs(%151 : tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %153 = linalg.generic {indexing_maps = [#map2, #map3, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_95, %collapsed_96, %152 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x14x14x1024xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in_226, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %in, %cst_0 : f32
      %491 = arith.subf %490, %cst : f32
      %492 = arith.mulf %491, %in_225 : f32
      %493 = arith.mulf %492, %cst : f32
      %494 = arith.addf %493, %cst : f32
      %495 = arith.addf %494, %489 : f32
      linalg.yield %495 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global278 = %153 : tensor<1x1024x14x14xf32>
    %154 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%153 : tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global279 = %154 : tensor<1x1024x14x14xf32>
    %155 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154 : tensor<1x1024x14x14xf32>) outs(%150 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_97 = tensor.collapse_shape %155 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %156 = tensor.empty() : tensor<196x256xf32>
    %157 = linalg.fill ins(%cst_0 : f32) outs(%156 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %158 = linalg.matmul ins(%collapsed_97, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%157 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_98 = tensor.expand_shape %158 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %159 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_98, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global286 = %159 : tensor<1x256x14x14xf32>
    %160 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%159 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global287 = %160 : tensor<1x256x14x14xf32>
    %161 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_99 = tensor.pad %161 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %162 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_99, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%138 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %163 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global294 = %163 : tensor<1x256x14x14xf32>
    %164 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global295 = %164 : tensor<1x256x14x14xf32>
    %165 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_100 = tensor.collapse_shape %165 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %166 = linalg.matmul ins(%collapsed_100, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%145 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_101 = tensor.expand_shape %166 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %167 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_101, %collapsed_96, %154 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %489, %in_226 : f32
      linalg.yield %490 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global303 = %167 : tensor<1x1024x14x14xf32>
    %168 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167 : tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global304 = %168 : tensor<1x1024x14x14xf32>
    %169 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%168 : tensor<1x1024x14x14xf32>) outs(%150 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_102 = tensor.collapse_shape %169 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %170 = linalg.matmul ins(%collapsed_102, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%157 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_103 = tensor.expand_shape %170 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %171 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_103, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global311 = %171 : tensor<1x256x14x14xf32>
    %172 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global312 = %172 : tensor<1x256x14x14xf32>
    %173 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_104 = tensor.pad %173 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %174 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_104, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%138 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %175 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global319 = %175 : tensor<1x256x14x14xf32>
    %176 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global320 = %176 : tensor<1x256x14x14xf32>
    %177 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_105 = tensor.collapse_shape %177 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %178 = linalg.matmul ins(%collapsed_105, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%145 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_106 = tensor.expand_shape %178 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %179 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_106, %collapsed_96, %168 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %489, %in_226 : f32
      linalg.yield %490 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global328 = %179 : tensor<1x1024x14x14xf32>
    %180 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179 : tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global329 = %180 : tensor<1x1024x14x14xf32>
    %181 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%180 : tensor<1x1024x14x14xf32>) outs(%150 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_107 = tensor.collapse_shape %181 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %182 = linalg.matmul ins(%collapsed_107, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%157 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_108 = tensor.expand_shape %182 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %183 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_108, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global336 = %183 : tensor<1x256x14x14xf32>
    %184 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global337 = %184 : tensor<1x256x14x14xf32>
    %185 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_109 = tensor.pad %185 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %186 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_109, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%138 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %187 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global344 = %187 : tensor<1x256x14x14xf32>
    %188 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global345 = %188 : tensor<1x256x14x14xf32>
    %189 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_110 = tensor.collapse_shape %189 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %190 = linalg.matmul ins(%collapsed_110, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%145 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_111 = tensor.expand_shape %190 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %191 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_111, %collapsed_96, %180 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %489, %in_226 : f32
      linalg.yield %490 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global353 = %191 : tensor<1x1024x14x14xf32>
    %192 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191 : tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global354 = %192 : tensor<1x1024x14x14xf32>
    %193 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192 : tensor<1x1024x14x14xf32>) outs(%150 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_112 = tensor.collapse_shape %193 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %194 = linalg.matmul ins(%collapsed_112, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%157 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_113 = tensor.expand_shape %194 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %195 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_113, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global361 = %195 : tensor<1x256x14x14xf32>
    %196 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global362 = %196 : tensor<1x256x14x14xf32>
    %197 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_114 = tensor.pad %197 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %198 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_114, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%138 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %199 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global369 = %199 : tensor<1x256x14x14xf32>
    %200 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%199 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global370 = %200 : tensor<1x256x14x14xf32>
    %201 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_115 = tensor.collapse_shape %201 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %202 = linalg.matmul ins(%collapsed_115, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%145 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_116 = tensor.expand_shape %202 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %203 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_116, %collapsed_96, %192 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %489, %in_226 : f32
      linalg.yield %490 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global378 = %203 : tensor<1x1024x14x14xf32>
    %204 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203 : tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global379 = %204 : tensor<1x1024x14x14xf32>
    %205 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204 : tensor<1x1024x14x14xf32>) outs(%150 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_117 = tensor.collapse_shape %205 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %206 = linalg.matmul ins(%collapsed_117, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%157 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_118 = tensor.expand_shape %206 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %207 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_118, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global386 = %207 : tensor<1x256x14x14xf32>
    %208 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global387 = %208 : tensor<1x256x14x14xf32>
    %209 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_119 = tensor.pad %209 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %210 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_119, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%138 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %211 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global394 = %211 : tensor<1x256x14x14xf32>
    %212 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global395 = %212 : tensor<1x256x14x14xf32>
    %213 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_120 = tensor.collapse_shape %213 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %214 = linalg.matmul ins(%collapsed_120, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%145 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_121 = tensor.expand_shape %214 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %215 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_121, %collapsed_96, %204 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %489, %in_226 : f32
      linalg.yield %490 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global403 = %215 : tensor<1x1024x14x14xf32>
    %216 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215 : tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global404 = %216 : tensor<1x1024x14x14xf32>
    %217 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%216 : tensor<1x1024x14x14xf32>) outs(%150 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_122 = tensor.collapse_shape %217 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %218 = linalg.matmul ins(%collapsed_122, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%157 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_123 = tensor.expand_shape %218 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %219 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_123, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global411 = %219 : tensor<1x256x14x14xf32>
    %220 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global412 = %220 : tensor<1x256x14x14xf32>
    %221 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%220 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_124 = tensor.pad %221 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %222 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_124, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%138 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %223 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%222, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global419 = %223 : tensor<1x256x14x14xf32>
    %224 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%223 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global420 = %224 : tensor<1x256x14x14xf32>
    %225 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_125 = tensor.collapse_shape %225 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %226 = linalg.matmul ins(%collapsed_125, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%145 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_126 = tensor.expand_shape %226 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %227 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_126, %collapsed_96, %216 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %489, %in_226 : f32
      linalg.yield %490 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global428 = %227 : tensor<1x1024x14x14xf32>
    %228 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%227 : tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global429 = %228 : tensor<1x1024x14x14xf32>
    %229 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%228 : tensor<1x1024x14x14xf32>) outs(%150 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_127 = tensor.collapse_shape %229 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %230 = linalg.matmul ins(%collapsed_127, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%157 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_128 = tensor.expand_shape %230 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %231 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_128, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global436 = %231 : tensor<1x256x14x14xf32>
    %232 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%231 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global437 = %232 : tensor<1x256x14x14xf32>
    %233 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_129 = tensor.pad %233 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %234 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_129, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%138 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %235 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global444 = %235 : tensor<1x256x14x14xf32>
    %236 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%235 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global445 = %236 : tensor<1x256x14x14xf32>
    %237 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_130 = tensor.collapse_shape %237 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %238 = linalg.matmul ins(%collapsed_130, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%145 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_131 = tensor.expand_shape %238 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %239 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_131, %collapsed_96, %228 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %489, %in_226 : f32
      linalg.yield %490 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global453 = %239 : tensor<1x1024x14x14xf32>
    %240 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%239 : tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global454 = %240 : tensor<1x1024x14x14xf32>
    %241 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240 : tensor<1x1024x14x14xf32>) outs(%150 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_132 = tensor.collapse_shape %241 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %242 = linalg.matmul ins(%collapsed_132, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%157 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_133 = tensor.expand_shape %242 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %243 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_133, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global461 = %243 : tensor<1x256x14x14xf32>
    %244 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%243 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global462 = %244 : tensor<1x256x14x14xf32>
    %245 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_134 = tensor.pad %245 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %246 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_134, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%138 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %247 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%246, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global469 = %247 : tensor<1x256x14x14xf32>
    %248 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global470 = %248 : tensor<1x256x14x14xf32>
    %249 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%248 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_135 = tensor.collapse_shape %249 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %250 = linalg.matmul ins(%collapsed_135, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%145 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_136 = tensor.expand_shape %250 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %251 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_136, %collapsed_96, %240 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %489, %in_226 : f32
      linalg.yield %490 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global478 = %251 : tensor<1x1024x14x14xf32>
    %252 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%251 : tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global479 = %252 : tensor<1x1024x14x14xf32>
    %253 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%252 : tensor<1x1024x14x14xf32>) outs(%150 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_137 = tensor.collapse_shape %253 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %254 = linalg.matmul ins(%collapsed_137, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%157 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_138 = tensor.expand_shape %254 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %255 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_138, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global486 = %255 : tensor<1x256x14x14xf32>
    %256 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%255 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global487 = %256 : tensor<1x256x14x14xf32>
    %257 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%256 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_139 = tensor.pad %257 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %258 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_139, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%138 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %259 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%258, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global494 = %259 : tensor<1x256x14x14xf32>
    %260 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global495 = %260 : tensor<1x256x14x14xf32>
    %261 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%260 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_140 = tensor.collapse_shape %261 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %262 = linalg.matmul ins(%collapsed_140, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%145 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_141 = tensor.expand_shape %262 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %263 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_141, %collapsed_96, %252 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %489, %in_226 : f32
      linalg.yield %490 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global503 = %263 : tensor<1x1024x14x14xf32>
    %264 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%263 : tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global504 = %264 : tensor<1x1024x14x14xf32>
    %265 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%264 : tensor<1x1024x14x14xf32>) outs(%150 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_142 = tensor.collapse_shape %265 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %266 = linalg.matmul ins(%collapsed_142, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%157 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_143 = tensor.expand_shape %266 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %267 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_143, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global511 = %267 : tensor<1x256x14x14xf32>
    %268 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global512 = %268 : tensor<1x256x14x14xf32>
    %269 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_144 = tensor.pad %269 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %270 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_144, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%138 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %271 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%270, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global519 = %271 : tensor<1x256x14x14xf32>
    %272 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global520 = %272 : tensor<1x256x14x14xf32>
    %273 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%272 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_145 = tensor.collapse_shape %273 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %274 = linalg.matmul ins(%collapsed_145, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%145 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_146 = tensor.expand_shape %274 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %275 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_146, %collapsed_96, %264 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %489, %in_226 : f32
      linalg.yield %490 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global528 = %275 : tensor<1x1024x14x14xf32>
    %276 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275 : tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global529 = %276 : tensor<1x1024x14x14xf32>
    %277 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%276 : tensor<1x1024x14x14xf32>) outs(%150 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_147 = tensor.collapse_shape %277 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %278 = linalg.matmul ins(%collapsed_147, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%157 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_148 = tensor.expand_shape %278 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %279 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_148, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global536 = %279 : tensor<1x256x14x14xf32>
    %280 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global537 = %280 : tensor<1x256x14x14xf32>
    %281 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%280 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_149 = tensor.pad %281 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %282 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_149, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%138 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %283 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%282, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global544 = %283 : tensor<1x256x14x14xf32>
    %284 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%283 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global545 = %284 : tensor<1x256x14x14xf32>
    %285 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%284 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_150 = tensor.collapse_shape %285 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %286 = linalg.matmul ins(%collapsed_150, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%145 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_151 = tensor.expand_shape %286 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %287 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_151, %collapsed_96, %276 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %489, %in_226 : f32
      linalg.yield %490 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global553 = %287 : tensor<1x1024x14x14xf32>
    %288 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287 : tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global554 = %288 : tensor<1x1024x14x14xf32>
    %289 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%288 : tensor<1x1024x14x14xf32>) outs(%150 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_152 = tensor.collapse_shape %289 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %290 = linalg.matmul ins(%collapsed_152, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%157 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_153 = tensor.expand_shape %290 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %291 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_153, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global561 = %291 : tensor<1x256x14x14xf32>
    %292 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%291 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global562 = %292 : tensor<1x256x14x14xf32>
    %293 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%292 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_154 = tensor.pad %293 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %294 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_154, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%138 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %295 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global569 = %295 : tensor<1x256x14x14xf32>
    %296 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%295 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global570 = %296 : tensor<1x256x14x14xf32>
    %297 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%296 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_155 = tensor.collapse_shape %297 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %298 = linalg.matmul ins(%collapsed_155, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%145 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_156 = tensor.expand_shape %298 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %299 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_156, %collapsed_96, %288 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %489, %in_226 : f32
      linalg.yield %490 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global578 = %299 : tensor<1x1024x14x14xf32>
    %300 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%299 : tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global579 = %300 : tensor<1x1024x14x14xf32>
    %301 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%300 : tensor<1x1024x14x14xf32>) outs(%150 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_157 = tensor.collapse_shape %301 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %302 = linalg.matmul ins(%collapsed_157, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%157 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_158 = tensor.expand_shape %302 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %303 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_158, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global586 = %303 : tensor<1x256x14x14xf32>
    %304 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%303 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global587 = %304 : tensor<1x256x14x14xf32>
    %305 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_159 = tensor.pad %305 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %306 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_159, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%138 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %307 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%306, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global594 = %307 : tensor<1x256x14x14xf32>
    %308 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%307 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global595 = %308 : tensor<1x256x14x14xf32>
    %309 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_160 = tensor.collapse_shape %309 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %310 = linalg.matmul ins(%collapsed_160, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%145 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_161 = tensor.expand_shape %310 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %311 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_161, %collapsed_96, %300 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %489, %in_226 : f32
      linalg.yield %490 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global603 = %311 : tensor<1x1024x14x14xf32>
    %312 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%311 : tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global604 = %312 : tensor<1x1024x14x14xf32>
    %313 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%312 : tensor<1x1024x14x14xf32>) outs(%150 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_162 = tensor.collapse_shape %313 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %314 = linalg.matmul ins(%collapsed_162, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%157 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_163 = tensor.expand_shape %314 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %315 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_163, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global611 = %315 : tensor<1x256x14x14xf32>
    %316 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%315 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global612 = %316 : tensor<1x256x14x14xf32>
    %317 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%316 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_164 = tensor.pad %317 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %318 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_164, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%138 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %319 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%318, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global619 = %319 : tensor<1x256x14x14xf32>
    %320 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%319 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global620 = %320 : tensor<1x256x14x14xf32>
    %321 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%320 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_165 = tensor.collapse_shape %321 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %322 = linalg.matmul ins(%collapsed_165, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%145 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_166 = tensor.expand_shape %322 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %323 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_166, %collapsed_96, %312 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %489, %in_226 : f32
      linalg.yield %490 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global628 = %323 : tensor<1x1024x14x14xf32>
    %324 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%323 : tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global629 = %324 : tensor<1x1024x14x14xf32>
    %325 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%324 : tensor<1x1024x14x14xf32>) outs(%150 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_167 = tensor.collapse_shape %325 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %326 = linalg.matmul ins(%collapsed_167, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%157 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_168 = tensor.expand_shape %326 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %327 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_168, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global636 = %327 : tensor<1x256x14x14xf32>
    %328 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%327 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global637 = %328 : tensor<1x256x14x14xf32>
    %329 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%328 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_169 = tensor.pad %329 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %330 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_169, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%138 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %331 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%330, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global644 = %331 : tensor<1x256x14x14xf32>
    %332 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global645 = %332 : tensor<1x256x14x14xf32>
    %333 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%332 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_170 = tensor.collapse_shape %333 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %334 = linalg.matmul ins(%collapsed_170, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%145 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_171 = tensor.expand_shape %334 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %335 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_171, %collapsed_96, %324 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %489, %in_226 : f32
      linalg.yield %490 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global653 = %335 : tensor<1x1024x14x14xf32>
    %336 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%335 : tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global654 = %336 : tensor<1x1024x14x14xf32>
    %337 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%336 : tensor<1x1024x14x14xf32>) outs(%150 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_172 = tensor.collapse_shape %337 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %338 = linalg.matmul ins(%collapsed_172, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%157 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_173 = tensor.expand_shape %338 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %339 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_173, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global661 = %339 : tensor<1x256x14x14xf32>
    %340 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%339 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global662 = %340 : tensor<1x256x14x14xf32>
    %341 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%340 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_174 = tensor.pad %341 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %342 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_174, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%138 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %343 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%342, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global669 = %343 : tensor<1x256x14x14xf32>
    %344 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%343 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global670 = %344 : tensor<1x256x14x14xf32>
    %345 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_175 = tensor.collapse_shape %345 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %346 = linalg.matmul ins(%collapsed_175, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%145 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_176 = tensor.expand_shape %346 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %347 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_176, %collapsed_96, %336 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %489, %in_226 : f32
      linalg.yield %490 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global678 = %347 : tensor<1x1024x14x14xf32>
    %348 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%347 : tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global679 = %348 : tensor<1x1024x14x14xf32>
    %349 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%348 : tensor<1x1024x14x14xf32>) outs(%150 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_177 = tensor.collapse_shape %349 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %350 = linalg.matmul ins(%collapsed_177, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%157 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_178 = tensor.expand_shape %350 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %351 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_178, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global686 = %351 : tensor<1x256x14x14xf32>
    %352 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global687 = %352 : tensor<1x256x14x14xf32>
    %353 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%352 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_179 = tensor.pad %353 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %354 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_179, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%138 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %355 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%354, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global694 = %355 : tensor<1x256x14x14xf32>
    %356 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%355 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global695 = %356 : tensor<1x256x14x14xf32>
    %357 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%356 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_180 = tensor.collapse_shape %357 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %358 = linalg.matmul ins(%collapsed_180, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%145 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_181 = tensor.expand_shape %358 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %359 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_181, %collapsed_96, %348 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %489, %in_226 : f32
      linalg.yield %490 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global703 = %359 : tensor<1x1024x14x14xf32>
    %360 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359 : tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global704 = %360 : tensor<1x1024x14x14xf32>
    %361 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%360 : tensor<1x1024x14x14xf32>) outs(%150 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_182 = tensor.collapse_shape %361 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %362 = linalg.matmul ins(%collapsed_182, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%157 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_183 = tensor.expand_shape %362 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %363 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_183, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global711 = %363 : tensor<1x256x14x14xf32>
    %364 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%363 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global712 = %364 : tensor<1x256x14x14xf32>
    %365 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%364 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_184 = tensor.pad %365 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %366 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_184, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%138 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %367 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%366, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global719 = %367 : tensor<1x256x14x14xf32>
    %368 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%367 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global720 = %368 : tensor<1x256x14x14xf32>
    %369 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%368 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_185 = tensor.collapse_shape %369 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %370 = linalg.matmul ins(%collapsed_185, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%145 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_186 = tensor.expand_shape %370 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %371 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_186, %collapsed_96, %360 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %489, %in_226 : f32
      linalg.yield %490 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global728 = %371 : tensor<1x1024x14x14xf32>
    %372 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%371 : tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global729 = %372 : tensor<1x1024x14x14xf32>
    %373 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%372 : tensor<1x1024x14x14xf32>) outs(%150 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_187 = tensor.collapse_shape %373 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %374 = linalg.matmul ins(%collapsed_187, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%157 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_188 = tensor.expand_shape %374 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %375 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_188, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global736 = %375 : tensor<1x256x14x14xf32>
    %376 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%375 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global737 = %376 : tensor<1x256x14x14xf32>
    %377 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%376 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_189 = tensor.pad %377 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %378 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_189, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%138 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %379 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%378, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global744 = %379 : tensor<1x256x14x14xf32>
    %380 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%379 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global745 = %380 : tensor<1x256x14x14xf32>
    %381 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%380 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_190 = tensor.collapse_shape %381 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %382 = linalg.matmul ins(%collapsed_190, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%145 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_191 = tensor.expand_shape %382 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %383 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_191, %collapsed_96, %372 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %489, %in_226 : f32
      linalg.yield %490 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global753 = %383 : tensor<1x1024x14x14xf32>
    %384 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%383 : tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global754 = %384 : tensor<1x1024x14x14xf32>
    %385 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%384 : tensor<1x1024x14x14xf32>) outs(%150 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_192 = tensor.collapse_shape %385 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %386 = linalg.matmul ins(%collapsed_192, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%157 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_193 = tensor.expand_shape %386 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %387 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_193, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global761 = %387 : tensor<1x256x14x14xf32>
    %388 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%387 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global762 = %388 : tensor<1x256x14x14xf32>
    %389 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%388 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_194 = tensor.pad %389 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %390 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_194, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%138 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %391 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%390, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global769 = %391 : tensor<1x256x14x14xf32>
    %392 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%391 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global770 = %392 : tensor<1x256x14x14xf32>
    %393 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%392 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_195 = tensor.collapse_shape %393 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %394 = linalg.matmul ins(%collapsed_195, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%145 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_196 = tensor.expand_shape %394 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %395 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_196, %collapsed_96, %384 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %489, %in_226 : f32
      linalg.yield %490 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global778 = %395 : tensor<1x1024x14x14xf32>
    %396 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%395 : tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global779 = %396 : tensor<1x1024x14x14xf32>
    %397 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%396 : tensor<1x1024x14x14xf32>) outs(%150 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_197 = tensor.collapse_shape %397 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %398 = linalg.matmul ins(%collapsed_197, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%157 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_198 = tensor.expand_shape %398 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %399 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_198, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global786 = %399 : tensor<1x256x14x14xf32>
    %400 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%399 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global787 = %400 : tensor<1x256x14x14xf32>
    %401 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%400 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_199 = tensor.pad %401 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %402 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_199, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%138 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %403 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%402, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global794 = %403 : tensor<1x256x14x14xf32>
    %404 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%403 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global795 = %404 : tensor<1x256x14x14xf32>
    %405 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%404 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_200 = tensor.collapse_shape %405 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %406 = linalg.matmul ins(%collapsed_200, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%145 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_201 = tensor.expand_shape %406 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %407 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_201, %collapsed_96, %396 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %489, %in_226 : f32
      linalg.yield %490 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global803 = %407 : tensor<1x1024x14x14xf32>
    %408 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%407 : tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global804 = %408 : tensor<1x1024x14x14xf32>
    %409 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%408 : tensor<1x1024x14x14xf32>) outs(%150 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_202 = tensor.collapse_shape %409 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %410 = linalg.matmul ins(%collapsed_202, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%157 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_203 = tensor.expand_shape %410 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %411 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_203, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global811 = %411 : tensor<1x256x14x14xf32>
    %412 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%411 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global812 = %412 : tensor<1x256x14x14xf32>
    %413 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%412 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_204 = tensor.pad %413 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %414 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_204, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%138 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %415 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%414, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global819 = %415 : tensor<1x256x14x14xf32>
    %416 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%415 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global820 = %416 : tensor<1x256x14x14xf32>
    %417 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%416 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_205 = tensor.collapse_shape %417 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %418 = linalg.matmul ins(%collapsed_205, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%145 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_206 = tensor.expand_shape %418 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %419 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_206, %collapsed_96, %408 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %489, %in_226 : f32
      linalg.yield %490 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global828 = %419 : tensor<1x1024x14x14xf32>
    %420 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%419 : tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global829 = %420 : tensor<1x1024x14x14xf32>
    %421 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%420 : tensor<1x1024x14x14xf32>) outs(%150 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_207 = tensor.collapse_shape %421 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %422 = tensor.empty() : tensor<196x512xf32>
    %423 = linalg.fill ins(%cst_0 : f32) outs(%422 : tensor<196x512xf32>) -> tensor<196x512xf32>
    %424 = linalg.matmul ins(%collapsed_207, %cst_8 : tensor<196x1024xf32>, tensor<1024x512xf32>) outs(%423 : tensor<196x512xf32>) -> tensor<196x512xf32>
    %expanded_208 = tensor.expand_shape %424 [[0, 1, 2], [3]] : tensor<196x512xf32> into tensor<1x14x14x512xf32>
    %425 = tensor.empty() : tensor<1x512x14x14xf32>
    %426 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_208, %collapsed_75 : tensor<1x14x14x512xf32>, tensor<1x512xf32>) outs(%425 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x512x14x14xf32>
    ml_program.global_store @global836 = %426 : tensor<1x512x14x14xf32>
    %427 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%426 : tensor<1x512x14x14xf32>) outs(%425 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x512x14x14xf32>
    ml_program.global_store @global837 = %427 : tensor<1x512x14x14xf32>
    %428 = tensor.empty() : tensor<1x14x14x512xf32>
    %429 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%427 : tensor<1x512x14x14xf32>) outs(%428 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x512xf32>
    %padded_209 = tensor.pad %429 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x512xf32> to tensor<1x16x16x512xf32>
    %430 = tensor.empty() : tensor<1x7x7x512xf32>
    %431 = linalg.fill ins(%cst_0 : f32) outs(%430 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %432 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded_209, %cst_5 : tensor<1x16x16x512xf32>, tensor<3x3x512x512xf32>) outs(%431 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %433 = tensor.empty() : tensor<1x512x7x7xf32>
    %434 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%432, %collapsed_75 : tensor<1x7x7x512xf32>, tensor<1x512xf32>) outs(%433 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global844 = %434 : tensor<1x512x7x7xf32>
    %435 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%434 : tensor<1x512x7x7xf32>) outs(%433 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global845 = %435 : tensor<1x512x7x7xf32>
    %436 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%435 : tensor<1x512x7x7xf32>) outs(%430 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %collapsed_210 = tensor.collapse_shape %436 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %437 = tensor.empty() : tensor<49x2048xf32>
    %438 = linalg.fill ins(%cst_0 : f32) outs(%437 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %439 = linalg.matmul ins(%collapsed_210, %cst_4 : tensor<49x512xf32>, tensor<512x2048xf32>) outs(%438 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %expanded_211 = tensor.expand_shape %439 [[0, 1, 2], [3]] : tensor<49x2048xf32> into tensor<1x7x7x2048xf32>
    %440 = tensor.empty() : tensor<1x2048x7x7xf32>
    %441 = tensor.empty() : tensor<1x2048x1x1xf32>
    %442 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%441 : tensor<1x2048x1x1xf32>) {
    ^bb0(%out: f32):
      %485 = math.rsqrt %cst_1 : f32
      linalg.yield %485 : f32
    } -> tensor<1x2048x1x1xf32>
    ml_program.global_store @global851 = %442 : tensor<1x2048x1x1xf32>
    %collapsed_212 = tensor.collapse_shape %442 [[0], [1, 2, 3]] : tensor<1x2048x1x1xf32> into tensor<1x2048xf32>
    %443 = tensor.empty() : tensor<1x7x7x2048xf32>
    %444 = linalg.fill ins(%cst_0 : f32) outs(%443 : tensor<1x7x7x2048xf32>) -> tensor<1x7x7x2048xf32>
    %445 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%421, %cst_7 : tensor<1x14x14x1024xf32>, tensor<1x1x1024x2048xf32>) outs(%444 : tensor<1x7x7x2048xf32>) -> tensor<1x7x7x2048xf32>
    %446 = linalg.generic {indexing_maps = [#map2, #map3, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_211, %collapsed_212, %445 : tensor<1x7x7x2048xf32>, tensor<1x2048xf32>, tensor<1x7x7x2048xf32>) outs(%440 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in_226, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %in, %cst_0 : f32
      %491 = arith.subf %490, %cst : f32
      %492 = arith.mulf %491, %in_225 : f32
      %493 = arith.mulf %492, %cst : f32
      %494 = arith.addf %493, %cst : f32
      %495 = arith.addf %494, %489 : f32
      linalg.yield %495 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global861 = %446 : tensor<1x2048x7x7xf32>
    %447 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%446 : tensor<1x2048x7x7xf32>) outs(%440 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global862 = %447 : tensor<1x2048x7x7xf32>
    %448 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%447 : tensor<1x2048x7x7xf32>) outs(%443 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x2048xf32>
    %collapsed_213 = tensor.collapse_shape %448 [[0, 1, 2], [3]] : tensor<1x7x7x2048xf32> into tensor<49x2048xf32>
    %449 = tensor.empty() : tensor<49x512xf32>
    %450 = linalg.fill ins(%cst_0 : f32) outs(%449 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %451 = linalg.matmul ins(%collapsed_213, %cst_6 : tensor<49x2048xf32>, tensor<2048x512xf32>) outs(%450 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %expanded_214 = tensor.expand_shape %451 [[0, 1, 2], [3]] : tensor<49x512xf32> into tensor<1x7x7x512xf32>
    %452 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_214, %collapsed_75 : tensor<1x7x7x512xf32>, tensor<1x512xf32>) outs(%433 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global869 = %452 : tensor<1x512x7x7xf32>
    %453 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%452 : tensor<1x512x7x7xf32>) outs(%433 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global870 = %453 : tensor<1x512x7x7xf32>
    %454 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%453 : tensor<1x512x7x7xf32>) outs(%430 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_215 = tensor.pad %454 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %455 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_215, %cst_5 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%431 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %456 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%455, %collapsed_75 : tensor<1x7x7x512xf32>, tensor<1x512xf32>) outs(%433 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global877 = %456 : tensor<1x512x7x7xf32>
    %457 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%456 : tensor<1x512x7x7xf32>) outs(%433 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global878 = %457 : tensor<1x512x7x7xf32>
    %458 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%457 : tensor<1x512x7x7xf32>) outs(%430 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %collapsed_216 = tensor.collapse_shape %458 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %459 = linalg.matmul ins(%collapsed_216, %cst_4 : tensor<49x512xf32>, tensor<512x2048xf32>) outs(%438 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %expanded_217 = tensor.expand_shape %459 [[0, 1, 2], [3]] : tensor<49x2048xf32> into tensor<1x7x7x2048xf32>
    %460 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_217, %collapsed_212, %447 : tensor<1x7x7x2048xf32>, tensor<1x2048xf32>, tensor<1x2048x7x7xf32>) outs(%440 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %489, %in_226 : f32
      linalg.yield %490 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global886 = %460 : tensor<1x2048x7x7xf32>
    %461 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%460 : tensor<1x2048x7x7xf32>) outs(%440 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global887 = %461 : tensor<1x2048x7x7xf32>
    %462 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%461 : tensor<1x2048x7x7xf32>) outs(%443 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x2048xf32>
    %collapsed_218 = tensor.collapse_shape %462 [[0, 1, 2], [3]] : tensor<1x7x7x2048xf32> into tensor<49x2048xf32>
    %463 = linalg.matmul ins(%collapsed_218, %cst_6 : tensor<49x2048xf32>, tensor<2048x512xf32>) outs(%450 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %expanded_219 = tensor.expand_shape %463 [[0, 1, 2], [3]] : tensor<49x512xf32> into tensor<1x7x7x512xf32>
    %464 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_219, %collapsed_75 : tensor<1x7x7x512xf32>, tensor<1x512xf32>) outs(%433 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global894 = %464 : tensor<1x512x7x7xf32>
    %465 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%464 : tensor<1x512x7x7xf32>) outs(%433 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global895 = %465 : tensor<1x512x7x7xf32>
    %466 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%465 : tensor<1x512x7x7xf32>) outs(%430 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_220 = tensor.pad %466 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %467 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_220, %cst_5 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%431 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %468 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%467, %collapsed_75 : tensor<1x7x7x512xf32>, tensor<1x512xf32>) outs(%433 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_225: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      linalg.yield %489 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global902 = %468 : tensor<1x512x7x7xf32>
    %469 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%468 : tensor<1x512x7x7xf32>) outs(%433 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global903 = %469 : tensor<1x512x7x7xf32>
    %470 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%469 : tensor<1x512x7x7xf32>) outs(%430 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %collapsed_221 = tensor.collapse_shape %470 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %471 = linalg.matmul ins(%collapsed_221, %cst_4 : tensor<49x512xf32>, tensor<512x2048xf32>) outs(%438 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %expanded_222 = tensor.expand_shape %471 [[0, 1, 2], [3]] : tensor<49x2048xf32> into tensor<1x7x7x2048xf32>
    %472 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_222, %collapsed_212, %461 : tensor<1x7x7x2048xf32>, tensor<1x2048xf32>, tensor<1x2048x7x7xf32>) outs(%440 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_225: f32, %in_226: f32, %out: f32):
      %485 = arith.addf %in, %cst_0 : f32
      %486 = arith.subf %485, %cst : f32
      %487 = arith.mulf %486, %in_225 : f32
      %488 = arith.mulf %487, %cst : f32
      %489 = arith.addf %488, %cst : f32
      %490 = arith.addf %489, %in_226 : f32
      linalg.yield %490 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global911 = %472 : tensor<1x2048x7x7xf32>
    %473 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%472 : tensor<1x2048x7x7xf32>) outs(%440 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.minf %in, %cst_2 : f32
      %486 = arith.maxf %485, %cst_0 : f32
      linalg.yield %486 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global912 = %473 : tensor<1x2048x7x7xf32>
    %474 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%473 : tensor<1x2048x7x7xf32>) outs(%443 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x2048xf32>
    %475 = tensor.empty() : tensor<1x1x1x2048xf32>
    %476 = linalg.fill ins(%cst_0 : f32) outs(%475 : tensor<1x1x1x2048xf32>) -> tensor<1x1x1x2048xf32>
    %477 = tensor.empty() : tensor<7x7xf32>
    %478 = linalg.pooling_nhwc_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%474, %477 : tensor<1x7x7x2048xf32>, tensor<7x7xf32>) outs(%476 : tensor<1x1x1x2048xf32>) -> tensor<1x1x1x2048xf32>
    %479 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%478 : tensor<1x1x1x2048xf32>) outs(%475 : tensor<1x1x1x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.divf %in, %cst_3 : f32
      linalg.yield %485 : f32
    } -> tensor<1x1x1x2048xf32>
    %collapsed_223 = tensor.collapse_shape %479 [[0], [1, 2], [3]] : tensor<1x1x1x2048xf32> into tensor<1x1x2048xf32>
    %480 = tensor.empty() : tensor<1x1x1000xf32>
    %481 = linalg.fill ins(%cst_0 : f32) outs(%480 : tensor<1x1x1000xf32>) -> tensor<1x1x1000xf32>
    %482 = linalg.batch_matmul ins(%collapsed_223, %cst_25 : tensor<1x1x2048xf32>, tensor<1x2048x1000xf32>) outs(%481 : tensor<1x1x1000xf32>) -> tensor<1x1x1000xf32>
    %483 = tensor.empty() : tensor<1x1x1000xf32>
    %484 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = ["parallel", "parallel", "parallel"]} ins(%482 : tensor<1x1x1000xf32>) outs(%483 : tensor<1x1x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      %485 = arith.addf %in, %cst : f32
      linalg.yield %485 : f32
    } -> tensor<1x1x1000xf32>
    %collapsed_224 = tensor.collapse_shape %484 [[0, 1], [2]] : tensor<1x1x1000xf32> into tensor<1x1000xf32>
    return %collapsed_224 : tensor<1x1000xf32>
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
    %77 = ml_program.global_load @global253 : tensor<1x256x28x28xf32>
    %78 = ml_program.global_load @global254 : tensor<1x256x28x28xf32>
    %79 = ml_program.global_load @global261 : tensor<1x256x14x14xf32>
    %80 = ml_program.global_load @global262 : tensor<1x256x14x14xf32>
    %81 = ml_program.global_load @global268 : tensor<1x1024x1x1xf32>
    %82 = ml_program.global_load @global278 : tensor<1x1024x14x14xf32>
    %83 = ml_program.global_load @global279 : tensor<1x1024x14x14xf32>
    %84 = ml_program.global_load @global286 : tensor<1x256x14x14xf32>
    %85 = ml_program.global_load @global287 : tensor<1x256x14x14xf32>
    %86 = ml_program.global_load @global294 : tensor<1x256x14x14xf32>
    %87 = ml_program.global_load @global295 : tensor<1x256x14x14xf32>
    %88 = ml_program.global_load @global303 : tensor<1x1024x14x14xf32>
    %89 = ml_program.global_load @global304 : tensor<1x1024x14x14xf32>
    %90 = ml_program.global_load @global311 : tensor<1x256x14x14xf32>
    %91 = ml_program.global_load @global312 : tensor<1x256x14x14xf32>
    %92 = ml_program.global_load @global319 : tensor<1x256x14x14xf32>
    %93 = ml_program.global_load @global320 : tensor<1x256x14x14xf32>
    %94 = ml_program.global_load @global328 : tensor<1x1024x14x14xf32>
    %95 = ml_program.global_load @global329 : tensor<1x1024x14x14xf32>
    %96 = ml_program.global_load @global336 : tensor<1x256x14x14xf32>
    %97 = ml_program.global_load @global337 : tensor<1x256x14x14xf32>
    %98 = ml_program.global_load @global344 : tensor<1x256x14x14xf32>
    %99 = ml_program.global_load @global345 : tensor<1x256x14x14xf32>
    %100 = ml_program.global_load @global353 : tensor<1x1024x14x14xf32>
    %101 = ml_program.global_load @global354 : tensor<1x1024x14x14xf32>
    %102 = ml_program.global_load @global361 : tensor<1x256x14x14xf32>
    %103 = ml_program.global_load @global362 : tensor<1x256x14x14xf32>
    %104 = ml_program.global_load @global369 : tensor<1x256x14x14xf32>
    %105 = ml_program.global_load @global370 : tensor<1x256x14x14xf32>
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
    %216 = ml_program.global_load @global836 : tensor<1x512x14x14xf32>
    %217 = ml_program.global_load @global837 : tensor<1x512x14x14xf32>
    %218 = ml_program.global_load @global844 : tensor<1x512x7x7xf32>
    %219 = ml_program.global_load @global845 : tensor<1x512x7x7xf32>
    %220 = ml_program.global_load @global851 : tensor<1x2048x1x1xf32>
    %221 = ml_program.global_load @global861 : tensor<1x2048x7x7xf32>
    %222 = ml_program.global_load @global862 : tensor<1x2048x7x7xf32>
    %223 = ml_program.global_load @global869 : tensor<1x512x7x7xf32>
    %224 = ml_program.global_load @global870 : tensor<1x512x7x7xf32>
    %225 = ml_program.global_load @global877 : tensor<1x512x7x7xf32>
    %226 = ml_program.global_load @global878 : tensor<1x512x7x7xf32>
    %227 = ml_program.global_load @global886 : tensor<1x2048x7x7xf32>
    %228 = ml_program.global_load @global887 : tensor<1x2048x7x7xf32>
    %229 = ml_program.global_load @global894 : tensor<1x512x7x7xf32>
    %230 = ml_program.global_load @global895 : tensor<1x512x7x7xf32>
    %231 = ml_program.global_load @global902 : tensor<1x512x7x7xf32>
    %232 = ml_program.global_load @global903 : tensor<1x512x7x7xf32>
    %233 = ml_program.global_load @global911 : tensor<1x2048x7x7xf32>
    %234 = ml_program.global_load @global912 : tensor<1x2048x7x7xf32>
    %expanded = tensor.expand_shape %arg0 [[0, 1], [2]] : tensor<1x1000xf32> into tensor<1x1x1000xf32>
    %235 = tensor.empty() : tensor<1x1000x2048xf32>
    %236 = linalg.generic {indexing_maps = [#map5, #map4], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0 : tensor<1x2048x1000xf32>) outs(%235 : tensor<1x1000x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1000x2048xf32>
    %237 = tensor.empty() : tensor<1x1x2048xf32>
    %238 = linalg.fill ins(%cst : f32) outs(%237 : tensor<1x1x2048xf32>) -> tensor<1x1x2048xf32>
    %239 = linalg.batch_matmul ins(%expanded, %236 : tensor<1x1x1000xf32>, tensor<1x1000x2048xf32>) outs(%238 : tensor<1x1x2048xf32>) -> tensor<1x1x2048xf32>
    %240 = tensor.empty() : tensor<1x7x7x2048xf32>
    %241 = tensor.empty() : tensor<1x2048x7x7xf32>
    %expanded_2 = tensor.expand_shape %233 [[0, 1], [2], [3], [4]] : tensor<1x2048x7x7xf32> into tensor<1x1x2048x7x7xf32>
    %expanded_3 = tensor.expand_shape %234 [[0, 1], [2], [3], [4]] : tensor<1x2048x7x7xf32> into tensor<1x1x2048x7x7xf32>
    %242 = tensor.empty() : tensor<1x1x2048x7x7xf32>
    %243 = linalg.generic {indexing_maps = [#map6, #map6, #map7, #map6], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_2, %expanded_3, %239 : tensor<1x1x2048x7x7xf32>, tensor<1x1x2048x7x7xf32>, tensor<1x1x2048xf32>) outs(%242 : tensor<1x1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %out: f32):
      %630 = arith.mulf %in_245, %cst_0 : f32
      %631 = arith.cmpf oeq, %in, %in_244 : f32
      %632 = arith.select %631, %630, %cst : f32
      linalg.yield %632 : f32
    } -> tensor<1x1x2048x7x7xf32>
    %collapsed = tensor.collapse_shape %243 [[0, 1], [2], [3], [4]] : tensor<1x1x2048x7x7xf32> into tensor<1x2048x7x7xf32>
    %collapsed_4 = tensor.collapse_shape %3 [[0], [1, 2, 3]] : tensor<1x2048x1x1xf32> into tensor<1x2048xf32>
    %collapsed_5 = tensor.collapse_shape %220 [[0], [1, 2, 3]] : tensor<1x2048x1x1xf32> into tensor<1x2048xf32>
    %244 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_5, %collapsed_4, %collapsed : tensor<1x2048xf32>, tensor<1x2048xf32>, tensor<1x2048x7x7xf32>) outs(%240 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %out: f32):
      %630 = arith.mulf %in_244, %in_245 : f32
      %631 = arith.mulf %in, %630 : f32
      linalg.yield %631 : f32
    } -> tensor<1x7x7x2048xf32>
    %245 = tensor.empty() : tensor<512xf32>
    %collapsed_6 = tensor.collapse_shape %244 [[0, 1, 2], [3]] : tensor<1x7x7x2048xf32> into tensor<49x2048xf32>
    %246 = tensor.empty() : tensor<49x512xf32>
    %247 = linalg.fill ins(%cst : f32) outs(%246 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %248 = tensor.empty() : tensor<2048x512x1x1xf32>
    %249 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<2048x1x1x512xf32>) outs(%248 : tensor<2048x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512x1x1xf32>
    %collapsed_7 = tensor.collapse_shape %249 [[0], [1, 2, 3]] : tensor<2048x512x1x1xf32> into tensor<2048x512xf32>
    %250 = linalg.matmul ins(%collapsed_6, %collapsed_7 : tensor<49x2048xf32>, tensor<2048x512xf32>) outs(%247 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %expanded_8 = tensor.expand_shape %250 [[0, 1, 2], [3]] : tensor<49x512xf32> into tensor<1x7x7x512xf32>
    %collapsed_9 = tensor.collapse_shape %15 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %collapsed_10 = tensor.collapse_shape %56 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %251 = tensor.empty() : tensor<1x7x7x512xf32>
    %252 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %231, %232, %245, %expanded_8 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%251 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x7x7x512xf32>
    %253 = tensor.empty() : tensor<512x3x3x512xf32>
    %254 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5 : tensor<512x3x3x512xf32>) outs(%253 : tensor<512x3x3x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x3x3x512xf32>
    %255 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%253 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %630 = linalg.index 0 : index
      %631 = linalg.index 1 : index
      %632 = arith.subi %c2, %631 : index
      %633 = linalg.index 2 : index
      %634 = linalg.index 3 : index
      %extracted = tensor.extract %254[%630, %632, %633, %634] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded = tensor.pad %252 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %256 = tensor.empty() : tensor<3x3x512x512xf32>
    %257 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%256 : tensor<3x3x512x512xf32>) {
    ^bb0(%out: f32):
      %630 = linalg.index 0 : index
      %631 = linalg.index 1 : index
      %632 = linalg.index 2 : index
      %633 = linalg.index 3 : index
      %634 = arith.subi %c2, %631 : index
      %extracted = tensor.extract %255[%633, %630, %634, %632] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x512x512xf32>
    %258 = linalg.fill ins(%cst : f32) outs(%251 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %259 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded, %257 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%258 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %260 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %229, %230, %245, %259 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%251 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x7x7x512xf32>
    %261 = tensor.empty() : tensor<2048xf32>
    %collapsed_11 = tensor.collapse_shape %260 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %262 = tensor.empty() : tensor<49x2048xf32>
    %263 = linalg.fill ins(%cst : f32) outs(%262 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %264 = tensor.empty() : tensor<512x2048x1x1xf32>
    %265 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1 : tensor<512x1x1x2048xf32>) outs(%264 : tensor<512x2048x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048x1x1xf32>
    %collapsed_12 = tensor.collapse_shape %265 [[0], [1, 2, 3]] : tensor<512x2048x1x1xf32> into tensor<512x2048xf32>
    %266 = linalg.matmul ins(%collapsed_11, %collapsed_12 : tensor<49x512xf32>, tensor<512x2048xf32>) outs(%263 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %expanded_13 = tensor.expand_shape %266 [[0, 1, 2], [3]] : tensor<49x2048xf32> into tensor<1x7x7x2048xf32>
    %267 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%227, %228, %collapsed, %261, %expanded_13 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>, tensor<2048xf32>, tensor<1x7x7x2048xf32>) outs(%241 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %out: f32):
      %630 = arith.addf %in_246, %in_247 : f32
      %631 = arith.addf %in_245, %630 : f32
      %632 = arith.cmpf oeq, %in, %in_244 : f32
      %633 = arith.select %632, %631, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<1x2048x7x7xf32>
    %268 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_5, %collapsed_4, %267 : tensor<1x2048xf32>, tensor<1x2048xf32>, tensor<1x2048x7x7xf32>) outs(%240 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %out: f32):
      %630 = arith.mulf %in_244, %in_245 : f32
      %631 = arith.mulf %in, %630 : f32
      linalg.yield %631 : f32
    } -> tensor<1x7x7x2048xf32>
    %collapsed_14 = tensor.collapse_shape %268 [[0, 1, 2], [3]] : tensor<1x7x7x2048xf32> into tensor<49x2048xf32>
    %269 = linalg.matmul ins(%collapsed_14, %collapsed_7 : tensor<49x2048xf32>, tensor<2048x512xf32>) outs(%247 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %expanded_15 = tensor.expand_shape %269 [[0, 1, 2], [3]] : tensor<49x512xf32> into tensor<1x7x7x512xf32>
    %270 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %225, %226, %245, %expanded_15 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%251 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x7x7x512xf32>
    %padded_16 = tensor.pad %270 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %271 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_16, %257 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%258 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %272 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %223, %224, %245, %271 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%251 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x7x7x512xf32>
    %collapsed_17 = tensor.collapse_shape %272 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %273 = linalg.matmul ins(%collapsed_17, %collapsed_12 : tensor<49x512xf32>, tensor<512x2048xf32>) outs(%263 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %expanded_18 = tensor.expand_shape %273 [[0, 1, 2], [3]] : tensor<49x2048xf32> into tensor<1x7x7x2048xf32>
    %274 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_5, %collapsed_4, %221, %222, %267, %261, %expanded_18 : tensor<1x2048xf32>, tensor<1x2048xf32>, tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>, tensor<2048xf32>, tensor<1x7x7x2048xf32>) outs(%240 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %in_249: f32, %out: f32):
      %630 = arith.addf %in_248, %in_249 : f32
      %631 = arith.addf %in_247, %630 : f32
      %632 = arith.cmpf oeq, %in_245, %in_246 : f32
      %633 = arith.select %632, %631, %cst : f32
      %634 = arith.mulf %in_244, %633 : f32
      %635 = arith.mulf %in, %634 : f32
      linalg.yield %635 : f32
    } -> tensor<1x7x7x2048xf32>
    %275 = tensor.empty() : tensor<1024x1x1x2048xf32>
    %276 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2 : tensor<2048x1x1x1024xf32>) outs(%275 : tensor<1024x1x1x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x1x1x2048xf32>
    %277 = tensor.empty() : tensor<1024xf32>
    %padded_19 = tensor.pad %276 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1024x1x1x2048xf32> to tensor<1024x2x2x2048xf32>
    %expanded_20 = tensor.expand_shape %padded_19 [[0, 1], [2, 3], [4], [5]] : tensor<1024x2x2x2048xf32> into tensor<1024x1x2x1x2x2048xf32>
    %collapsed_21 = tensor.collapse_shape %274 [[0, 1, 2], [3]] : tensor<1x7x7x2048xf32> into tensor<49x2048xf32>
    %278 = tensor.empty() : tensor<49x4096xf32>
    %279 = linalg.fill ins(%cst : f32) outs(%278 : tensor<49x4096xf32>) -> tensor<49x4096xf32>
    %280 = tensor.empty() : tensor<2048x2x2x1024x1x1xf32>
    %281 = linalg.generic {indexing_maps = [#map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_20 : tensor<1024x1x2x1x2x2048xf32>) outs(%280 : tensor<2048x2x2x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x2x2x1024x1x1xf32>
    %collapsed_22 = tensor.collapse_shape %281 [[0], [1, 2, 3, 4, 5]] : tensor<2048x2x2x1024x1x1xf32> into tensor<2048x4096xf32>
    %282 = linalg.matmul ins(%collapsed_21, %collapsed_22 : tensor<49x2048xf32>, tensor<2048x4096xf32>) outs(%279 : tensor<49x4096xf32>) -> tensor<49x4096xf32>
    %expanded_23 = tensor.expand_shape %282 [[0, 1, 2], [3, 4, 5]] : tensor<49x4096xf32> into tensor<1x7x7x2x2x1024xf32>
    %283 = tensor.empty() : tensor<1x14x14x1024xf32>
    %expanded_24 = tensor.expand_shape %277 [[0, 1]] : tensor<1024xf32> into tensor<1x1024xf32>
    %284 = linalg.matmul ins(%collapsed_21, %collapsed_7 : tensor<49x2048xf32>, tensor<2048x512xf32>) outs(%247 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %expanded_25 = tensor.expand_shape %284 [[0, 1, 2], [3]] : tensor<49x512xf32> into tensor<1x7x7x512xf32>
    %285 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %218, %219, %245, %expanded_25 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%251 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x7x7x512xf32>
    %padded_26 = tensor.pad %254 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<512x3x3x512xf32> to tensor<512x4x4x512xf32>
    %expanded_27 = tensor.expand_shape %padded_26 [[0], [1, 2], [3, 4], [5]] : tensor<512x4x4x512xf32> into tensor<512x2x2x2x2x512xf32>
    %286 = tensor.empty() : tensor<2x2x512x2x2x512xf32>
    %287 = linalg.generic {indexing_maps = [#map14, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_27 : tensor<512x2x2x2x2x512xf32>) outs(%286 : tensor<2x2x512x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x512x2x2x512xf32>
    %collapsed_28 = tensor.collapse_shape %287 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x512x2x2x512xf32> into tensor<2048x2x2x512xf32>
    %288 = tensor.empty() : tensor<2048x2x2x512xf32>
    %289 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%288 : tensor<2048x2x2x512xf32>) {
    ^bb0(%out: f32):
      %630 = linalg.index 0 : index
      %631 = linalg.index 1 : index
      %632 = arith.subi %c1, %631 : index
      %633 = linalg.index 2 : index
      %634 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_28[%630, %632, %633, %634] : tensor<2048x2x2x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<2048x2x2x512xf32>
    %padded_29 = tensor.pad %285 low[%c0, %c1, %c1, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %290 = tensor.empty() : tensor<2x2x512x2048xf32>
    %291 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%290 : tensor<2x2x512x2048xf32>) {
    ^bb0(%out: f32):
      %630 = linalg.index 0 : index
      %631 = linalg.index 1 : index
      %632 = linalg.index 2 : index
      %633 = linalg.index 3 : index
      %634 = arith.subi %c1, %631 : index
      %extracted = tensor.extract %289[%633, %630, %634, %632] : tensor<2048x2x2x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<2x2x512x2048xf32>
    %292 = tensor.empty() : tensor<1x8x8x2048xf32>
    %293 = linalg.fill ins(%cst : f32) outs(%292 : tensor<1x8x8x2048xf32>) -> tensor<1x8x8x2048xf32>
    %294 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_29, %291 : tensor<1x9x9x512xf32>, tensor<2x2x512x2048xf32>) outs(%293 : tensor<1x8x8x2048xf32>) -> tensor<1x8x8x2048xf32>
    %expanded_30 = tensor.expand_shape %294 [[0], [1], [2], [3, 4, 5]] : tensor<1x8x8x2048xf32> into tensor<1x8x8x2x2x512xf32>
    %295 = tensor.empty() : tensor<1x8x2x8x2x512xf32>
    %296 = linalg.generic {indexing_maps = [#map15, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_30 : tensor<1x8x8x2x2x512xf32>) outs(%295 : tensor<1x8x2x8x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %630 = arith.addf %in, %cst : f32
      linalg.yield %630 : f32
    } -> tensor<1x8x2x8x2x512xf32>
    %collapsed_31 = tensor.collapse_shape %296 [[0], [1, 2], [3, 4], [5]] : tensor<1x8x2x8x2x512xf32> into tensor<1x16x16x512xf32>
    %extracted_slice = tensor.extract_slice %collapsed_31[0, 1, 1, 0] [1, 14, 14, 512] [1, 1, 1, 1] : tensor<1x16x16x512xf32> to tensor<1x14x14x512xf32>
    %297 = tensor.empty() : tensor<1x14x14x512xf32>
    %expanded_32 = tensor.expand_shape %245 [[0, 1]] : tensor<512xf32> into tensor<1x512xf32>
    %298 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map1, #map8, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %216, %217, %extracted_slice, %expanded_32 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>, tensor<1x14x14x512xf32>, tensor<1x512xf32>) outs(%297 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x512xf32>
    %collapsed_33 = tensor.collapse_shape %298 [[0, 1, 2], [3]] : tensor<1x14x14x512xf32> into tensor<196x512xf32>
    %299 = tensor.empty() : tensor<196x1024xf32>
    %300 = linalg.fill ins(%cst : f32) outs(%299 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %301 = tensor.empty() : tensor<512x1024x1x1xf32>
    %302 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6 : tensor<512x1x1x1024xf32>) outs(%301 : tensor<512x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x1024x1x1xf32>
    %collapsed_34 = tensor.collapse_shape %302 [[0], [1, 2, 3]] : tensor<512x1024x1x1xf32> into tensor<512x1024xf32>
    %303 = linalg.matmul ins(%collapsed_33, %collapsed_34 : tensor<196x512xf32>, tensor<512x1024xf32>) outs(%300 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_35 = tensor.expand_shape %303 [[0, 1, 2, 3, 4], [5]] : tensor<196x1024xf32> into tensor<1x7x2x7x2x1024xf32>
    %304 = tensor.empty() : tensor<1x1024x14x14xf32>
    %expanded_36 = tensor.expand_shape %214 [[0], [1], [2, 3], [4, 5]] : tensor<1x1024x14x14xf32> into tensor<1x1024x7x2x7x2xf32>
    %expanded_37 = tensor.expand_shape %215 [[0], [1], [2, 3], [4, 5]] : tensor<1x1024x14x14xf32> into tensor<1x1024x7x2x7x2xf32>
    %305 = tensor.empty() : tensor<1x1024x7x2x7x2xf32>
    %306 = linalg.generic {indexing_maps = [#map13, #map13, #map16, #map17, #map18, #map19, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_36, %expanded_37, %expanded_23, %expanded_24, %277, %expanded_35 : tensor<1x1024x7x2x7x2xf32>, tensor<1x1024x7x2x7x2xf32>, tensor<1x7x7x2x2x1024xf32>, tensor<1x1024xf32>, tensor<1024xf32>, tensor<1x7x2x7x2x1024xf32>) outs(%305 : tensor<1x1024x7x2x7x2xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_245, %cst : f32
      %631 = arith.addf %630, %in_246 : f32
      %632 = arith.addf %in_247, %in_248 : f32
      %633 = arith.addf %631, %632 : f32
      %634 = arith.cmpf oeq, %in, %in_244 : f32
      %635 = arith.select %634, %633, %cst : f32
      linalg.yield %635 : f32
    } -> tensor<1x1024x7x2x7x2xf32>
    %collapsed_38 = tensor.collapse_shape %306 [[0], [1], [2, 3], [4, 5]] : tensor<1x1024x7x2x7x2xf32> into tensor<1x1024x14x14xf32>
    %collapsed_39 = tensor.collapse_shape %9 [[0], [1, 2, 3]] : tensor<1x1024x1x1xf32> into tensor<1x1024xf32>
    %collapsed_40 = tensor.collapse_shape %81 [[0], [1, 2, 3]] : tensor<1x1024x1x1xf32> into tensor<1x1024xf32>
    %307 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %collapsed_38 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%283 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %out: f32):
      %630 = arith.mulf %in_244, %in_245 : f32
      %631 = arith.mulf %in, %630 : f32
      linalg.yield %631 : f32
    } -> tensor<1x14x14x1024xf32>
    %308 = tensor.empty() : tensor<256xf32>
    %collapsed_41 = tensor.collapse_shape %307 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %309 = tensor.empty() : tensor<196x256xf32>
    %310 = linalg.fill ins(%cst : f32) outs(%309 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %311 = tensor.empty() : tensor<1024x256x1x1xf32>
    %312 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<1024x1x1x256xf32>) outs(%311 : tensor<1024x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x256x1x1xf32>
    %collapsed_42 = tensor.collapse_shape %312 [[0], [1, 2, 3]] : tensor<1024x256x1x1xf32> into tensor<1024x256xf32>
    %313 = linalg.matmul ins(%collapsed_41, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%310 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_43 = tensor.expand_shape %313 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %collapsed_44 = tensor.collapse_shape %21 [[0], [1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<1x256xf32>
    %collapsed_45 = tensor.collapse_shape %36 [[0], [1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<1x256xf32>
    %314 = tensor.empty() : tensor<1x14x14x256xf32>
    %315 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %212, %213, %308, %expanded_43 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %316 = tensor.empty() : tensor<256x3x3x256xf32>
    %317 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11 : tensor<256x3x3x256xf32>) outs(%316 : tensor<256x3x3x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x3x3x256xf32>
    %318 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%316 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %630 = linalg.index 0 : index
      %631 = linalg.index 1 : index
      %632 = arith.subi %c2, %631 : index
      %633 = linalg.index 2 : index
      %634 = linalg.index 3 : index
      %extracted = tensor.extract %317[%630, %632, %633, %634] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %padded_46 = tensor.pad %315 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %319 = tensor.empty() : tensor<3x3x256x256xf32>
    %320 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%319 : tensor<3x3x256x256xf32>) {
    ^bb0(%out: f32):
      %630 = linalg.index 0 : index
      %631 = linalg.index 1 : index
      %632 = linalg.index 2 : index
      %633 = linalg.index 3 : index
      %634 = arith.subi %c2, %631 : index
      %extracted = tensor.extract %318[%633, %630, %634, %632] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x256x256xf32>
    %321 = linalg.fill ins(%cst : f32) outs(%314 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %322 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_46, %320 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%321 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %323 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %210, %211, %308, %322 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_47 = tensor.collapse_shape %323 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %324 = tensor.empty() : tensor<256x1024x1x1xf32>
    %325 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7 : tensor<256x1x1x1024xf32>) outs(%324 : tensor<256x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1024x1x1xf32>
    %collapsed_48 = tensor.collapse_shape %325 [[0], [1, 2, 3]] : tensor<256x1024x1x1xf32> into tensor<256x1024xf32>
    %326 = linalg.matmul ins(%collapsed_47, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%300 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_49 = tensor.expand_shape %326 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %327 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208, %209, %collapsed_38, %277, %expanded_49 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%304 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %out: f32):
      %630 = arith.addf %in_246, %in_247 : f32
      %631 = arith.addf %in_245, %630 : f32
      %632 = arith.cmpf oeq, %in, %in_244 : f32
      %633 = arith.select %632, %631, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<1x1024x14x14xf32>
    %328 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %327 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%283 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %out: f32):
      %630 = arith.mulf %in_244, %in_245 : f32
      %631 = arith.mulf %in, %630 : f32
      linalg.yield %631 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_50 = tensor.collapse_shape %328 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %329 = linalg.matmul ins(%collapsed_50, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%310 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_51 = tensor.expand_shape %329 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %330 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %206, %207, %308, %expanded_51 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_52 = tensor.pad %330 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %331 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_52, %320 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%321 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %332 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %204, %205, %308, %331 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_53 = tensor.collapse_shape %332 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %333 = linalg.matmul ins(%collapsed_53, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%300 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_54 = tensor.expand_shape %333 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %334 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202, %203, %327, %277, %expanded_54 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%304 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %out: f32):
      %630 = arith.addf %in_246, %in_247 : f32
      %631 = arith.addf %in_245, %630 : f32
      %632 = arith.cmpf oeq, %in, %in_244 : f32
      %633 = arith.select %632, %631, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<1x1024x14x14xf32>
    %335 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %334 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%283 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %out: f32):
      %630 = arith.mulf %in_244, %in_245 : f32
      %631 = arith.mulf %in, %630 : f32
      linalg.yield %631 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_55 = tensor.collapse_shape %335 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %336 = linalg.matmul ins(%collapsed_55, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%310 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_56 = tensor.expand_shape %336 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %337 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %200, %201, %308, %expanded_56 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_57 = tensor.pad %337 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %338 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_57, %320 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%321 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %339 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %198, %199, %308, %338 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_58 = tensor.collapse_shape %339 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %340 = linalg.matmul ins(%collapsed_58, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%300 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_59 = tensor.expand_shape %340 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %341 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196, %197, %334, %277, %expanded_59 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%304 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %out: f32):
      %630 = arith.addf %in_246, %in_247 : f32
      %631 = arith.addf %in_245, %630 : f32
      %632 = arith.cmpf oeq, %in, %in_244 : f32
      %633 = arith.select %632, %631, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<1x1024x14x14xf32>
    %342 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %341 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%283 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %out: f32):
      %630 = arith.mulf %in_244, %in_245 : f32
      %631 = arith.mulf %in, %630 : f32
      linalg.yield %631 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_60 = tensor.collapse_shape %342 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %343 = linalg.matmul ins(%collapsed_60, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%310 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_61 = tensor.expand_shape %343 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %344 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %194, %195, %308, %expanded_61 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_62 = tensor.pad %344 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %345 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_62, %320 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%321 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %346 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %192, %193, %308, %345 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_63 = tensor.collapse_shape %346 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %347 = linalg.matmul ins(%collapsed_63, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%300 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_64 = tensor.expand_shape %347 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %348 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190, %191, %341, %277, %expanded_64 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%304 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %out: f32):
      %630 = arith.addf %in_246, %in_247 : f32
      %631 = arith.addf %in_245, %630 : f32
      %632 = arith.cmpf oeq, %in, %in_244 : f32
      %633 = arith.select %632, %631, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<1x1024x14x14xf32>
    %349 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %348 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%283 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %out: f32):
      %630 = arith.mulf %in_244, %in_245 : f32
      %631 = arith.mulf %in, %630 : f32
      linalg.yield %631 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_65 = tensor.collapse_shape %349 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %350 = linalg.matmul ins(%collapsed_65, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%310 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_66 = tensor.expand_shape %350 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %351 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %188, %189, %308, %expanded_66 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_67 = tensor.pad %351 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %352 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_67, %320 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%321 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %353 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %186, %187, %308, %352 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_68 = tensor.collapse_shape %353 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %354 = linalg.matmul ins(%collapsed_68, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%300 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_69 = tensor.expand_shape %354 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %355 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184, %185, %348, %277, %expanded_69 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%304 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %out: f32):
      %630 = arith.addf %in_246, %in_247 : f32
      %631 = arith.addf %in_245, %630 : f32
      %632 = arith.cmpf oeq, %in, %in_244 : f32
      %633 = arith.select %632, %631, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<1x1024x14x14xf32>
    %356 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %355 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%283 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %out: f32):
      %630 = arith.mulf %in_244, %in_245 : f32
      %631 = arith.mulf %in, %630 : f32
      linalg.yield %631 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_70 = tensor.collapse_shape %356 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %357 = linalg.matmul ins(%collapsed_70, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%310 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_71 = tensor.expand_shape %357 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %358 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %182, %183, %308, %expanded_71 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_72 = tensor.pad %358 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %359 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_72, %320 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%321 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %360 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %180, %181, %308, %359 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_73 = tensor.collapse_shape %360 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %361 = linalg.matmul ins(%collapsed_73, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%300 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_74 = tensor.expand_shape %361 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %362 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178, %179, %355, %277, %expanded_74 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%304 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %out: f32):
      %630 = arith.addf %in_246, %in_247 : f32
      %631 = arith.addf %in_245, %630 : f32
      %632 = arith.cmpf oeq, %in, %in_244 : f32
      %633 = arith.select %632, %631, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<1x1024x14x14xf32>
    %363 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %362 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%283 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %out: f32):
      %630 = arith.mulf %in_244, %in_245 : f32
      %631 = arith.mulf %in, %630 : f32
      linalg.yield %631 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_75 = tensor.collapse_shape %363 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %364 = linalg.matmul ins(%collapsed_75, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%310 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_76 = tensor.expand_shape %364 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %365 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %176, %177, %308, %expanded_76 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_77 = tensor.pad %365 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %366 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_77, %320 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%321 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %367 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %174, %175, %308, %366 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_78 = tensor.collapse_shape %367 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %368 = linalg.matmul ins(%collapsed_78, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%300 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_79 = tensor.expand_shape %368 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %369 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172, %173, %362, %277, %expanded_79 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%304 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %out: f32):
      %630 = arith.addf %in_246, %in_247 : f32
      %631 = arith.addf %in_245, %630 : f32
      %632 = arith.cmpf oeq, %in, %in_244 : f32
      %633 = arith.select %632, %631, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<1x1024x14x14xf32>
    %370 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %369 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%283 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %out: f32):
      %630 = arith.mulf %in_244, %in_245 : f32
      %631 = arith.mulf %in, %630 : f32
      linalg.yield %631 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_80 = tensor.collapse_shape %370 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %371 = linalg.matmul ins(%collapsed_80, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%310 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_81 = tensor.expand_shape %371 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %372 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %170, %171, %308, %expanded_81 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_82 = tensor.pad %372 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %373 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_82, %320 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%321 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %374 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %168, %169, %308, %373 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_83 = tensor.collapse_shape %374 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %375 = linalg.matmul ins(%collapsed_83, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%300 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_84 = tensor.expand_shape %375 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %376 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166, %167, %369, %277, %expanded_84 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%304 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %out: f32):
      %630 = arith.addf %in_246, %in_247 : f32
      %631 = arith.addf %in_245, %630 : f32
      %632 = arith.cmpf oeq, %in, %in_244 : f32
      %633 = arith.select %632, %631, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<1x1024x14x14xf32>
    %377 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %376 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%283 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %out: f32):
      %630 = arith.mulf %in_244, %in_245 : f32
      %631 = arith.mulf %in, %630 : f32
      linalg.yield %631 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_85 = tensor.collapse_shape %377 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %378 = linalg.matmul ins(%collapsed_85, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%310 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_86 = tensor.expand_shape %378 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %379 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %164, %165, %308, %expanded_86 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_87 = tensor.pad %379 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %380 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_87, %320 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%321 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %381 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %162, %163, %308, %380 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_88 = tensor.collapse_shape %381 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %382 = linalg.matmul ins(%collapsed_88, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%300 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_89 = tensor.expand_shape %382 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %383 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160, %161, %376, %277, %expanded_89 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%304 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %out: f32):
      %630 = arith.addf %in_246, %in_247 : f32
      %631 = arith.addf %in_245, %630 : f32
      %632 = arith.cmpf oeq, %in, %in_244 : f32
      %633 = arith.select %632, %631, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<1x1024x14x14xf32>
    %384 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %383 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%283 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %out: f32):
      %630 = arith.mulf %in_244, %in_245 : f32
      %631 = arith.mulf %in, %630 : f32
      linalg.yield %631 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_90 = tensor.collapse_shape %384 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %385 = linalg.matmul ins(%collapsed_90, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%310 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_91 = tensor.expand_shape %385 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %386 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %158, %159, %308, %expanded_91 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_92 = tensor.pad %386 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %387 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_92, %320 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%321 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %388 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %156, %157, %308, %387 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_93 = tensor.collapse_shape %388 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %389 = linalg.matmul ins(%collapsed_93, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%300 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_94 = tensor.expand_shape %389 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %390 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %155, %383, %277, %expanded_94 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%304 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %out: f32):
      %630 = arith.addf %in_246, %in_247 : f32
      %631 = arith.addf %in_245, %630 : f32
      %632 = arith.cmpf oeq, %in, %in_244 : f32
      %633 = arith.select %632, %631, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<1x1024x14x14xf32>
    %391 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %390 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%283 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %out: f32):
      %630 = arith.mulf %in_244, %in_245 : f32
      %631 = arith.mulf %in, %630 : f32
      linalg.yield %631 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_95 = tensor.collapse_shape %391 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %392 = linalg.matmul ins(%collapsed_95, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%310 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_96 = tensor.expand_shape %392 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %393 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %152, %153, %308, %expanded_96 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_97 = tensor.pad %393 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %394 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_97, %320 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%321 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %395 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %150, %151, %308, %394 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_98 = tensor.collapse_shape %395 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %396 = linalg.matmul ins(%collapsed_98, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%300 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_99 = tensor.expand_shape %396 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %397 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148, %149, %390, %277, %expanded_99 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%304 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %out: f32):
      %630 = arith.addf %in_246, %in_247 : f32
      %631 = arith.addf %in_245, %630 : f32
      %632 = arith.cmpf oeq, %in, %in_244 : f32
      %633 = arith.select %632, %631, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<1x1024x14x14xf32>
    %398 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %397 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%283 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %out: f32):
      %630 = arith.mulf %in_244, %in_245 : f32
      %631 = arith.mulf %in, %630 : f32
      linalg.yield %631 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_100 = tensor.collapse_shape %398 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %399 = linalg.matmul ins(%collapsed_100, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%310 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_101 = tensor.expand_shape %399 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %400 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %146, %147, %308, %expanded_101 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_102 = tensor.pad %400 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %401 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_102, %320 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%321 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %402 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %144, %145, %308, %401 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_103 = tensor.collapse_shape %402 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %403 = linalg.matmul ins(%collapsed_103, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%300 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_104 = tensor.expand_shape %403 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %404 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142, %143, %397, %277, %expanded_104 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%304 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %out: f32):
      %630 = arith.addf %in_246, %in_247 : f32
      %631 = arith.addf %in_245, %630 : f32
      %632 = arith.cmpf oeq, %in, %in_244 : f32
      %633 = arith.select %632, %631, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<1x1024x14x14xf32>
    %405 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %404 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%283 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %out: f32):
      %630 = arith.mulf %in_244, %in_245 : f32
      %631 = arith.mulf %in, %630 : f32
      linalg.yield %631 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_105 = tensor.collapse_shape %405 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %406 = linalg.matmul ins(%collapsed_105, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%310 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_106 = tensor.expand_shape %406 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %407 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %140, %141, %308, %expanded_106 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_107 = tensor.pad %407 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %408 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_107, %320 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%321 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %409 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %138, %139, %308, %408 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_108 = tensor.collapse_shape %409 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %410 = linalg.matmul ins(%collapsed_108, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%300 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_109 = tensor.expand_shape %410 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %411 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%136, %137, %404, %277, %expanded_109 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%304 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %out: f32):
      %630 = arith.addf %in_246, %in_247 : f32
      %631 = arith.addf %in_245, %630 : f32
      %632 = arith.cmpf oeq, %in, %in_244 : f32
      %633 = arith.select %632, %631, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<1x1024x14x14xf32>
    %412 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %411 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%283 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %out: f32):
      %630 = arith.mulf %in_244, %in_245 : f32
      %631 = arith.mulf %in, %630 : f32
      linalg.yield %631 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_110 = tensor.collapse_shape %412 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %413 = linalg.matmul ins(%collapsed_110, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%310 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_111 = tensor.expand_shape %413 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %414 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %134, %135, %308, %expanded_111 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_112 = tensor.pad %414 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %415 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_112, %320 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%321 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %416 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %132, %133, %308, %415 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_113 = tensor.collapse_shape %416 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %417 = linalg.matmul ins(%collapsed_113, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%300 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_114 = tensor.expand_shape %417 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %418 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130, %131, %411, %277, %expanded_114 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%304 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %out: f32):
      %630 = arith.addf %in_246, %in_247 : f32
      %631 = arith.addf %in_245, %630 : f32
      %632 = arith.cmpf oeq, %in, %in_244 : f32
      %633 = arith.select %632, %631, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<1x1024x14x14xf32>
    %419 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %418 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%283 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %out: f32):
      %630 = arith.mulf %in_244, %in_245 : f32
      %631 = arith.mulf %in, %630 : f32
      linalg.yield %631 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_115 = tensor.collapse_shape %419 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %420 = linalg.matmul ins(%collapsed_115, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%310 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_116 = tensor.expand_shape %420 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %421 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %128, %129, %308, %expanded_116 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_117 = tensor.pad %421 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %422 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_117, %320 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%321 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %423 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %126, %127, %308, %422 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_118 = tensor.collapse_shape %423 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %424 = linalg.matmul ins(%collapsed_118, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%300 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_119 = tensor.expand_shape %424 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %425 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %125, %418, %277, %expanded_119 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%304 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %out: f32):
      %630 = arith.addf %in_246, %in_247 : f32
      %631 = arith.addf %in_245, %630 : f32
      %632 = arith.cmpf oeq, %in, %in_244 : f32
      %633 = arith.select %632, %631, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<1x1024x14x14xf32>
    %426 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %425 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%283 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %out: f32):
      %630 = arith.mulf %in_244, %in_245 : f32
      %631 = arith.mulf %in, %630 : f32
      linalg.yield %631 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_120 = tensor.collapse_shape %426 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %427 = linalg.matmul ins(%collapsed_120, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%310 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_121 = tensor.expand_shape %427 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %428 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %122, %123, %308, %expanded_121 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_122 = tensor.pad %428 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %429 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_122, %320 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%321 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %430 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %120, %121, %308, %429 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_123 = tensor.collapse_shape %430 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %431 = linalg.matmul ins(%collapsed_123, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%300 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_124 = tensor.expand_shape %431 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %432 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118, %119, %425, %277, %expanded_124 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%304 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %out: f32):
      %630 = arith.addf %in_246, %in_247 : f32
      %631 = arith.addf %in_245, %630 : f32
      %632 = arith.cmpf oeq, %in, %in_244 : f32
      %633 = arith.select %632, %631, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<1x1024x14x14xf32>
    %433 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %432 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%283 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %out: f32):
      %630 = arith.mulf %in_244, %in_245 : f32
      %631 = arith.mulf %in, %630 : f32
      linalg.yield %631 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_125 = tensor.collapse_shape %433 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %434 = linalg.matmul ins(%collapsed_125, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%310 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_126 = tensor.expand_shape %434 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %435 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %116, %117, %308, %expanded_126 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_127 = tensor.pad %435 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %436 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_127, %320 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%321 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %437 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %114, %115, %308, %436 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_128 = tensor.collapse_shape %437 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %438 = linalg.matmul ins(%collapsed_128, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%300 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_129 = tensor.expand_shape %438 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %439 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112, %113, %432, %277, %expanded_129 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%304 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %out: f32):
      %630 = arith.addf %in_246, %in_247 : f32
      %631 = arith.addf %in_245, %630 : f32
      %632 = arith.cmpf oeq, %in, %in_244 : f32
      %633 = arith.select %632, %631, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<1x1024x14x14xf32>
    %440 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %439 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%283 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %out: f32):
      %630 = arith.mulf %in_244, %in_245 : f32
      %631 = arith.mulf %in, %630 : f32
      linalg.yield %631 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_130 = tensor.collapse_shape %440 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %441 = linalg.matmul ins(%collapsed_130, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%310 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_131 = tensor.expand_shape %441 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %442 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %110, %111, %308, %expanded_131 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_132 = tensor.pad %442 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %443 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_132, %320 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%321 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %444 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %108, %109, %308, %443 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_133 = tensor.collapse_shape %444 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %445 = linalg.matmul ins(%collapsed_133, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%300 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_134 = tensor.expand_shape %445 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %446 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106, %107, %439, %277, %expanded_134 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%304 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %out: f32):
      %630 = arith.addf %in_246, %in_247 : f32
      %631 = arith.addf %in_245, %630 : f32
      %632 = arith.cmpf oeq, %in, %in_244 : f32
      %633 = arith.select %632, %631, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<1x1024x14x14xf32>
    %447 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %446 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%283 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %out: f32):
      %630 = arith.mulf %in_244, %in_245 : f32
      %631 = arith.mulf %in, %630 : f32
      linalg.yield %631 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_135 = tensor.collapse_shape %447 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %448 = linalg.matmul ins(%collapsed_135, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%310 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_136 = tensor.expand_shape %448 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %449 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %104, %105, %308, %expanded_136 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_137 = tensor.pad %449 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %450 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_137, %320 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%321 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %451 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %102, %103, %308, %450 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_138 = tensor.collapse_shape %451 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %452 = linalg.matmul ins(%collapsed_138, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%300 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_139 = tensor.expand_shape %452 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %453 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %101, %446, %277, %expanded_139 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%304 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %out: f32):
      %630 = arith.addf %in_246, %in_247 : f32
      %631 = arith.addf %in_245, %630 : f32
      %632 = arith.cmpf oeq, %in, %in_244 : f32
      %633 = arith.select %632, %631, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<1x1024x14x14xf32>
    %454 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %453 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%283 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %out: f32):
      %630 = arith.mulf %in_244, %in_245 : f32
      %631 = arith.mulf %in, %630 : f32
      linalg.yield %631 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_140 = tensor.collapse_shape %454 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %455 = linalg.matmul ins(%collapsed_140, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%310 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_141 = tensor.expand_shape %455 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %456 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %98, %99, %308, %expanded_141 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_142 = tensor.pad %456 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %457 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_142, %320 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%321 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %458 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %96, %97, %308, %457 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_143 = tensor.collapse_shape %458 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %459 = linalg.matmul ins(%collapsed_143, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%300 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_144 = tensor.expand_shape %459 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %460 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94, %95, %453, %277, %expanded_144 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%304 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %out: f32):
      %630 = arith.addf %in_246, %in_247 : f32
      %631 = arith.addf %in_245, %630 : f32
      %632 = arith.cmpf oeq, %in, %in_244 : f32
      %633 = arith.select %632, %631, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<1x1024x14x14xf32>
    %461 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %460 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%283 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %out: f32):
      %630 = arith.mulf %in_244, %in_245 : f32
      %631 = arith.mulf %in, %630 : f32
      linalg.yield %631 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_145 = tensor.collapse_shape %461 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %462 = linalg.matmul ins(%collapsed_145, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%310 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_146 = tensor.expand_shape %462 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %463 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %92, %93, %308, %expanded_146 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_147 = tensor.pad %463 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %464 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_147, %320 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%321 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %465 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %90, %91, %308, %464 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_148 = tensor.collapse_shape %465 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %466 = linalg.matmul ins(%collapsed_148, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%300 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_149 = tensor.expand_shape %466 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %467 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88, %89, %460, %277, %expanded_149 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%304 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %out: f32):
      %630 = arith.addf %in_246, %in_247 : f32
      %631 = arith.addf %in_245, %630 : f32
      %632 = arith.cmpf oeq, %in, %in_244 : f32
      %633 = arith.select %632, %631, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<1x1024x14x14xf32>
    %468 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %467 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%283 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %out: f32):
      %630 = arith.mulf %in_244, %in_245 : f32
      %631 = arith.mulf %in, %630 : f32
      linalg.yield %631 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_150 = tensor.collapse_shape %468 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %469 = linalg.matmul ins(%collapsed_150, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%310 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_151 = tensor.expand_shape %469 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %470 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %86, %87, %308, %expanded_151 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_152 = tensor.pad %470 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %471 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_152, %320 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%321 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %472 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %84, %85, %308, %471 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_153 = tensor.collapse_shape %472 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %473 = linalg.matmul ins(%collapsed_153, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%300 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_154 = tensor.expand_shape %473 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %474 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %82, %83, %467, %277, %expanded_154 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%283 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %in_249: f32, %out: f32):
      %630 = arith.addf %in_248, %in_249 : f32
      %631 = arith.addf %in_247, %630 : f32
      %632 = arith.cmpf oeq, %in_245, %in_246 : f32
      %633 = arith.select %632, %631, %cst : f32
      %634 = arith.mulf %in_244, %633 : f32
      %635 = arith.mulf %in, %634 : f32
      linalg.yield %635 : f32
    } -> tensor<1x14x14x1024xf32>
    %475 = tensor.empty() : tensor<512x1x1x1024xf32>
    %476 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<1024x1x1x512xf32>) outs(%475 : tensor<512x1x1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x1x1x1024xf32>
    %padded_155 = tensor.pad %476 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<512x1x1x1024xf32> to tensor<512x2x2x1024xf32>
    %expanded_156 = tensor.expand_shape %padded_155 [[0, 1], [2, 3], [4], [5]] : tensor<512x2x2x1024xf32> into tensor<512x1x2x1x2x1024xf32>
    %collapsed_157 = tensor.collapse_shape %474 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %477 = tensor.empty() : tensor<196x2048xf32>
    %478 = linalg.fill ins(%cst : f32) outs(%477 : tensor<196x2048xf32>) -> tensor<196x2048xf32>
    %479 = tensor.empty() : tensor<1024x2x2x512x1x1xf32>
    %480 = linalg.generic {indexing_maps = [#map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_156 : tensor<512x1x2x1x2x1024xf32>) outs(%479 : tensor<1024x2x2x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x2x2x512x1x1xf32>
    %collapsed_158 = tensor.collapse_shape %480 [[0], [1, 2, 3, 4, 5]] : tensor<1024x2x2x512x1x1xf32> into tensor<1024x2048xf32>
    %481 = linalg.matmul ins(%collapsed_157, %collapsed_158 : tensor<196x1024xf32>, tensor<1024x2048xf32>) outs(%478 : tensor<196x2048xf32>) -> tensor<196x2048xf32>
    %expanded_159 = tensor.expand_shape %481 [[0, 1, 2], [3, 4, 5]] : tensor<196x2048xf32> into tensor<1x14x14x2x2x512xf32>
    %482 = tensor.empty() : tensor<1x28x28x512xf32>
    %483 = linalg.matmul ins(%collapsed_157, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%310 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_160 = tensor.expand_shape %483 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %484 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %79, %80, %308, %expanded_160 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_161 = tensor.pad %317 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<256x3x3x256xf32> to tensor<256x4x4x256xf32>
    %expanded_162 = tensor.expand_shape %padded_161 [[0], [1, 2], [3, 4], [5]] : tensor<256x4x4x256xf32> into tensor<256x2x2x2x2x256xf32>
    %485 = tensor.empty() : tensor<2x2x256x2x2x256xf32>
    %486 = linalg.generic {indexing_maps = [#map14, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_162 : tensor<256x2x2x2x2x256xf32>) outs(%485 : tensor<2x2x256x2x2x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x256x2x2x256xf32>
    %collapsed_163 = tensor.collapse_shape %486 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x256x2x2x256xf32> into tensor<1024x2x2x256xf32>
    %487 = tensor.empty() : tensor<1024x2x2x256xf32>
    %488 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%487 : tensor<1024x2x2x256xf32>) {
    ^bb0(%out: f32):
      %630 = linalg.index 0 : index
      %631 = linalg.index 1 : index
      %632 = arith.subi %c1, %631 : index
      %633 = linalg.index 2 : index
      %634 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_163[%630, %632, %633, %634] : tensor<1024x2x2x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<1024x2x2x256xf32>
    %padded_164 = tensor.pad %484 low[%c0, %c1, %c1, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %489 = tensor.empty() : tensor<2x2x256x1024xf32>
    %490 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%489 : tensor<2x2x256x1024xf32>) {
    ^bb0(%out: f32):
      %630 = linalg.index 0 : index
      %631 = linalg.index 1 : index
      %632 = linalg.index 2 : index
      %633 = linalg.index 3 : index
      %634 = arith.subi %c1, %631 : index
      %extracted = tensor.extract %488[%633, %630, %634, %632] : tensor<1024x2x2x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<2x2x256x1024xf32>
    %491 = tensor.empty() : tensor<1x15x15x1024xf32>
    %492 = linalg.fill ins(%cst : f32) outs(%491 : tensor<1x15x15x1024xf32>) -> tensor<1x15x15x1024xf32>
    %493 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_164, %490 : tensor<1x16x16x256xf32>, tensor<2x2x256x1024xf32>) outs(%492 : tensor<1x15x15x1024xf32>) -> tensor<1x15x15x1024xf32>
    %expanded_165 = tensor.expand_shape %493 [[0], [1], [2], [3, 4, 5]] : tensor<1x15x15x1024xf32> into tensor<1x15x15x2x2x256xf32>
    %494 = tensor.empty() : tensor<1x15x2x15x2x256xf32>
    %495 = linalg.generic {indexing_maps = [#map15, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_165 : tensor<1x15x15x2x2x256xf32>) outs(%494 : tensor<1x15x2x15x2x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %630 = arith.addf %in, %cst : f32
      linalg.yield %630 : f32
    } -> tensor<1x15x2x15x2x256xf32>
    %collapsed_166 = tensor.collapse_shape %495 [[0], [1, 2], [3, 4], [5]] : tensor<1x15x2x15x2x256xf32> into tensor<1x30x30x256xf32>
    %extracted_slice_167 = tensor.extract_slice %collapsed_166[0, 1, 1, 0] [1, 28, 28, 256] [1, 1, 1, 1] : tensor<1x30x30x256xf32> to tensor<1x28x28x256xf32>
    %496 = tensor.empty() : tensor<1x28x28x256xf32>
    %expanded_168 = tensor.expand_shape %308 [[0, 1]] : tensor<256xf32> into tensor<1x256xf32>
    %497 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map1, #map8, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %77, %78, %extracted_slice_167, %expanded_168 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>, tensor<1x28x28x256xf32>, tensor<1x256xf32>) outs(%496 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x28x28x256xf32>
    %collapsed_169 = tensor.collapse_shape %497 [[0, 1, 2], [3]] : tensor<1x28x28x256xf32> into tensor<784x256xf32>
    %498 = tensor.empty() : tensor<784x512xf32>
    %499 = linalg.fill ins(%cst : f32) outs(%498 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %500 = tensor.empty() : tensor<256x512x1x1xf32>
    %501 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12 : tensor<256x1x1x512xf32>) outs(%500 : tensor<256x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x512x1x1xf32>
    %collapsed_170 = tensor.collapse_shape %501 [[0], [1, 2, 3]] : tensor<256x512x1x1xf32> into tensor<256x512xf32>
    %502 = linalg.matmul ins(%collapsed_169, %collapsed_170 : tensor<784x256xf32>, tensor<256x512xf32>) outs(%499 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_171 = tensor.expand_shape %502 [[0, 1, 2, 3, 4], [5]] : tensor<784x512xf32> into tensor<1x14x2x14x2x512xf32>
    %503 = tensor.empty() : tensor<1x512x28x28xf32>
    %expanded_172 = tensor.expand_shape %75 [[0], [1], [2, 3], [4, 5]] : tensor<1x512x28x28xf32> into tensor<1x512x14x2x14x2xf32>
    %expanded_173 = tensor.expand_shape %76 [[0], [1], [2, 3], [4, 5]] : tensor<1x512x28x28xf32> into tensor<1x512x14x2x14x2xf32>
    %504 = tensor.empty() : tensor<1x512x14x2x14x2xf32>
    %505 = linalg.generic {indexing_maps = [#map13, #map13, #map16, #map17, #map18, #map19, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_172, %expanded_173, %expanded_159, %expanded_32, %245, %expanded_171 : tensor<1x512x14x2x14x2xf32>, tensor<1x512x14x2x14x2xf32>, tensor<1x14x14x2x2x512xf32>, tensor<1x512xf32>, tensor<512xf32>, tensor<1x14x2x14x2x512xf32>) outs(%504 : tensor<1x512x14x2x14x2xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_245, %cst : f32
      %631 = arith.addf %630, %in_246 : f32
      %632 = arith.addf %in_247, %in_248 : f32
      %633 = arith.addf %631, %632 : f32
      %634 = arith.cmpf oeq, %in, %in_244 : f32
      %635 = arith.select %634, %633, %cst : f32
      linalg.yield %635 : f32
    } -> tensor<1x512x14x2x14x2xf32>
    %collapsed_174 = tensor.collapse_shape %505 [[0], [1], [2, 3], [4, 5]] : tensor<1x512x14x2x14x2xf32> into tensor<1x512x28x28xf32>
    %506 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %collapsed_174 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%482 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %out: f32):
      %630 = arith.mulf %in_244, %in_245 : f32
      %631 = arith.mulf %in, %630 : f32
      linalg.yield %631 : f32
    } -> tensor<1x28x28x512xf32>
    %507 = tensor.empty() : tensor<128xf32>
    %collapsed_175 = tensor.collapse_shape %506 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %508 = tensor.empty() : tensor<784x128xf32>
    %509 = linalg.fill ins(%cst : f32) outs(%508 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %510 = tensor.empty() : tensor<512x128x1x1xf32>
    %511 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16 : tensor<512x1x1x128xf32>) outs(%510 : tensor<512x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x128x1x1xf32>
    %collapsed_176 = tensor.collapse_shape %511 [[0], [1, 2, 3]] : tensor<512x128x1x1xf32> into tensor<512x128xf32>
    %512 = linalg.matmul ins(%collapsed_175, %collapsed_176 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%509 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_177 = tensor.expand_shape %512 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %collapsed_178 = tensor.collapse_shape %18 [[0], [1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<1x128xf32>
    %collapsed_179 = tensor.collapse_shape %51 [[0], [1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<1x128xf32>
    %513 = tensor.empty() : tensor<1x28x28x128xf32>
    %514 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_179, %collapsed_178, %73, %74, %507, %expanded_177 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%513 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x28x28x128xf32>
    %515 = tensor.empty() : tensor<128x3x3x128xf32>
    %516 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17 : tensor<128x3x3x128xf32>) outs(%515 : tensor<128x3x3x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x3x3x128xf32>
    %517 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%515 : tensor<128x3x3x128xf32>) {
    ^bb0(%out: f32):
      %630 = linalg.index 0 : index
      %631 = linalg.index 1 : index
      %632 = arith.subi %c2, %631 : index
      %633 = linalg.index 2 : index
      %634 = linalg.index 3 : index
      %extracted = tensor.extract %516[%630, %632, %633, %634] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x128xf32>
    %padded_180 = tensor.pad %514 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %518 = tensor.empty() : tensor<3x3x128x128xf32>
    %519 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%518 : tensor<3x3x128x128xf32>) {
    ^bb0(%out: f32):
      %630 = linalg.index 0 : index
      %631 = linalg.index 1 : index
      %632 = linalg.index 2 : index
      %633 = linalg.index 3 : index
      %634 = arith.subi %c2, %631 : index
      %extracted = tensor.extract %517[%633, %630, %634, %632] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x128x128xf32>
    %520 = linalg.fill ins(%cst : f32) outs(%513 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %521 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_180, %519 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%520 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %522 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_179, %collapsed_178, %71, %72, %507, %521 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%513 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_181 = tensor.collapse_shape %522 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %523 = tensor.empty() : tensor<128x512x1x1xf32>
    %524 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<128x1x1x512xf32>) outs(%523 : tensor<128x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x512x1x1xf32>
    %collapsed_182 = tensor.collapse_shape %524 [[0], [1, 2, 3]] : tensor<128x512x1x1xf32> into tensor<128x512xf32>
    %525 = linalg.matmul ins(%collapsed_181, %collapsed_182 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%499 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_183 = tensor.expand_shape %525 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %526 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %70, %collapsed_174, %245, %expanded_183 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%503 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %out: f32):
      %630 = arith.addf %in_246, %in_247 : f32
      %631 = arith.addf %in_245, %630 : f32
      %632 = arith.cmpf oeq, %in, %in_244 : f32
      %633 = arith.select %632, %631, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<1x512x28x28xf32>
    %527 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %526 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%482 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %out: f32):
      %630 = arith.mulf %in_244, %in_245 : f32
      %631 = arith.mulf %in, %630 : f32
      linalg.yield %631 : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_184 = tensor.collapse_shape %527 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %528 = linalg.matmul ins(%collapsed_184, %collapsed_176 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%509 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_185 = tensor.expand_shape %528 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %529 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_179, %collapsed_178, %67, %68, %507, %expanded_185 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%513 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x28x28x128xf32>
    %padded_186 = tensor.pad %529 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %530 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_186, %519 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%520 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %531 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_179, %collapsed_178, %65, %66, %507, %530 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%513 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_187 = tensor.collapse_shape %531 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %532 = linalg.matmul ins(%collapsed_187, %collapsed_182 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%499 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_188 = tensor.expand_shape %532 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %533 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63, %64, %526, %245, %expanded_188 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%503 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %out: f32):
      %630 = arith.addf %in_246, %in_247 : f32
      %631 = arith.addf %in_245, %630 : f32
      %632 = arith.cmpf oeq, %in, %in_244 : f32
      %633 = arith.select %632, %631, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<1x512x28x28xf32>
    %534 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %533 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%482 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %out: f32):
      %630 = arith.mulf %in_244, %in_245 : f32
      %631 = arith.mulf %in, %630 : f32
      linalg.yield %631 : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_189 = tensor.collapse_shape %534 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %535 = linalg.matmul ins(%collapsed_189, %collapsed_176 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%509 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_190 = tensor.expand_shape %535 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %536 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_179, %collapsed_178, %61, %62, %507, %expanded_190 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%513 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x28x28x128xf32>
    %padded_191 = tensor.pad %536 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %537 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_191, %519 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%520 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %538 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_179, %collapsed_178, %59, %60, %507, %537 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%513 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_192 = tensor.collapse_shape %538 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %539 = linalg.matmul ins(%collapsed_192, %collapsed_182 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%499 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_193 = tensor.expand_shape %539 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %540 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %57, %58, %533, %245, %expanded_193 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%482 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %in_249: f32, %out: f32):
      %630 = arith.addf %in_248, %in_249 : f32
      %631 = arith.addf %in_247, %630 : f32
      %632 = arith.cmpf oeq, %in_245, %in_246 : f32
      %633 = arith.select %632, %631, %cst : f32
      %634 = arith.mulf %in_244, %633 : f32
      %635 = arith.mulf %in, %634 : f32
      linalg.yield %635 : f32
    } -> tensor<1x28x28x512xf32>
    %541 = tensor.empty() : tensor<256x1x1x512xf32>
    %542 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14 : tensor<512x1x1x256xf32>) outs(%541 : tensor<256x1x1x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1x1x512xf32>
    %padded_194 = tensor.pad %542 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<256x1x1x512xf32> to tensor<256x2x2x512xf32>
    %expanded_195 = tensor.expand_shape %padded_194 [[0, 1], [2, 3], [4], [5]] : tensor<256x2x2x512xf32> into tensor<256x1x2x1x2x512xf32>
    %collapsed_196 = tensor.collapse_shape %540 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %543 = tensor.empty() : tensor<784x1024xf32>
    %544 = linalg.fill ins(%cst : f32) outs(%543 : tensor<784x1024xf32>) -> tensor<784x1024xf32>
    %545 = tensor.empty() : tensor<512x2x2x256x1x1xf32>
    %546 = linalg.generic {indexing_maps = [#map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_195 : tensor<256x1x2x1x2x512xf32>) outs(%545 : tensor<512x2x2x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2x2x256x1x1xf32>
    %collapsed_197 = tensor.collapse_shape %546 [[0], [1, 2, 3, 4, 5]] : tensor<512x2x2x256x1x1xf32> into tensor<512x1024xf32>
    %547 = linalg.matmul ins(%collapsed_196, %collapsed_197 : tensor<784x512xf32>, tensor<512x1024xf32>) outs(%544 : tensor<784x1024xf32>) -> tensor<784x1024xf32>
    %expanded_198 = tensor.expand_shape %547 [[0, 1, 2], [3, 4, 5]] : tensor<784x1024xf32> into tensor<1x28x28x2x2x256xf32>
    %548 = tensor.empty() : tensor<1x56x56x256xf32>
    %549 = linalg.matmul ins(%collapsed_196, %collapsed_176 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%509 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_199 = tensor.expand_shape %549 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %550 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_179, %collapsed_178, %54, %55, %507, %expanded_199 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%513 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x28x28x128xf32>
    %padded_200 = tensor.pad %516 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<128x3x3x128xf32> to tensor<128x4x4x128xf32>
    %expanded_201 = tensor.expand_shape %padded_200 [[0], [1, 2], [3, 4], [5]] : tensor<128x4x4x128xf32> into tensor<128x2x2x2x2x128xf32>
    %551 = tensor.empty() : tensor<2x2x128x2x2x128xf32>
    %552 = linalg.generic {indexing_maps = [#map14, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_201 : tensor<128x2x2x2x2x128xf32>) outs(%551 : tensor<2x2x128x2x2x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x128x2x2x128xf32>
    %collapsed_202 = tensor.collapse_shape %552 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x128x2x2x128xf32> into tensor<512x2x2x128xf32>
    %553 = tensor.empty() : tensor<512x2x2x128xf32>
    %554 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%553 : tensor<512x2x2x128xf32>) {
    ^bb0(%out: f32):
      %630 = linalg.index 0 : index
      %631 = linalg.index 1 : index
      %632 = arith.subi %c1, %631 : index
      %633 = linalg.index 2 : index
      %634 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_202[%630, %632, %633, %634] : tensor<512x2x2x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x2x2x128xf32>
    %padded_203 = tensor.pad %550 low[%c0, %c1, %c1, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %555 = tensor.empty() : tensor<2x2x128x512xf32>
    %556 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%555 : tensor<2x2x128x512xf32>) {
    ^bb0(%out: f32):
      %630 = linalg.index 0 : index
      %631 = linalg.index 1 : index
      %632 = linalg.index 2 : index
      %633 = linalg.index 3 : index
      %634 = arith.subi %c1, %631 : index
      %extracted = tensor.extract %554[%633, %630, %634, %632] : tensor<512x2x2x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<2x2x128x512xf32>
    %557 = tensor.empty() : tensor<1x29x29x512xf32>
    %558 = linalg.fill ins(%cst : f32) outs(%557 : tensor<1x29x29x512xf32>) -> tensor<1x29x29x512xf32>
    %559 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_203, %556 : tensor<1x30x30x128xf32>, tensor<2x2x128x512xf32>) outs(%558 : tensor<1x29x29x512xf32>) -> tensor<1x29x29x512xf32>
    %expanded_204 = tensor.expand_shape %559 [[0], [1], [2], [3, 4, 5]] : tensor<1x29x29x512xf32> into tensor<1x29x29x2x2x128xf32>
    %560 = tensor.empty() : tensor<1x29x2x29x2x128xf32>
    %561 = linalg.generic {indexing_maps = [#map15, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_204 : tensor<1x29x29x2x2x128xf32>) outs(%560 : tensor<1x29x2x29x2x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %630 = arith.addf %in, %cst : f32
      linalg.yield %630 : f32
    } -> tensor<1x29x2x29x2x128xf32>
    %collapsed_205 = tensor.collapse_shape %561 [[0], [1, 2], [3, 4], [5]] : tensor<1x29x2x29x2x128xf32> into tensor<1x58x58x128xf32>
    %extracted_slice_206 = tensor.extract_slice %collapsed_205[0, 1, 1, 0] [1, 56, 56, 128] [1, 1, 1, 1] : tensor<1x58x58x128xf32> to tensor<1x56x56x128xf32>
    %562 = tensor.empty() : tensor<1x56x56x128xf32>
    %expanded_207 = tensor.expand_shape %507 [[0, 1]] : tensor<128xf32> into tensor<1x128xf32>
    %563 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map1, #map8, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_179, %collapsed_178, %52, %53, %extracted_slice_206, %expanded_207 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>, tensor<1x56x56x128xf32>, tensor<1x128xf32>) outs(%562 : tensor<1x56x56x128xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x56x56x128xf32>
    %collapsed_208 = tensor.collapse_shape %563 [[0, 1, 2], [3]] : tensor<1x56x56x128xf32> into tensor<3136x128xf32>
    %564 = tensor.empty() : tensor<3136x256xf32>
    %565 = linalg.fill ins(%cst : f32) outs(%564 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %566 = tensor.empty() : tensor<128x256x1x1xf32>
    %567 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19 : tensor<128x1x1x256xf32>) outs(%566 : tensor<128x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x256x1x1xf32>
    %collapsed_209 = tensor.collapse_shape %567 [[0], [1, 2, 3]] : tensor<128x256x1x1xf32> into tensor<128x256xf32>
    %568 = linalg.matmul ins(%collapsed_208, %collapsed_209 : tensor<3136x128xf32>, tensor<128x256xf32>) outs(%565 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %expanded_210 = tensor.expand_shape %568 [[0, 1, 2, 3, 4], [5]] : tensor<3136x256xf32> into tensor<1x28x2x28x2x256xf32>
    %569 = tensor.empty() : tensor<1x256x56x56xf32>
    %expanded_211 = tensor.expand_shape %49 [[0], [1], [2, 3], [4, 5]] : tensor<1x256x56x56xf32> into tensor<1x256x28x2x28x2xf32>
    %expanded_212 = tensor.expand_shape %50 [[0], [1], [2, 3], [4, 5]] : tensor<1x256x56x56xf32> into tensor<1x256x28x2x28x2xf32>
    %570 = tensor.empty() : tensor<1x256x28x2x28x2xf32>
    %571 = linalg.generic {indexing_maps = [#map13, #map13, #map16, #map17, #map18, #map19, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_211, %expanded_212, %expanded_198, %expanded_168, %308, %expanded_210 : tensor<1x256x28x2x28x2xf32>, tensor<1x256x28x2x28x2xf32>, tensor<1x28x28x2x2x256xf32>, tensor<1x256xf32>, tensor<256xf32>, tensor<1x28x2x28x2x256xf32>) outs(%570 : tensor<1x256x28x2x28x2xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_245, %cst : f32
      %631 = arith.addf %630, %in_246 : f32
      %632 = arith.addf %in_247, %in_248 : f32
      %633 = arith.addf %631, %632 : f32
      %634 = arith.cmpf oeq, %in, %in_244 : f32
      %635 = arith.select %634, %633, %cst : f32
      linalg.yield %635 : f32
    } -> tensor<1x256x28x2x28x2xf32>
    %collapsed_213 = tensor.collapse_shape %571 [[0], [1], [2, 3], [4, 5]] : tensor<1x256x28x2x28x2xf32> into tensor<1x256x56x56xf32>
    %572 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %collapsed_213 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x56x56xf32>) outs(%548 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %out: f32):
      %630 = arith.mulf %in_244, %in_245 : f32
      %631 = arith.mulf %in, %630 : f32
      linalg.yield %631 : f32
    } -> tensor<1x56x56x256xf32>
    %573 = tensor.empty() : tensor<64xf32>
    %collapsed_214 = tensor.collapse_shape %572 [[0, 1, 2], [3]] : tensor<1x56x56x256xf32> into tensor<3136x256xf32>
    %574 = tensor.empty() : tensor<3136x64xf32>
    %575 = linalg.fill ins(%cst : f32) outs(%574 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %576 = tensor.empty() : tensor<256x64x1x1xf32>
    %577 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22 : tensor<256x1x1x64xf32>) outs(%576 : tensor<256x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x64x1x1xf32>
    %collapsed_215 = tensor.collapse_shape %577 [[0], [1, 2, 3]] : tensor<256x64x1x1xf32> into tensor<256x64xf32>
    %578 = linalg.matmul ins(%collapsed_214, %collapsed_215 : tensor<3136x256xf32>, tensor<256x64xf32>) outs(%575 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %expanded_216 = tensor.expand_shape %578 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %collapsed_217 = tensor.collapse_shape %25 [[0], [1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<1x64xf32>
    %collapsed_218 = tensor.collapse_shape %27 [[0], [1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<1x64xf32>
    %579 = tensor.empty() : tensor<1x56x56x64xf32>
    %580 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_218, %collapsed_217, %47, %48, %573, %expanded_216 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%579 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x56x56x64xf32>
    %581 = tensor.empty() : tensor<64x3x3x64xf32>
    %582 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23 : tensor<64x3x3x64xf32>) outs(%581 : tensor<64x3x3x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x3x3x64xf32>
    %583 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%581 : tensor<64x3x3x64xf32>) {
    ^bb0(%out: f32):
      %630 = linalg.index 0 : index
      %631 = linalg.index 1 : index
      %632 = arith.subi %c2, %631 : index
      %633 = linalg.index 2 : index
      %634 = linalg.index 3 : index
      %extracted = tensor.extract %582[%630, %632, %633, %634] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x64xf32>
    %padded_219 = tensor.pad %580 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %584 = tensor.empty() : tensor<3x3x64x64xf32>
    %585 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%584 : tensor<3x3x64x64xf32>) {
    ^bb0(%out: f32):
      %630 = linalg.index 0 : index
      %631 = linalg.index 1 : index
      %632 = linalg.index 2 : index
      %633 = linalg.index 3 : index
      %634 = arith.subi %c2, %631 : index
      %extracted = tensor.extract %583[%633, %630, %634, %632] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x64x64xf32>
    %586 = linalg.fill ins(%cst : f32) outs(%579 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %587 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_219, %585 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%586 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %588 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_218, %collapsed_217, %45, %46, %573, %587 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%579 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x56x56x64xf32>
    %collapsed_220 = tensor.collapse_shape %588 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %589 = tensor.empty() : tensor<64x256x1x1xf32>
    %590 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20 : tensor<64x1x1x256xf32>) outs(%589 : tensor<64x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x256x1x1xf32>
    %collapsed_221 = tensor.collapse_shape %590 [[0], [1, 2, 3]] : tensor<64x256x1x1xf32> into tensor<64x256xf32>
    %591 = linalg.matmul ins(%collapsed_220, %collapsed_221 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%565 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %expanded_222 = tensor.expand_shape %591 [[0, 1, 2], [3]] : tensor<3136x256xf32> into tensor<1x56x56x256xf32>
    %592 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %44, %collapsed_213, %308, %expanded_222 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<1x56x56x256xf32>) outs(%569 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %out: f32):
      %630 = arith.addf %in_246, %in_247 : f32
      %631 = arith.addf %in_245, %630 : f32
      %632 = arith.cmpf oeq, %in, %in_244 : f32
      %633 = arith.select %632, %631, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<1x256x56x56xf32>
    %593 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %592 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x56x56xf32>) outs(%548 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %out: f32):
      %630 = arith.mulf %in_244, %in_245 : f32
      %631 = arith.mulf %in, %630 : f32
      linalg.yield %631 : f32
    } -> tensor<1x56x56x256xf32>
    %collapsed_223 = tensor.collapse_shape %593 [[0, 1, 2], [3]] : tensor<1x56x56x256xf32> into tensor<3136x256xf32>
    %594 = linalg.matmul ins(%collapsed_223, %collapsed_215 : tensor<3136x256xf32>, tensor<256x64xf32>) outs(%575 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %expanded_224 = tensor.expand_shape %594 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %595 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_218, %collapsed_217, %41, %42, %573, %expanded_224 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%579 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x56x56x64xf32>
    %padded_225 = tensor.pad %595 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %596 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_225, %585 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%586 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %597 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_218, %collapsed_217, %39, %40, %573, %596 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%579 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x56x56x64xf32>
    %collapsed_226 = tensor.collapse_shape %597 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %598 = linalg.matmul ins(%collapsed_226, %collapsed_221 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%565 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %expanded_227 = tensor.expand_shape %598 [[0, 1, 2], [3]] : tensor<3136x256xf32> into tensor<1x56x56x256xf32>
    %599 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %37, %38, %592, %308, %expanded_227 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<1x56x56x256xf32>) outs(%548 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %in_249: f32, %out: f32):
      %630 = arith.addf %in_248, %in_249 : f32
      %631 = arith.addf %in_247, %630 : f32
      %632 = arith.cmpf oeq, %in_245, %in_246 : f32
      %633 = arith.select %632, %631, %cst : f32
      %634 = arith.mulf %in_244, %633 : f32
      %635 = arith.mulf %in, %634 : f32
      linalg.yield %635 : f32
    } -> tensor<1x56x56x256xf32>
    %collapsed_228 = tensor.collapse_shape %599 [[0, 1, 2], [3]] : tensor<1x56x56x256xf32> into tensor<3136x256xf32>
    %600 = linalg.matmul ins(%collapsed_228, %collapsed_215 : tensor<3136x256xf32>, tensor<256x64xf32>) outs(%575 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %expanded_229 = tensor.expand_shape %600 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %601 = tensor.empty() : tensor<1x56x56x64xf32>
    %602 = linalg.generic {indexing_maps = [#map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%573, %expanded_229 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%601 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_244: f32, %out: f32):
      %630 = arith.addf %in, %in_244 : f32
      linalg.yield %630 : f32
    } -> tensor<1x56x56x64xf32>
    %603 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_218, %collapsed_217, %34, %35, %602 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<1x56x56x64xf32>) outs(%579 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %out: f32):
      %630 = arith.cmpf oeq, %in_245, %in_246 : f32
      %631 = arith.select %630, %in_247, %cst : f32
      %632 = arith.mulf %in_244, %631 : f32
      %633 = arith.mulf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<1x56x56x64xf32>
    %padded_230 = tensor.pad %603 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %604 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_230, %585 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%586 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %605 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_218, %collapsed_217, %32, %33, %573, %604 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%579 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.cmpf oeq, %in_245, %in_246 : f32
      %632 = arith.select %631, %630, %cst : f32
      %633 = arith.mulf %in_244, %632 : f32
      %634 = arith.mulf %in, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x56x56x64xf32>
    %collapsed_231 = tensor.collapse_shape %605 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %606 = tensor.empty() : tensor<64x64x1x1xf32>
    %607 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24 : tensor<64x1x1x64xf32>) outs(%606 : tensor<64x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x64x1x1xf32>
    %collapsed_232 = tensor.collapse_shape %607 [[0], [1, 2, 3]] : tensor<64x64x1x1xf32> into tensor<64x64xf32>
    %608 = linalg.matmul ins(%collapsed_231, %collapsed_232 : tensor<3136x64xf32>, tensor<64x64xf32>) outs(%575 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %expanded_233 = tensor.expand_shape %608 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %padded_234 = tensor.pad %30 low[0, 1, 1, 0] high[0, 0, 0, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1 : f32
    } : tensor<1x112x112x64xf32> to tensor<1x113x113x64xf32>
    %609 = tensor.empty() : tensor<1x113x113x64xf32>
    %610 = tensor.empty() : tensor<3x3xf32>
    %611 = linalg.generic {indexing_maps = [#map20, #map21, #map22, #map22, #map23, #map22, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%padded_234, %610, %31, %602, %573, %expanded_233 : tensor<1x113x113x64xf32>, tensor<3x3xf32>, tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>, tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%609 : tensor<1x113x113x64xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %in_248: f32, %out: f32):
      %630 = arith.addf %in_247, %in_248 : f32
      %631 = arith.addf %in_246, %630 : f32
      %632 = arith.cmpf oge, %in, %in_245 : f32
      %633 = arith.select %632, %631, %cst : f32
      %634 = arith.addf %out, %633 : f32
      linalg.yield %634 : f32
    } -> tensor<1x113x113x64xf32>
    %extracted_slice_235 = tensor.extract_slice %611[0, 1, 1, 0] [1, 112, 112, 64] [1, 1, 1, 1] : tensor<1x113x113x64xf32> to tensor<1x112x112x64xf32>
    %612 = tensor.empty() : tensor<1x112x112x64xf32>
    %613 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_218, %collapsed_217, %28, %29, %extracted_slice_235 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x112x112xf32>, tensor<1x64x112x112xf32>, tensor<1x112x112x64xf32>) outs(%612 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %out: f32):
      %630 = arith.cmpf oeq, %in_245, %in_246 : f32
      %631 = arith.select %630, %in_247, %cst : f32
      %632 = arith.mulf %in_244, %631 : f32
      %633 = arith.mulf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<1x112x112x64xf32>
    %614 = tensor.empty() : tensor<3x7x7x64xf32>
    %615 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26 : tensor<64x7x7x3xf32>) outs(%614 : tensor<3x7x7x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x7x7x64xf32>
    %616 = tensor.empty() : tensor<3xf32>
    %padded_236 = tensor.pad %615 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<3x7x7x64xf32> to tensor<3x8x8x64xf32>
    %expanded_237 = tensor.expand_shape %padded_236 [[0], [1, 2], [3, 4], [5]] : tensor<3x8x8x64xf32> into tensor<3x4x2x4x2x64xf32>
    %617 = tensor.empty() : tensor<2x2x3x4x4x64xf32>
    %618 = linalg.generic {indexing_maps = [#map14, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_237 : tensor<3x4x2x4x2x64xf32>) outs(%617 : tensor<2x2x3x4x4x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x3x4x4x64xf32>
    %collapsed_238 = tensor.collapse_shape %618 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x3x4x4x64xf32> into tensor<12x4x4x64xf32>
    %619 = tensor.empty() : tensor<12x4x4x64xf32>
    %620 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%619 : tensor<12x4x4x64xf32>) {
    ^bb0(%out: f32):
      %630 = linalg.index 0 : index
      %631 = linalg.index 1 : index
      %632 = arith.subi %c3, %631 : index
      %633 = linalg.index 2 : index
      %634 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_238[%630, %632, %633, %634] : tensor<12x4x4x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<12x4x4x64xf32>
    %padded_239 = tensor.pad %613 low[%c0, %c3, %c3, %c0] high[%c0, %c3, %c3, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x112x112x64xf32> to tensor<1x118x118x64xf32>
    %621 = tensor.empty() : tensor<4x4x64x12xf32>
    %622 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%621 : tensor<4x4x64x12xf32>) {
    ^bb0(%out: f32):
      %630 = linalg.index 0 : index
      %631 = linalg.index 1 : index
      %632 = linalg.index 2 : index
      %633 = linalg.index 3 : index
      %634 = arith.subi %c3, %631 : index
      %extracted = tensor.extract %620[%633, %630, %634, %632] : tensor<12x4x4x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<4x4x64x12xf32>
    %623 = tensor.empty() : tensor<1x115x115x12xf32>
    %624 = linalg.fill ins(%cst : f32) outs(%623 : tensor<1x115x115x12xf32>) -> tensor<1x115x115x12xf32>
    %625 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_239, %622 : tensor<1x118x118x64xf32>, tensor<4x4x64x12xf32>) outs(%624 : tensor<1x115x115x12xf32>) -> tensor<1x115x115x12xf32>
    %expanded_240 = tensor.expand_shape %625 [[0], [1], [2], [3, 4, 5]] : tensor<1x115x115x12xf32> into tensor<1x115x115x2x2x3xf32>
    %626 = tensor.empty() : tensor<1x115x2x115x2x3xf32>
    %627 = linalg.generic {indexing_maps = [#map15, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_240 : tensor<1x115x115x2x2x3xf32>) outs(%626 : tensor<1x115x2x115x2x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %630 = arith.addf %in, %cst : f32
      linalg.yield %630 : f32
    } -> tensor<1x115x2x115x2x3xf32>
    %collapsed_241 = tensor.collapse_shape %627 [[0], [1, 2], [3, 4], [5]] : tensor<1x115x2x115x2x3xf32> into tensor<1x230x230x3xf32>
    %extracted_slice_242 = tensor.extract_slice %collapsed_241[0, 3, 3, 0] [1, 224, 224, 3] [1, 1, 1, 1] : tensor<1x230x230x3xf32> to tensor<1x224x224x3xf32>
    %expanded_243 = tensor.expand_shape %616 [[0, 1]] : tensor<3xf32> into tensor<1x3xf32>
    %628 = tensor.empty() : tensor<1x3x224x224xf32>
    %629 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%extracted_slice_242, %expanded_243 : tensor<1x224x224x3xf32>, tensor<1x3xf32>) outs(%628 : tensor<1x3x224x224xf32>) {
    ^bb0(%in: f32, %in_244: f32, %out: f32):
      %630 = arith.addf %in, %in_244 : f32
      linalg.yield %630 : f32
    } -> tensor<1x3x224x224xf32>
    return %629 : tensor<1x3x224x224xf32>
  }
}

