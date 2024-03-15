#map = affine_map<(d0, d1, d2, d3) -> (d0, d3, d1, d2)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d3)>
#map3 = affine_map<(d0, d1, d2, d3) -> (d0, d2, d3, d1)>
#map4 = affine_map<(d0, d1, d2, d3) -> (d0, d1)>
#map5 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map6 = affine_map<(d0, d1) -> (d1)>
#map7 = affine_map<(d0, d1) -> (d0, d1)>
#map8 = affine_map<(d0, d1, d2) -> (d0, d2, d1)>
#map9 = affine_map<(d0, d1, d2, d3) -> (d0, d3)>
#map10 = affine_map<(d0, d1, d2, d3) -> (d0)>
#map11 = affine_map<(d0, d1, d2, d3) -> (d3, d1, d2, d0)>
#map12 = affine_map<(d0, d1) -> (d1, d0)>
#map13 = affine_map<(d0, d1, d2, d3) -> (d3, d0, d1, d2)>
#map14 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d2, d3, d0, d4, d1, d5)>
#map15 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3, d4, d5)>
#map16 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d3, d2, d4, d5)>
#map17 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map18 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map19 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
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
    %cst = arith.constant dense<7.777000e-02> : tensor<1x2048xf32>
    %cst_0 = arith.constant dense<7.777000e-02> : tensor<1x1024xf32>
    %cst_1 = arith.constant dense<7.777000e-02> : tensor<1x512xf32>
    %cst_2 = arith.constant dense<7.777000e-02> : tensor<1x128xf32>
    %cst_3 = arith.constant dense<7.777000e-02> : tensor<1x256xf32>
    %cst_4 = arith.constant 3.40282347E+38 : f32
    %cst_5 = arith.constant dense<7.777000e-02> : tensor<1x64xf32>
    %cst_6 = arith.constant 4.900000e+01 : f32
    %cst_7 = arith.constant dense<7.777000e-02> : tensor<512x2048xf32>
    %cst_8 = arith.constant dense<7.777000e-02> : tensor<3x3x512x512xf32>
    %cst_9 = arith.constant dense<7.777000e-02> : tensor<2048x512xf32>
    %cst_10 = arith.constant dense<7.777000e-02> : tensor<1x1x1024x2048xf32>
    %cst_11 = arith.constant dense<7.777000e-02> : tensor<1024x512xf32>
    %cst_12 = arith.constant dense<7.777000e-02> : tensor<256x1024xf32>
    %cst_13 = arith.constant dense<7.777000e-02> : tensor<3x3x256x256xf32>
    %cst_14 = arith.constant dense<7.777000e-02> : tensor<1024x256xf32>
    %cst_15 = arith.constant dense<7.777000e-02> : tensor<1x1x512x1024xf32>
    %cst_16 = arith.constant dense<7.777000e-02> : tensor<512x256xf32>
    %cst_17 = arith.constant dense<7.777000e-02> : tensor<128x512xf32>
    %cst_18 = arith.constant dense<7.777000e-02> : tensor<3x3x128x128xf32>
    %cst_19 = arith.constant dense<7.777000e-02> : tensor<512x128xf32>
    %cst_20 = arith.constant dense<7.777000e-02> : tensor<1x1x256x512xf32>
    %cst_21 = arith.constant dense<7.777000e-02> : tensor<256x128xf32>
    %cst_22 = arith.constant dense<7.777000e-02> : tensor<64x256xf32>
    %cst_23 = arith.constant dense<7.777000e-02> : tensor<3x3x64x64xf32>
    %cst_24 = arith.constant dense<7.777000e-02> : tensor<256x64xf32>
    %cst_25 = arith.constant dense<7.777000e-02> : tensor<64x64xf32>
    %cst_26 = arith.constant dense<7.777000e-02> : tensor<7x7x3x64xf32>
    %cst_27 = arith.constant -3.40282347E+38 : f32
    %cst_28 = arith.constant 0.000000e+00 : f32
    %cst_29 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_30 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_31 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_32 = arith.constant dense<0.000000e+00> : tensor<512xf32>
    %cst_33 = arith.constant dense<0.000000e+00> : tensor<1024xf32>
    %cst_34 = arith.constant dense<0.000000e+00> : tensor<2048xf32>
    %cst_35 = arith.constant dense<7.777000e-02> : tensor<1x1000xf32>
    %cst_36 = arith.constant dense<7.777000e-02> : tensor<1x2048x1000xf32>
    %cst_37 = arith.constant dense<7.777000e-02> : tensor<512x1x1x2048xf32>
    %cst_38 = arith.constant dense<7.777000e-02> : tensor<2048x1x1x1024xf32>
    %cst_39 = arith.constant dense<7.778000e-02> : tensor<2048x1x1xf32>
    %cst_40 = arith.constant dense<7.777000e-02> : tensor<1x2048x1x1xf32>
    %cst_41 = arith.constant dense<7.777000e-02> : tensor<2048x1x1x512xf32>
    %cst_42 = arith.constant dense<7.777000e-02> : tensor<512x3x3x512xf32>
    %cst_43 = arith.constant dense<7.777000e-02> : tensor<512x1x1x1024xf32>
    %cst_44 = arith.constant dense<7.777000e-02> : tensor<256x1x1x1024xf32>
    %cst_45 = arith.constant dense<7.777000e-02> : tensor<1024x1x1x512xf32>
    %cst_46 = arith.constant dense<7.778000e-02> : tensor<1024x1x1xf32>
    %cst_47 = arith.constant dense<7.777000e-02> : tensor<1x1024x1x1xf32>
    %cst_48 = arith.constant dense<7.777000e-02> : tensor<1024x1x1x256xf32>
    %cst_49 = arith.constant dense<7.777000e-02> : tensor<256x3x3x256xf32>
    %cst_50 = arith.constant dense<7.777000e-02> : tensor<256x1x1x512xf32>
    %cst_51 = arith.constant dense<7.777000e-02> : tensor<128x1x1x512xf32>
    %cst_52 = arith.constant dense<7.777000e-02> : tensor<512x1x1x256xf32>
    %cst_53 = arith.constant dense<7.778000e-02> : tensor<512x1x1xf32>
    %cst_54 = arith.constant dense<7.777000e-02> : tensor<1x512x1x1xf32>
    %cst_55 = arith.constant dense<7.777000e-02> : tensor<512x1x1x128xf32>
    %cst_56 = arith.constant dense<7.777000e-02> : tensor<128x3x3x128xf32>
    %cst_57 = arith.constant dense<7.778000e-02> : tensor<128x1x1xf32>
    %cst_58 = arith.constant dense<7.777000e-02> : tensor<1x128x1x1xf32>
    %cst_59 = arith.constant dense<7.777000e-02> : tensor<128x1x1x256xf32>
    %cst_60 = arith.constant dense<7.777000e-02> : tensor<64x1x1x256xf32>
    %cst_61 = arith.constant dense<7.778000e-02> : tensor<256x1x1xf32>
    %cst_62 = arith.constant dense<7.777000e-02> : tensor<1x256x1x1xf32>
    %cst_63 = arith.constant dense<7.777000e-02> : tensor<256x1x1x64xf32>
    %cst_64 = arith.constant dense<7.777000e-02> : tensor<64x3x3x64xf32>
    %cst_65 = arith.constant dense<7.777000e-02> : tensor<64x1x1x64xf32>
    %cst_66 = arith.constant dense<7.778000e-02> : tensor<64x1x1xf32>
    %cst_67 = arith.constant dense<7.777000e-02> : tensor<1x64x1x1xf32>
    %cst_68 = arith.constant dense<7.777000e-02> : tensor<64x7x7x3xf32>
    ml_program.global_store @global10 = %cst_36 : tensor<1x2048x1000xf32>
    ml_program.global_store @global11 = %cst_37 : tensor<512x1x1x2048xf32>
    ml_program.global_store @global12 = %cst_38 : tensor<2048x1x1x1024xf32>
    ml_program.global_store @global14 = %cst_40 : tensor<1x2048x1x1xf32>
    ml_program.global_store @global15 = %cst_41 : tensor<2048x1x1x512xf32>
    ml_program.global_store @global16 = %cst_42 : tensor<512x3x3x512xf32>
    ml_program.global_store @global17 = %cst_43 : tensor<512x1x1x1024xf32>
    ml_program.global_store @global18 = %cst_44 : tensor<256x1x1x1024xf32>
    ml_program.global_store @global19 = %cst_45 : tensor<1024x1x1x512xf32>
    ml_program.global_store @global21 = %cst_47 : tensor<1x1024x1x1xf32>
    ml_program.global_store @global22 = %cst_48 : tensor<1024x1x1x256xf32>
    ml_program.global_store @global23 = %cst_49 : tensor<256x3x3x256xf32>
    ml_program.global_store @global24 = %cst_50 : tensor<256x1x1x512xf32>
    ml_program.global_store @global25 = %cst_51 : tensor<128x1x1x512xf32>
    ml_program.global_store @global26 = %cst_52 : tensor<512x1x1x256xf32>
    ml_program.global_store @global28 = %cst_54 : tensor<1x512x1x1xf32>
    ml_program.global_store @global29 = %cst_55 : tensor<512x1x1x128xf32>
    ml_program.global_store @global30 = %cst_56 : tensor<128x3x3x128xf32>
    ml_program.global_store @global32 = %cst_58 : tensor<1x128x1x1xf32>
    ml_program.global_store @global33 = %cst_59 : tensor<128x1x1x256xf32>
    ml_program.global_store @global34 = %cst_60 : tensor<64x1x1x256xf32>
    ml_program.global_store @global36 = %cst_62 : tensor<1x256x1x1xf32>
    ml_program.global_store @global37 = %cst_63 : tensor<256x1x1x64xf32>
    ml_program.global_store @global38 = %cst_64 : tensor<64x3x3x64xf32>
    ml_program.global_store @global39 = %cst_65 : tensor<64x1x1x64xf32>
    ml_program.global_store @global41 = %cst_67 : tensor<1x64x1x1xf32>
    ml_program.global_store @global42 = %cst_68 : tensor<64x7x7x3xf32>
    %0 = tensor.empty() : tensor<1x224x224x3xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%arg0 : tensor<1x3x224x224xf32>) outs(%0 : tensor<1x224x224x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x224x224x3xf32>
    %padded = tensor.pad %1 low[0, 3, 3, 0] high[0, 3, 3, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x224x224x3xf32> to tensor<1x230x230x3xf32>
    %2 = tensor.empty() : tensor<1x112x112x64xf32>
    %3 = linalg.fill ins(%cst_28 : f32) outs(%2 : tensor<1x112x112x64xf32>) -> tensor<1x112x112x64xf32>
    %4 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded, %cst_26 : tensor<1x230x230x3xf32>, tensor<7x7x3x64xf32>) outs(%3 : tensor<1x112x112x64xf32>) -> tensor<1x112x112x64xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_29, %4 : tensor<64xf32>, tensor<1x112x112x64xf32>) outs(%2 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x112x112x64xf32>
    %6 = tensor.empty() : tensor<1x64x112x112xf32>
    %7 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5 : tensor<1x112x112x64xf32>) outs(%6 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x112x112xf32>
    %8 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %cst_5 : tensor<1x64x112x112xf32>, tensor<1x64xf32>) outs(%6 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x64x112x112xf32>
    %9 = tensor.empty() : tensor<64x1x1xf32>
    %10 = linalg.generic {indexing_maps = [#map5, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_66 : tensor<64x1x1xf32>) outs(%9 : tensor<64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = math.rsqrt %in : f32
      linalg.yield %1042 : f32
    } -> tensor<64x1x1xf32>
    %expanded = tensor.expand_shape %10 [[0, 1], [2], [3]] : tensor<64x1x1xf32> into tensor<1x64x1x1xf32>
    ml_program.global_store @global48 = %expanded : tensor<1x64x1x1xf32>
    %collapsed = tensor.collapse_shape %expanded [[0], [1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<1x64xf32>
    %11 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8, %collapsed : tensor<1x64x112x112xf32>, tensor<1x64xf32>) outs(%6 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x64x112x112xf32>
    %12 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %cst_5 : tensor<1x64x112x112xf32>, tensor<1x64xf32>) outs(%6 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x64x112x112xf32>
    %13 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12, %cst_5 : tensor<1x64x112x112xf32>, tensor<1x64xf32>) outs(%6 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x64x112x112xf32>
    ml_program.global_store @global51 = %13 : tensor<1x64x112x112xf32>
    %14 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<1x64x112x112xf32>) outs(%6 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x64x112x112xf32>
    ml_program.global_store @global52 = %14 : tensor<1x64x112x112xf32>
    %15 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14 : tensor<1x64x112x112xf32>) outs(%2 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x112x112x64xf32>
    ml_program.global_store @global53 = %15 : tensor<1x112x112x64xf32>
    %padded_69 = tensor.pad %15 low[0, 1, 1, 0] high[0, 0, 0, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_27 : f32
    } : tensor<1x112x112x64xf32> to tensor<1x113x113x64xf32>
    %16 = tensor.empty() : tensor<1x56x56x64xf32>
    %17 = linalg.fill ins(%cst_27 : f32) outs(%16 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %18 = tensor.empty() : tensor<3x3xf32>
    %19 = linalg.pooling_nhwc_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_69, %18 : tensor<1x113x113x64xf32>, tensor<3x3xf32>) outs(%17 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    ml_program.global_store @global54 = %19 : tensor<1x56x56x64xf32>
    %collapsed_70 = tensor.collapse_shape %19 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %20 = tensor.empty() : tensor<3136x64xf32>
    %21 = linalg.fill ins(%cst_28 : f32) outs(%20 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %22 = linalg.matmul ins(%collapsed_70, %cst_25 : tensor<3136x64xf32>, tensor<64x64xf32>) outs(%21 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %23 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_29, %22 : tensor<64xf32>, tensor<3136x64xf32>) outs(%20 : tensor<3136x64xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<3136x64xf32>
    %expanded_71 = tensor.expand_shape %23 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %24 = tensor.empty() : tensor<1x64x56x56xf32>
    %25 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_71 : tensor<1x56x56x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %26 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x64x56x56xf32>
    %27 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26, %collapsed : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x64x56x56xf32>
    %28 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x64x56x56xf32>
    %29 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global60 = %29 : tensor<1x64x56x56xf32>
    %30 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29 : tensor<1x64x56x56xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global61 = %30 : tensor<1x64x56x56xf32>
    %31 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x64x56x56xf32>) outs(%16 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_72 = tensor.pad %31 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %32 = linalg.fill ins(%cst_28 : f32) outs(%16 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %33 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_72, %cst_23 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%32 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %34 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_29, %33 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%16 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x56x56x64xf32>
    %35 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34 : tensor<1x56x56x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %36 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x64x56x56xf32>
    %37 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %collapsed : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x64x56x56xf32>
    %38 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x64x56x56xf32>
    %39 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global68 = %39 : tensor<1x64x56x56xf32>
    %40 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39 : tensor<1x64x56x56xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global69 = %40 : tensor<1x64x56x56xf32>
    %41 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40 : tensor<1x64x56x56xf32>) outs(%16 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %collapsed_73 = tensor.collapse_shape %41 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %42 = tensor.empty() : tensor<3136x256xf32>
    %43 = linalg.fill ins(%cst_28 : f32) outs(%42 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %44 = linalg.matmul ins(%collapsed_73, %cst_22 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%43 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %45 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %44 : tensor<256xf32>, tensor<3136x256xf32>) outs(%42 : tensor<3136x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<3136x256xf32>
    %expanded_74 = tensor.expand_shape %45 [[0, 1, 2], [3]] : tensor<3136x256xf32> into tensor<1x56x56x256xf32>
    %46 = tensor.empty() : tensor<1x256x56x56xf32>
    %47 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_74 : tensor<1x56x56x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %48 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %cst_3 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x56x56xf32>
    %49 = tensor.empty() : tensor<256x1x1xf32>
    %50 = linalg.generic {indexing_maps = [#map5, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_61 : tensor<256x1x1xf32>) outs(%49 : tensor<256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = math.rsqrt %in : f32
      linalg.yield %1042 : f32
    } -> tensor<256x1x1xf32>
    %expanded_75 = tensor.expand_shape %50 [[0, 1], [2], [3]] : tensor<256x1x1xf32> into tensor<1x256x1x1xf32>
    ml_program.global_store @global75 = %expanded_75 : tensor<1x256x1x1xf32>
    %collapsed_76 = tensor.collapse_shape %expanded_75 [[0], [1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<1x256xf32>
    %51 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48, %collapsed_76 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x56x56xf32>
    %52 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51, %cst_3 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x56x56xf32>
    %53 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52, %cst_3 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x56x56xf32>
    %54 = linalg.matmul ins(%collapsed_70, %cst_22 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%43 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %55 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %54 : tensor<256xf32>, tensor<3136x256xf32>) outs(%42 : tensor<3136x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<3136x256xf32>
    %expanded_77 = tensor.expand_shape %55 [[0, 1, 2], [3]] : tensor<3136x256xf32> into tensor<1x56x56x256xf32>
    %56 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_77 : tensor<1x56x56x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %57 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56, %cst_3 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x56x56xf32>
    %58 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %collapsed_76 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x56x56xf32>
    %59 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58, %cst_3 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x56x56xf32>
    %60 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59, %cst_3 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x56x56xf32>
    %61 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53, %60 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x56x56xf32>
    ml_program.global_store @global85 = %61 : tensor<1x256x56x56xf32>
    %62 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61 : tensor<1x256x56x56xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x56x56xf32>
    ml_program.global_store @global86 = %62 : tensor<1x256x56x56xf32>
    %63 = tensor.empty() : tensor<1x56x56x256xf32>
    %64 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62 : tensor<1x256x56x56xf32>) outs(%63 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %collapsed_78 = tensor.collapse_shape %64 [[0, 1, 2], [3]] : tensor<1x56x56x256xf32> into tensor<3136x256xf32>
    %65 = linalg.matmul ins(%collapsed_78, %cst_24 : tensor<3136x256xf32>, tensor<256x64xf32>) outs(%21 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %66 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_29, %65 : tensor<64xf32>, tensor<3136x64xf32>) outs(%20 : tensor<3136x64xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<3136x64xf32>
    %expanded_79 = tensor.expand_shape %66 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %67 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_79 : tensor<1x56x56x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %68 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x64x56x56xf32>
    %69 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68, %collapsed : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x64x56x56xf32>
    %70 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x64x56x56xf32>
    %71 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global93 = %71 : tensor<1x64x56x56xf32>
    %72 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71 : tensor<1x64x56x56xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global94 = %72 : tensor<1x64x56x56xf32>
    %73 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%72 : tensor<1x64x56x56xf32>) outs(%16 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_80 = tensor.pad %73 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %74 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_80, %cst_23 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%32 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %75 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_29, %74 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%16 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x56x56x64xf32>
    %76 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75 : tensor<1x56x56x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %77 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x64x56x56xf32>
    %78 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77, %collapsed : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x64x56x56xf32>
    %79 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%78, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x64x56x56xf32>
    %80 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global101 = %80 : tensor<1x64x56x56xf32>
    %81 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80 : tensor<1x64x56x56xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global102 = %81 : tensor<1x64x56x56xf32>
    %82 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81 : tensor<1x64x56x56xf32>) outs(%16 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %collapsed_81 = tensor.collapse_shape %82 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %83 = linalg.matmul ins(%collapsed_81, %cst_22 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%43 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %84 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %83 : tensor<256xf32>, tensor<3136x256xf32>) outs(%42 : tensor<3136x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<3136x256xf32>
    %expanded_82 = tensor.expand_shape %84 [[0, 1, 2], [3]] : tensor<3136x256xf32> into tensor<1x56x56x256xf32>
    %85 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_82 : tensor<1x56x56x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %86 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%85, %cst_3 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x56x56xf32>
    %87 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86, %collapsed_76 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x56x56xf32>
    %88 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%87, %cst_3 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x56x56xf32>
    %89 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88, %cst_3 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x56x56xf32>
    %90 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89, %62 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x56x56xf32>
    ml_program.global_store @global110 = %90 : tensor<1x256x56x56xf32>
    %91 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90 : tensor<1x256x56x56xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x56x56xf32>
    ml_program.global_store @global111 = %91 : tensor<1x256x56x56xf32>
    %92 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91 : tensor<1x256x56x56xf32>) outs(%63 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %collapsed_83 = tensor.collapse_shape %92 [[0, 1, 2], [3]] : tensor<1x56x56x256xf32> into tensor<3136x256xf32>
    %93 = linalg.matmul ins(%collapsed_83, %cst_24 : tensor<3136x256xf32>, tensor<256x64xf32>) outs(%21 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %94 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_29, %93 : tensor<64xf32>, tensor<3136x64xf32>) outs(%20 : tensor<3136x64xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<3136x64xf32>
    %expanded_84 = tensor.expand_shape %94 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %95 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_84 : tensor<1x56x56x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %96 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x64x56x56xf32>
    %97 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96, %collapsed : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x64x56x56xf32>
    %98 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x64x56x56xf32>
    %99 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global118 = %99 : tensor<1x64x56x56xf32>
    %100 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%99 : tensor<1x64x56x56xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global119 = %100 : tensor<1x64x56x56xf32>
    %101 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100 : tensor<1x64x56x56xf32>) outs(%16 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_85 = tensor.pad %101 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %102 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_85, %cst_23 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%32 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %103 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_29, %102 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%16 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x56x56x64xf32>
    %104 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103 : tensor<1x56x56x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %105 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x64x56x56xf32>
    %106 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %collapsed : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x64x56x56xf32>
    %107 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x64x56x56xf32>
    %108 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global126 = %108 : tensor<1x64x56x56xf32>
    %109 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108 : tensor<1x64x56x56xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global127 = %109 : tensor<1x64x56x56xf32>
    %110 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109 : tensor<1x64x56x56xf32>) outs(%16 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %collapsed_86 = tensor.collapse_shape %110 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %111 = linalg.matmul ins(%collapsed_86, %cst_22 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%43 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %112 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %111 : tensor<256xf32>, tensor<3136x256xf32>) outs(%42 : tensor<3136x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<3136x256xf32>
    %expanded_87 = tensor.expand_shape %112 [[0, 1, 2], [3]] : tensor<3136x256xf32> into tensor<1x56x56x256xf32>
    %113 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_87 : tensor<1x56x56x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %114 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%113, %cst_3 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x56x56xf32>
    %115 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114, %collapsed_76 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x56x56xf32>
    %116 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115, %cst_3 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x56x56xf32>
    %117 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116, %cst_3 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x56x56xf32>
    %118 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117, %91 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x56x56xf32>
    ml_program.global_store @global135 = %118 : tensor<1x256x56x56xf32>
    %119 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118 : tensor<1x256x56x56xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x56x56xf32>
    ml_program.global_store @global136 = %119 : tensor<1x256x56x56xf32>
    %120 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119 : tensor<1x256x56x56xf32>) outs(%63 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %collapsed_88 = tensor.collapse_shape %120 [[0, 1, 2], [3]] : tensor<1x56x56x256xf32> into tensor<3136x256xf32>
    %121 = tensor.empty() : tensor<3136x128xf32>
    %122 = linalg.fill ins(%cst_28 : f32) outs(%121 : tensor<3136x128xf32>) -> tensor<3136x128xf32>
    %123 = linalg.matmul ins(%collapsed_88, %cst_21 : tensor<3136x256xf32>, tensor<256x128xf32>) outs(%122 : tensor<3136x128xf32>) -> tensor<3136x128xf32>
    %124 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_31, %123 : tensor<128xf32>, tensor<3136x128xf32>) outs(%121 : tensor<3136x128xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<3136x128xf32>
    %expanded_89 = tensor.expand_shape %124 [[0, 1, 2], [3]] : tensor<3136x128xf32> into tensor<1x56x56x128xf32>
    %125 = tensor.empty() : tensor<1x128x56x56xf32>
    %126 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_89 : tensor<1x56x56x128xf32>) outs(%125 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x56x56xf32>
    %127 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126, %cst_2 : tensor<1x128x56x56xf32>, tensor<1x128xf32>) outs(%125 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x56x56xf32>
    %128 = tensor.empty() : tensor<128x1x1xf32>
    %129 = linalg.generic {indexing_maps = [#map5, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_57 : tensor<128x1x1xf32>) outs(%128 : tensor<128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = math.rsqrt %in : f32
      linalg.yield %1042 : f32
    } -> tensor<128x1x1xf32>
    %expanded_90 = tensor.expand_shape %129 [[0, 1], [2], [3]] : tensor<128x1x1xf32> into tensor<1x128x1x1xf32>
    ml_program.global_store @global142 = %expanded_90 : tensor<1x128x1x1xf32>
    %collapsed_91 = tensor.collapse_shape %expanded_90 [[0], [1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<1x128xf32>
    %130 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%127, %collapsed_91 : tensor<1x128x56x56xf32>, tensor<1x128xf32>) outs(%125 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x56x56xf32>
    %131 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130, %cst_2 : tensor<1x128x56x56xf32>, tensor<1x128xf32>) outs(%125 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x56x56xf32>
    %132 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131, %cst_2 : tensor<1x128x56x56xf32>, tensor<1x128xf32>) outs(%125 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x56x56xf32>
    ml_program.global_store @global145 = %132 : tensor<1x128x56x56xf32>
    %133 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132 : tensor<1x128x56x56xf32>) outs(%125 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x128x56x56xf32>
    ml_program.global_store @global146 = %133 : tensor<1x128x56x56xf32>
    %134 = tensor.empty() : tensor<1x56x56x128xf32>
    %135 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%133 : tensor<1x128x56x56xf32>) outs(%134 : tensor<1x56x56x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x128xf32>
    %padded_92 = tensor.pad %135 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x56x56x128xf32> to tensor<1x58x58x128xf32>
    %136 = tensor.empty() : tensor<1x28x28x128xf32>
    %137 = linalg.fill ins(%cst_28 : f32) outs(%136 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %138 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded_92, %cst_18 : tensor<1x58x58x128xf32>, tensor<3x3x128x128xf32>) outs(%137 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %139 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_31, %138 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%136 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x28x28x128xf32>
    %140 = tensor.empty() : tensor<1x128x28x28xf32>
    %141 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139 : tensor<1x28x28x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %142 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x28x28xf32>
    %143 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142, %collapsed_91 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x28x28xf32>
    %144 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x28x28xf32>
    %145 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global153 = %145 : tensor<1x128x28x28xf32>
    %146 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145 : tensor<1x128x28x28xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global154 = %146 : tensor<1x128x28x28xf32>
    %147 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146 : tensor<1x128x28x28xf32>) outs(%136 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_93 = tensor.collapse_shape %147 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %148 = tensor.empty() : tensor<784x512xf32>
    %149 = linalg.fill ins(%cst_28 : f32) outs(%148 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %150 = linalg.matmul ins(%collapsed_93, %cst_17 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%149 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %151 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_32, %150 : tensor<512xf32>, tensor<784x512xf32>) outs(%148 : tensor<784x512xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<784x512xf32>
    %expanded_94 = tensor.expand_shape %151 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %152 = tensor.empty() : tensor<1x512x28x28xf32>
    %153 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_94 : tensor<1x28x28x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %154 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%153, %cst_1 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x28x28xf32>
    %155 = tensor.empty() : tensor<512x1x1xf32>
    %156 = linalg.generic {indexing_maps = [#map5, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_53 : tensor<512x1x1xf32>) outs(%155 : tensor<512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = math.rsqrt %in : f32
      linalg.yield %1042 : f32
    } -> tensor<512x1x1xf32>
    %expanded_95 = tensor.expand_shape %156 [[0, 1], [2], [3]] : tensor<512x1x1xf32> into tensor<1x512x1x1xf32>
    ml_program.global_store @global160 = %expanded_95 : tensor<1x512x1x1xf32>
    %collapsed_96 = tensor.collapse_shape %expanded_95 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %157 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %collapsed_96 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x28x28xf32>
    %158 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157, %cst_1 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x28x28xf32>
    %159 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158, %cst_1 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x28x28xf32>
    %160 = tensor.empty() : tensor<1x28x28x512xf32>
    %161 = linalg.fill ins(%cst_28 : f32) outs(%160 : tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %162 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%120, %cst_20 : tensor<1x56x56x256xf32>, tensor<1x1x256x512xf32>) outs(%161 : tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %163 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_32, %162 : tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%160 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x28x28x512xf32>
    %164 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163 : tensor<1x28x28x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %165 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164, %cst_1 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x28x28xf32>
    %166 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%165, %collapsed_96 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x28x28xf32>
    %167 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166, %cst_1 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x28x28xf32>
    %168 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167, %cst_1 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x28x28xf32>
    %169 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%159, %168 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global170 = %169 : tensor<1x512x28x28xf32>
    %170 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169 : tensor<1x512x28x28xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global171 = %170 : tensor<1x512x28x28xf32>
    %171 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170 : tensor<1x512x28x28xf32>) outs(%160 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_97 = tensor.collapse_shape %171 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %172 = tensor.empty() : tensor<784x128xf32>
    %173 = linalg.fill ins(%cst_28 : f32) outs(%172 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %174 = linalg.matmul ins(%collapsed_97, %cst_19 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%173 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %175 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_31, %174 : tensor<128xf32>, tensor<784x128xf32>) outs(%172 : tensor<784x128xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<784x128xf32>
    %expanded_98 = tensor.expand_shape %175 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %176 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_98 : tensor<1x28x28x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %177 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x28x28xf32>
    %178 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %collapsed_91 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x28x28xf32>
    %179 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x28x28xf32>
    %180 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global178 = %180 : tensor<1x128x28x28xf32>
    %181 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%180 : tensor<1x128x28x28xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global179 = %181 : tensor<1x128x28x28xf32>
    %182 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181 : tensor<1x128x28x28xf32>) outs(%136 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_99 = tensor.pad %182 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %183 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_99, %cst_18 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%137 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %184 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_31, %183 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%136 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x28x28x128xf32>
    %185 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184 : tensor<1x28x28x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %186 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x28x28xf32>
    %187 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186, %collapsed_91 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x28x28xf32>
    %188 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x28x28xf32>
    %189 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global186 = %189 : tensor<1x128x28x28xf32>
    %190 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189 : tensor<1x128x28x28xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global187 = %190 : tensor<1x128x28x28xf32>
    %191 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190 : tensor<1x128x28x28xf32>) outs(%136 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_100 = tensor.collapse_shape %191 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %192 = linalg.matmul ins(%collapsed_100, %cst_17 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%149 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %193 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_32, %192 : tensor<512xf32>, tensor<784x512xf32>) outs(%148 : tensor<784x512xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<784x512xf32>
    %expanded_101 = tensor.expand_shape %193 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %194 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_101 : tensor<1x28x28x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %195 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %cst_1 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x28x28xf32>
    %196 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195, %collapsed_96 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x28x28xf32>
    %197 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196, %cst_1 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x28x28xf32>
    %198 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%197, %cst_1 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x28x28xf32>
    %199 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198, %170 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global195 = %199 : tensor<1x512x28x28xf32>
    %200 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%199 : tensor<1x512x28x28xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global196 = %200 : tensor<1x512x28x28xf32>
    %201 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200 : tensor<1x512x28x28xf32>) outs(%160 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_102 = tensor.collapse_shape %201 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %202 = linalg.matmul ins(%collapsed_102, %cst_19 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%173 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %203 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_31, %202 : tensor<128xf32>, tensor<784x128xf32>) outs(%172 : tensor<784x128xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<784x128xf32>
    %expanded_103 = tensor.expand_shape %203 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %204 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_103 : tensor<1x28x28x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %205 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x28x28xf32>
    %206 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205, %collapsed_91 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x28x28xf32>
    %207 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x28x28xf32>
    %208 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global203 = %208 : tensor<1x128x28x28xf32>
    %209 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208 : tensor<1x128x28x28xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global204 = %209 : tensor<1x128x28x28xf32>
    %210 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%209 : tensor<1x128x28x28xf32>) outs(%136 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_104 = tensor.pad %210 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %211 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_104, %cst_18 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%137 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %212 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_31, %211 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%136 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x28x28x128xf32>
    %213 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212 : tensor<1x28x28x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %214 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x28x28xf32>
    %215 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214, %collapsed_91 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x28x28xf32>
    %216 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x28x28xf32>
    %217 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%216, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global211 = %217 : tensor<1x128x28x28xf32>
    %218 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%217 : tensor<1x128x28x28xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global212 = %218 : tensor<1x128x28x28xf32>
    %219 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%218 : tensor<1x128x28x28xf32>) outs(%136 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_105 = tensor.collapse_shape %219 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %220 = linalg.matmul ins(%collapsed_105, %cst_17 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%149 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %221 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_32, %220 : tensor<512xf32>, tensor<784x512xf32>) outs(%148 : tensor<784x512xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<784x512xf32>
    %expanded_106 = tensor.expand_shape %221 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %222 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_106 : tensor<1x28x28x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %223 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%222, %cst_1 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x28x28xf32>
    %224 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%223, %collapsed_96 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x28x28xf32>
    %225 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224, %cst_1 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x28x28xf32>
    %226 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225, %cst_1 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x28x28xf32>
    %227 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226, %200 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global220 = %227 : tensor<1x512x28x28xf32>
    %228 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%227 : tensor<1x512x28x28xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global221 = %228 : tensor<1x512x28x28xf32>
    %229 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%228 : tensor<1x512x28x28xf32>) outs(%160 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_107 = tensor.collapse_shape %229 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %230 = linalg.matmul ins(%collapsed_107, %cst_19 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%173 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %231 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_31, %230 : tensor<128xf32>, tensor<784x128xf32>) outs(%172 : tensor<784x128xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<784x128xf32>
    %expanded_108 = tensor.expand_shape %231 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %232 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_108 : tensor<1x28x28x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %233 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x28x28xf32>
    %234 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%233, %collapsed_91 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x28x28xf32>
    %235 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x28x28xf32>
    %236 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%235, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global228 = %236 : tensor<1x128x28x28xf32>
    %237 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236 : tensor<1x128x28x28xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global229 = %237 : tensor<1x128x28x28xf32>
    %238 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%237 : tensor<1x128x28x28xf32>) outs(%136 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_109 = tensor.pad %238 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %239 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_109, %cst_18 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%137 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %240 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_31, %239 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%136 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x28x28x128xf32>
    %241 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240 : tensor<1x28x28x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %242 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x28x28xf32>
    %243 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242, %collapsed_91 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x28x28xf32>
    %244 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%243, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x28x28xf32>
    %245 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global236 = %245 : tensor<1x128x28x28xf32>
    %246 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245 : tensor<1x128x28x28xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global237 = %246 : tensor<1x128x28x28xf32>
    %247 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%246 : tensor<1x128x28x28xf32>) outs(%136 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_110 = tensor.collapse_shape %247 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %248 = linalg.matmul ins(%collapsed_110, %cst_17 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%149 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %249 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_32, %248 : tensor<512xf32>, tensor<784x512xf32>) outs(%148 : tensor<784x512xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<784x512xf32>
    %expanded_111 = tensor.expand_shape %249 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %250 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_111 : tensor<1x28x28x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %251 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%250, %cst_1 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x28x28xf32>
    %252 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%251, %collapsed_96 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x28x28xf32>
    %253 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%252, %cst_1 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x28x28xf32>
    %254 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%253, %cst_1 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x28x28xf32>
    %255 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254, %228 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global245 = %255 : tensor<1x512x28x28xf32>
    %256 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%255 : tensor<1x512x28x28xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global246 = %256 : tensor<1x512x28x28xf32>
    %257 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%256 : tensor<1x512x28x28xf32>) outs(%160 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_112 = tensor.collapse_shape %257 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %258 = tensor.empty() : tensor<784x256xf32>
    %259 = linalg.fill ins(%cst_28 : f32) outs(%258 : tensor<784x256xf32>) -> tensor<784x256xf32>
    %260 = linalg.matmul ins(%collapsed_112, %cst_16 : tensor<784x512xf32>, tensor<512x256xf32>) outs(%259 : tensor<784x256xf32>) -> tensor<784x256xf32>
    %261 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %260 : tensor<256xf32>, tensor<784x256xf32>) outs(%258 : tensor<784x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<784x256xf32>
    %expanded_113 = tensor.expand_shape %261 [[0, 1, 2], [3]] : tensor<784x256xf32> into tensor<1x28x28x256xf32>
    %262 = tensor.empty() : tensor<1x256x28x28xf32>
    %263 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_113 : tensor<1x28x28x256xf32>) outs(%262 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x28x28xf32>
    %264 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%263, %cst_3 : tensor<1x256x28x28xf32>, tensor<1x256xf32>) outs(%262 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x28x28xf32>
    %265 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%264, %collapsed_76 : tensor<1x256x28x28xf32>, tensor<1x256xf32>) outs(%262 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x28x28xf32>
    %266 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%265, %cst_3 : tensor<1x256x28x28xf32>, tensor<1x256xf32>) outs(%262 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x28x28xf32>
    %267 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%266, %cst_3 : tensor<1x256x28x28xf32>, tensor<1x256xf32>) outs(%262 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x28x28xf32>
    ml_program.global_store @global253 = %267 : tensor<1x256x28x28xf32>
    %268 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267 : tensor<1x256x28x28xf32>) outs(%262 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x28x28xf32>
    ml_program.global_store @global254 = %268 : tensor<1x256x28x28xf32>
    %269 = tensor.empty() : tensor<1x28x28x256xf32>
    %270 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268 : tensor<1x256x28x28xf32>) outs(%269 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x256xf32>
    %padded_114 = tensor.pad %270 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x28x28x256xf32> to tensor<1x30x30x256xf32>
    %271 = tensor.empty() : tensor<1x14x14x256xf32>
    %272 = linalg.fill ins(%cst_28 : f32) outs(%271 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %273 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded_114, %cst_13 : tensor<1x30x30x256xf32>, tensor<3x3x256x256xf32>) outs(%272 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %274 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30, %273 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x14x14x256xf32>
    %275 = tensor.empty() : tensor<1x256x14x14xf32>
    %276 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%274 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %277 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%276, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %278 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%277, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %279 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %280 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global261 = %280 : tensor<1x256x14x14xf32>
    %281 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%280 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global262 = %281 : tensor<1x256x14x14xf32>
    %282 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_115 = tensor.collapse_shape %282 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %283 = tensor.empty() : tensor<196x1024xf32>
    %284 = linalg.fill ins(%cst_28 : f32) outs(%283 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %285 = linalg.matmul ins(%collapsed_115, %cst_12 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%284 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %286 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_33, %285 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%283 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x1024xf32>
    %expanded_116 = tensor.expand_shape %286 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %287 = tensor.empty() : tensor<1x1024x14x14xf32>
    %288 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_116 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %289 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%288, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %290 = tensor.empty() : tensor<1024x1x1xf32>
    %291 = linalg.generic {indexing_maps = [#map5, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_46 : tensor<1024x1x1xf32>) outs(%290 : tensor<1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = math.rsqrt %in : f32
      linalg.yield %1042 : f32
    } -> tensor<1024x1x1xf32>
    %expanded_117 = tensor.expand_shape %291 [[0, 1], [2], [3]] : tensor<1024x1x1xf32> into tensor<1x1024x1x1xf32>
    ml_program.global_store @global268 = %expanded_117 : tensor<1x1024x1x1xf32>
    %collapsed_118 = tensor.collapse_shape %expanded_117 [[0], [1, 2, 3]] : tensor<1x1024x1x1xf32> into tensor<1x1024xf32>
    %292 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%289, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %293 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%292, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %294 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%293, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %295 = tensor.empty() : tensor<1x14x14x1024xf32>
    %296 = linalg.fill ins(%cst_28 : f32) outs(%295 : tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %297 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%257, %cst_15 : tensor<1x28x28x512xf32>, tensor<1x1x512x1024xf32>) outs(%296 : tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %298 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_33, %297 : tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x14x14x1024xf32>
    %299 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%298 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %300 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%299, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %301 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%300, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %302 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %303 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%302, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %304 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294, %303 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global278 = %304 : tensor<1x1024x14x14xf32>
    %305 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304 : tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global279 = %305 : tensor<1x1024x14x14xf32>
    %306 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%305 : tensor<1x1024x14x14xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_119 = tensor.collapse_shape %306 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %307 = tensor.empty() : tensor<196x256xf32>
    %308 = linalg.fill ins(%cst_28 : f32) outs(%307 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %309 = linalg.matmul ins(%collapsed_119, %cst_14 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%308 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %310 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %309 : tensor<256xf32>, tensor<196x256xf32>) outs(%307 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x256xf32>
    %expanded_120 = tensor.expand_shape %310 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %311 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_120 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %312 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%311, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %313 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%312, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %314 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %315 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%314, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global286 = %315 : tensor<1x256x14x14xf32>
    %316 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%315 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global287 = %316 : tensor<1x256x14x14xf32>
    %317 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%316 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_121 = tensor.pad %317 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %318 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_121, %cst_13 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%272 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %319 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30, %318 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x14x14x256xf32>
    %320 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%319 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %321 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%320, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %322 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %323 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%322, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %324 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%323, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global294 = %324 : tensor<1x256x14x14xf32>
    %325 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%324 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global295 = %325 : tensor<1x256x14x14xf32>
    %326 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%325 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_122 = tensor.collapse_shape %326 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %327 = linalg.matmul ins(%collapsed_122, %cst_12 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%284 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %328 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_33, %327 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%283 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x1024xf32>
    %expanded_123 = tensor.expand_shape %328 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %329 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_123 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %330 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %331 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%330, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %332 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %333 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%332, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %334 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%333, %305 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global303 = %334 : tensor<1x1024x14x14xf32>
    %335 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334 : tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global304 = %335 : tensor<1x1024x14x14xf32>
    %336 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%335 : tensor<1x1024x14x14xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_124 = tensor.collapse_shape %336 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %337 = linalg.matmul ins(%collapsed_124, %cst_14 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%308 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %338 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %337 : tensor<256xf32>, tensor<196x256xf32>) outs(%307 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x256xf32>
    %expanded_125 = tensor.expand_shape %338 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %339 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_125 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %340 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%339, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %341 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%340, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %342 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%341, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %343 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%342, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global311 = %343 : tensor<1x256x14x14xf32>
    %344 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%343 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global312 = %344 : tensor<1x256x14x14xf32>
    %345 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_126 = tensor.pad %345 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %346 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_126, %cst_13 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%272 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %347 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30, %346 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x14x14x256xf32>
    %348 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%347 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %349 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%348, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %350 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%349, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %351 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%350, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %352 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global319 = %352 : tensor<1x256x14x14xf32>
    %353 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%352 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global320 = %353 : tensor<1x256x14x14xf32>
    %354 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%353 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_127 = tensor.collapse_shape %354 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %355 = linalg.matmul ins(%collapsed_127, %cst_12 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%284 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %356 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_33, %355 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%283 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x1024xf32>
    %expanded_128 = tensor.expand_shape %356 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %357 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_128 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %358 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%357, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %359 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%358, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %360 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %361 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%360, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %362 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%361, %335 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global328 = %362 : tensor<1x1024x14x14xf32>
    %363 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%362 : tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global329 = %363 : tensor<1x1024x14x14xf32>
    %364 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%363 : tensor<1x1024x14x14xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_129 = tensor.collapse_shape %364 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %365 = linalg.matmul ins(%collapsed_129, %cst_14 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%308 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %366 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %365 : tensor<256xf32>, tensor<196x256xf32>) outs(%307 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x256xf32>
    %expanded_130 = tensor.expand_shape %366 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %367 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_130 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %368 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%367, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %369 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%368, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %370 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%369, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %371 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%370, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global336 = %371 : tensor<1x256x14x14xf32>
    %372 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%371 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global337 = %372 : tensor<1x256x14x14xf32>
    %373 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%372 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_131 = tensor.pad %373 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %374 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_131, %cst_13 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%272 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %375 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30, %374 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x14x14x256xf32>
    %376 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%375 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %377 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%376, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %378 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%377, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %379 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%378, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %380 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%379, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global344 = %380 : tensor<1x256x14x14xf32>
    %381 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%380 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global345 = %381 : tensor<1x256x14x14xf32>
    %382 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%381 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_132 = tensor.collapse_shape %382 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %383 = linalg.matmul ins(%collapsed_132, %cst_12 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%284 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %384 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_33, %383 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%283 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x1024xf32>
    %expanded_133 = tensor.expand_shape %384 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %385 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_133 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %386 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%385, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %387 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%386, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %388 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%387, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %389 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%388, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %390 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %363 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global353 = %390 : tensor<1x1024x14x14xf32>
    %391 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%390 : tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global354 = %391 : tensor<1x1024x14x14xf32>
    %392 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%391 : tensor<1x1024x14x14xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_134 = tensor.collapse_shape %392 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %393 = linalg.matmul ins(%collapsed_134, %cst_14 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%308 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %394 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %393 : tensor<256xf32>, tensor<196x256xf32>) outs(%307 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x256xf32>
    %expanded_135 = tensor.expand_shape %394 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %395 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_135 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %396 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%395, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %397 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%396, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %398 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%397, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %399 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%398, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global361 = %399 : tensor<1x256x14x14xf32>
    %400 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%399 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global362 = %400 : tensor<1x256x14x14xf32>
    %401 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%400 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_136 = tensor.pad %401 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %402 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_136, %cst_13 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%272 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %403 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30, %402 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x14x14x256xf32>
    %404 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%403 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %405 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%404, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %406 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%405, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %407 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%406, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %408 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%407, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global369 = %408 : tensor<1x256x14x14xf32>
    %409 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%408 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global370 = %409 : tensor<1x256x14x14xf32>
    %410 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%409 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_137 = tensor.collapse_shape %410 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %411 = linalg.matmul ins(%collapsed_137, %cst_12 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%284 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %412 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_33, %411 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%283 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x1024xf32>
    %expanded_138 = tensor.expand_shape %412 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %413 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_138 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %414 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%413, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %415 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%414, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %416 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%415, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %417 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%416, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %418 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%417, %391 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global378 = %418 : tensor<1x1024x14x14xf32>
    %419 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%418 : tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global379 = %419 : tensor<1x1024x14x14xf32>
    %420 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%419 : tensor<1x1024x14x14xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_139 = tensor.collapse_shape %420 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %421 = linalg.matmul ins(%collapsed_139, %cst_14 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%308 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %422 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %421 : tensor<256xf32>, tensor<196x256xf32>) outs(%307 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x256xf32>
    %expanded_140 = tensor.expand_shape %422 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %423 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_140 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %424 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%423, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %425 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%424, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %426 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%425, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %427 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%426, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global386 = %427 : tensor<1x256x14x14xf32>
    %428 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%427 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global387 = %428 : tensor<1x256x14x14xf32>
    %429 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%428 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_141 = tensor.pad %429 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %430 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_141, %cst_13 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%272 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %431 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30, %430 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x14x14x256xf32>
    %432 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%431 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %433 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%432, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %434 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%433, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %435 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%434, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %436 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%435, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global394 = %436 : tensor<1x256x14x14xf32>
    %437 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%436 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global395 = %437 : tensor<1x256x14x14xf32>
    %438 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%437 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_142 = tensor.collapse_shape %438 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %439 = linalg.matmul ins(%collapsed_142, %cst_12 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%284 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %440 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_33, %439 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%283 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x1024xf32>
    %expanded_143 = tensor.expand_shape %440 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %441 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_143 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %442 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%441, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %443 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%442, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %444 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%443, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %445 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%444, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %446 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%445, %419 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global403 = %446 : tensor<1x1024x14x14xf32>
    %447 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%446 : tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global404 = %447 : tensor<1x1024x14x14xf32>
    %448 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%447 : tensor<1x1024x14x14xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_144 = tensor.collapse_shape %448 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %449 = linalg.matmul ins(%collapsed_144, %cst_14 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%308 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %450 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %449 : tensor<256xf32>, tensor<196x256xf32>) outs(%307 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x256xf32>
    %expanded_145 = tensor.expand_shape %450 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %451 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_145 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %452 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%451, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %453 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%452, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %454 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%453, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %455 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%454, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global411 = %455 : tensor<1x256x14x14xf32>
    %456 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%455 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global412 = %456 : tensor<1x256x14x14xf32>
    %457 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%456 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_146 = tensor.pad %457 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %458 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_146, %cst_13 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%272 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %459 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30, %458 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x14x14x256xf32>
    %460 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%459 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %461 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%460, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %462 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%461, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %463 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%462, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %464 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%463, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global419 = %464 : tensor<1x256x14x14xf32>
    %465 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%464 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global420 = %465 : tensor<1x256x14x14xf32>
    %466 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%465 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_147 = tensor.collapse_shape %466 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %467 = linalg.matmul ins(%collapsed_147, %cst_12 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%284 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %468 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_33, %467 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%283 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x1024xf32>
    %expanded_148 = tensor.expand_shape %468 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %469 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_148 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %470 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%469, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %471 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%470, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %472 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%471, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %473 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%472, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %474 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%473, %447 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global428 = %474 : tensor<1x1024x14x14xf32>
    %475 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%474 : tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global429 = %475 : tensor<1x1024x14x14xf32>
    %476 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%475 : tensor<1x1024x14x14xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_149 = tensor.collapse_shape %476 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %477 = linalg.matmul ins(%collapsed_149, %cst_14 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%308 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %478 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %477 : tensor<256xf32>, tensor<196x256xf32>) outs(%307 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x256xf32>
    %expanded_150 = tensor.expand_shape %478 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %479 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_150 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %480 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%479, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %481 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%480, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %482 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%481, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %483 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%482, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global436 = %483 : tensor<1x256x14x14xf32>
    %484 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%483 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global437 = %484 : tensor<1x256x14x14xf32>
    %485 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%484 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_151 = tensor.pad %485 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %486 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_151, %cst_13 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%272 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %487 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30, %486 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x14x14x256xf32>
    %488 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%487 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %489 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%488, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %490 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%489, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %491 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%490, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %492 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%491, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global444 = %492 : tensor<1x256x14x14xf32>
    %493 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%492 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global445 = %493 : tensor<1x256x14x14xf32>
    %494 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%493 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_152 = tensor.collapse_shape %494 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %495 = linalg.matmul ins(%collapsed_152, %cst_12 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%284 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %496 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_33, %495 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%283 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x1024xf32>
    %expanded_153 = tensor.expand_shape %496 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %497 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_153 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %498 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%497, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %499 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%498, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %500 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%499, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %501 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%500, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %502 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%501, %475 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global453 = %502 : tensor<1x1024x14x14xf32>
    %503 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%502 : tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global454 = %503 : tensor<1x1024x14x14xf32>
    %504 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%503 : tensor<1x1024x14x14xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_154 = tensor.collapse_shape %504 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %505 = linalg.matmul ins(%collapsed_154, %cst_14 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%308 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %506 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %505 : tensor<256xf32>, tensor<196x256xf32>) outs(%307 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x256xf32>
    %expanded_155 = tensor.expand_shape %506 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %507 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_155 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %508 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%507, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %509 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%508, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %510 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%509, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %511 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%510, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global461 = %511 : tensor<1x256x14x14xf32>
    %512 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%511 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global462 = %512 : tensor<1x256x14x14xf32>
    %513 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%512 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_156 = tensor.pad %513 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %514 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_156, %cst_13 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%272 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %515 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30, %514 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x14x14x256xf32>
    %516 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%515 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %517 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%516, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %518 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%517, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %519 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%518, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %520 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%519, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global469 = %520 : tensor<1x256x14x14xf32>
    %521 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%520 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global470 = %521 : tensor<1x256x14x14xf32>
    %522 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%521 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_157 = tensor.collapse_shape %522 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %523 = linalg.matmul ins(%collapsed_157, %cst_12 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%284 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %524 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_33, %523 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%283 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x1024xf32>
    %expanded_158 = tensor.expand_shape %524 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %525 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_158 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %526 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%525, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %527 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%526, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %528 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%527, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %529 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%528, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %530 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%529, %503 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global478 = %530 : tensor<1x1024x14x14xf32>
    %531 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%530 : tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global479 = %531 : tensor<1x1024x14x14xf32>
    %532 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%531 : tensor<1x1024x14x14xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_159 = tensor.collapse_shape %532 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %533 = linalg.matmul ins(%collapsed_159, %cst_14 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%308 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %534 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %533 : tensor<256xf32>, tensor<196x256xf32>) outs(%307 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x256xf32>
    %expanded_160 = tensor.expand_shape %534 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %535 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_160 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %536 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%535, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %537 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%536, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %538 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%537, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %539 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%538, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global486 = %539 : tensor<1x256x14x14xf32>
    %540 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%539 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global487 = %540 : tensor<1x256x14x14xf32>
    %541 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%540 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_161 = tensor.pad %541 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %542 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_161, %cst_13 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%272 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %543 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30, %542 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x14x14x256xf32>
    %544 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%543 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %545 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%544, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %546 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%545, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %547 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%546, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %548 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%547, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global494 = %548 : tensor<1x256x14x14xf32>
    %549 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%548 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global495 = %549 : tensor<1x256x14x14xf32>
    %550 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%549 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_162 = tensor.collapse_shape %550 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %551 = linalg.matmul ins(%collapsed_162, %cst_12 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%284 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %552 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_33, %551 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%283 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x1024xf32>
    %expanded_163 = tensor.expand_shape %552 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %553 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_163 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %554 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%553, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %555 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%554, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %556 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%555, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %557 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%556, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %558 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%557, %531 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global503 = %558 : tensor<1x1024x14x14xf32>
    %559 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%558 : tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global504 = %559 : tensor<1x1024x14x14xf32>
    %560 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%559 : tensor<1x1024x14x14xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_164 = tensor.collapse_shape %560 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %561 = linalg.matmul ins(%collapsed_164, %cst_14 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%308 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %562 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %561 : tensor<256xf32>, tensor<196x256xf32>) outs(%307 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x256xf32>
    %expanded_165 = tensor.expand_shape %562 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %563 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_165 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %564 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%563, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %565 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%564, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %566 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%565, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %567 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%566, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global511 = %567 : tensor<1x256x14x14xf32>
    %568 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%567 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global512 = %568 : tensor<1x256x14x14xf32>
    %569 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%568 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_166 = tensor.pad %569 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %570 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_166, %cst_13 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%272 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %571 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30, %570 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x14x14x256xf32>
    %572 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%571 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %573 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%572, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %574 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%573, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %575 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%574, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %576 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%575, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global519 = %576 : tensor<1x256x14x14xf32>
    %577 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%576 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global520 = %577 : tensor<1x256x14x14xf32>
    %578 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%577 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_167 = tensor.collapse_shape %578 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %579 = linalg.matmul ins(%collapsed_167, %cst_12 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%284 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %580 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_33, %579 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%283 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x1024xf32>
    %expanded_168 = tensor.expand_shape %580 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %581 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_168 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %582 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%581, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %583 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%582, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %584 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%583, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %585 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%584, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %586 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%585, %559 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global528 = %586 : tensor<1x1024x14x14xf32>
    %587 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%586 : tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global529 = %587 : tensor<1x1024x14x14xf32>
    %588 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%587 : tensor<1x1024x14x14xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_169 = tensor.collapse_shape %588 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %589 = linalg.matmul ins(%collapsed_169, %cst_14 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%308 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %590 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %589 : tensor<256xf32>, tensor<196x256xf32>) outs(%307 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x256xf32>
    %expanded_170 = tensor.expand_shape %590 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %591 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_170 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %592 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%591, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %593 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%592, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %594 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%593, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %595 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%594, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global536 = %595 : tensor<1x256x14x14xf32>
    %596 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%595 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global537 = %596 : tensor<1x256x14x14xf32>
    %597 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%596 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_171 = tensor.pad %597 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %598 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_171, %cst_13 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%272 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %599 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30, %598 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x14x14x256xf32>
    %600 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%599 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %601 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%600, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %602 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%601, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %603 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%602, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %604 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%603, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global544 = %604 : tensor<1x256x14x14xf32>
    %605 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%604 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global545 = %605 : tensor<1x256x14x14xf32>
    %606 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%605 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_172 = tensor.collapse_shape %606 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %607 = linalg.matmul ins(%collapsed_172, %cst_12 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%284 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %608 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_33, %607 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%283 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x1024xf32>
    %expanded_173 = tensor.expand_shape %608 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %609 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_173 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %610 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%609, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %611 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%610, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %612 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%611, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %613 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%612, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %614 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%613, %587 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global553 = %614 : tensor<1x1024x14x14xf32>
    %615 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%614 : tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global554 = %615 : tensor<1x1024x14x14xf32>
    %616 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%615 : tensor<1x1024x14x14xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_174 = tensor.collapse_shape %616 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %617 = linalg.matmul ins(%collapsed_174, %cst_14 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%308 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %618 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %617 : tensor<256xf32>, tensor<196x256xf32>) outs(%307 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x256xf32>
    %expanded_175 = tensor.expand_shape %618 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %619 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_175 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %620 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%619, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %621 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%620, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %622 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%621, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %623 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%622, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global561 = %623 : tensor<1x256x14x14xf32>
    %624 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%623 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global562 = %624 : tensor<1x256x14x14xf32>
    %625 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%624 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_176 = tensor.pad %625 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %626 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_176, %cst_13 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%272 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %627 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30, %626 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x14x14x256xf32>
    %628 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%627 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %629 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%628, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %630 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%629, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %631 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%630, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %632 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%631, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global569 = %632 : tensor<1x256x14x14xf32>
    %633 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%632 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global570 = %633 : tensor<1x256x14x14xf32>
    %634 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%633 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_177 = tensor.collapse_shape %634 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %635 = linalg.matmul ins(%collapsed_177, %cst_12 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%284 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %636 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_33, %635 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%283 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x1024xf32>
    %expanded_178 = tensor.expand_shape %636 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %637 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_178 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %638 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%637, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %639 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%638, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %640 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%639, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %641 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%640, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %642 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%641, %615 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global578 = %642 : tensor<1x1024x14x14xf32>
    %643 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%642 : tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global579 = %643 : tensor<1x1024x14x14xf32>
    %644 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%643 : tensor<1x1024x14x14xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_179 = tensor.collapse_shape %644 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %645 = linalg.matmul ins(%collapsed_179, %cst_14 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%308 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %646 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %645 : tensor<256xf32>, tensor<196x256xf32>) outs(%307 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x256xf32>
    %expanded_180 = tensor.expand_shape %646 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %647 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_180 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %648 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%647, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %649 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%648, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %650 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%649, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %651 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%650, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global586 = %651 : tensor<1x256x14x14xf32>
    %652 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%651 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global587 = %652 : tensor<1x256x14x14xf32>
    %653 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%652 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_181 = tensor.pad %653 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %654 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_181, %cst_13 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%272 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %655 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30, %654 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x14x14x256xf32>
    %656 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%655 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %657 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%656, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %658 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%657, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %659 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%658, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %660 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%659, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global594 = %660 : tensor<1x256x14x14xf32>
    %661 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%660 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global595 = %661 : tensor<1x256x14x14xf32>
    %662 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%661 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_182 = tensor.collapse_shape %662 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %663 = linalg.matmul ins(%collapsed_182, %cst_12 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%284 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %664 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_33, %663 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%283 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x1024xf32>
    %expanded_183 = tensor.expand_shape %664 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %665 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_183 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %666 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%665, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %667 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%666, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %668 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%667, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %669 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%668, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %670 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%669, %643 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global603 = %670 : tensor<1x1024x14x14xf32>
    %671 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%670 : tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global604 = %671 : tensor<1x1024x14x14xf32>
    %672 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%671 : tensor<1x1024x14x14xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_184 = tensor.collapse_shape %672 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %673 = linalg.matmul ins(%collapsed_184, %cst_14 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%308 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %674 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %673 : tensor<256xf32>, tensor<196x256xf32>) outs(%307 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x256xf32>
    %expanded_185 = tensor.expand_shape %674 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %675 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_185 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %676 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%675, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %677 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%676, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %678 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%677, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %679 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%678, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global611 = %679 : tensor<1x256x14x14xf32>
    %680 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%679 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global612 = %680 : tensor<1x256x14x14xf32>
    %681 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%680 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_186 = tensor.pad %681 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %682 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_186, %cst_13 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%272 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %683 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30, %682 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x14x14x256xf32>
    %684 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%683 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %685 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%684, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %686 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%685, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %687 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%686, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %688 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%687, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global619 = %688 : tensor<1x256x14x14xf32>
    %689 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%688 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global620 = %689 : tensor<1x256x14x14xf32>
    %690 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%689 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_187 = tensor.collapse_shape %690 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %691 = linalg.matmul ins(%collapsed_187, %cst_12 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%284 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %692 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_33, %691 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%283 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x1024xf32>
    %expanded_188 = tensor.expand_shape %692 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %693 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_188 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %694 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%693, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %695 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%694, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %696 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%695, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %697 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%696, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %698 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%697, %671 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global628 = %698 : tensor<1x1024x14x14xf32>
    %699 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%698 : tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global629 = %699 : tensor<1x1024x14x14xf32>
    %700 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%699 : tensor<1x1024x14x14xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_189 = tensor.collapse_shape %700 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %701 = linalg.matmul ins(%collapsed_189, %cst_14 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%308 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %702 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %701 : tensor<256xf32>, tensor<196x256xf32>) outs(%307 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x256xf32>
    %expanded_190 = tensor.expand_shape %702 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %703 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_190 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %704 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%703, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %705 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%704, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %706 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%705, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %707 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%706, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global636 = %707 : tensor<1x256x14x14xf32>
    %708 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%707 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global637 = %708 : tensor<1x256x14x14xf32>
    %709 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%708 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_191 = tensor.pad %709 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %710 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_191, %cst_13 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%272 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %711 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30, %710 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x14x14x256xf32>
    %712 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%711 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %713 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%712, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %714 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%713, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %715 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%714, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %716 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%715, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global644 = %716 : tensor<1x256x14x14xf32>
    %717 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%716 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global645 = %717 : tensor<1x256x14x14xf32>
    %718 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%717 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_192 = tensor.collapse_shape %718 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %719 = linalg.matmul ins(%collapsed_192, %cst_12 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%284 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %720 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_33, %719 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%283 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x1024xf32>
    %expanded_193 = tensor.expand_shape %720 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %721 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_193 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %722 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%721, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %723 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%722, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %724 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%723, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %725 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%724, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %726 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%725, %699 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global653 = %726 : tensor<1x1024x14x14xf32>
    %727 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%726 : tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global654 = %727 : tensor<1x1024x14x14xf32>
    %728 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%727 : tensor<1x1024x14x14xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_194 = tensor.collapse_shape %728 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %729 = linalg.matmul ins(%collapsed_194, %cst_14 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%308 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %730 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %729 : tensor<256xf32>, tensor<196x256xf32>) outs(%307 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x256xf32>
    %expanded_195 = tensor.expand_shape %730 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %731 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_195 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %732 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%731, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %733 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%732, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %734 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%733, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %735 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%734, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global661 = %735 : tensor<1x256x14x14xf32>
    %736 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%735 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global662 = %736 : tensor<1x256x14x14xf32>
    %737 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%736 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_196 = tensor.pad %737 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %738 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_196, %cst_13 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%272 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %739 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30, %738 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x14x14x256xf32>
    %740 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%739 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %741 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%740, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %742 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%741, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %743 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%742, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %744 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%743, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global669 = %744 : tensor<1x256x14x14xf32>
    %745 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%744 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global670 = %745 : tensor<1x256x14x14xf32>
    %746 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%745 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_197 = tensor.collapse_shape %746 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %747 = linalg.matmul ins(%collapsed_197, %cst_12 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%284 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %748 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_33, %747 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%283 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x1024xf32>
    %expanded_198 = tensor.expand_shape %748 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %749 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_198 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %750 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%749, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %751 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%750, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %752 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%751, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %753 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%752, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %754 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%753, %727 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global678 = %754 : tensor<1x1024x14x14xf32>
    %755 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%754 : tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global679 = %755 : tensor<1x1024x14x14xf32>
    %756 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%755 : tensor<1x1024x14x14xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_199 = tensor.collapse_shape %756 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %757 = linalg.matmul ins(%collapsed_199, %cst_14 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%308 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %758 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %757 : tensor<256xf32>, tensor<196x256xf32>) outs(%307 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x256xf32>
    %expanded_200 = tensor.expand_shape %758 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %759 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_200 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %760 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%759, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %761 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%760, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %762 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%761, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %763 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%762, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global686 = %763 : tensor<1x256x14x14xf32>
    %764 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%763 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global687 = %764 : tensor<1x256x14x14xf32>
    %765 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%764 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_201 = tensor.pad %765 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %766 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_201, %cst_13 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%272 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %767 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30, %766 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x14x14x256xf32>
    %768 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%767 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %769 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%768, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %770 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%769, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %771 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%770, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %772 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%771, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global694 = %772 : tensor<1x256x14x14xf32>
    %773 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%772 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global695 = %773 : tensor<1x256x14x14xf32>
    %774 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%773 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_202 = tensor.collapse_shape %774 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %775 = linalg.matmul ins(%collapsed_202, %cst_12 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%284 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %776 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_33, %775 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%283 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x1024xf32>
    %expanded_203 = tensor.expand_shape %776 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %777 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_203 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %778 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%777, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %779 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%778, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %780 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%779, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %781 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%780, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %782 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%781, %755 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global703 = %782 : tensor<1x1024x14x14xf32>
    %783 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%782 : tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global704 = %783 : tensor<1x1024x14x14xf32>
    %784 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%783 : tensor<1x1024x14x14xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_204 = tensor.collapse_shape %784 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %785 = linalg.matmul ins(%collapsed_204, %cst_14 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%308 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %786 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %785 : tensor<256xf32>, tensor<196x256xf32>) outs(%307 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x256xf32>
    %expanded_205 = tensor.expand_shape %786 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %787 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_205 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %788 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%787, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %789 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%788, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %790 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%789, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %791 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%790, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global711 = %791 : tensor<1x256x14x14xf32>
    %792 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%791 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global712 = %792 : tensor<1x256x14x14xf32>
    %793 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%792 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_206 = tensor.pad %793 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %794 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_206, %cst_13 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%272 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %795 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30, %794 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x14x14x256xf32>
    %796 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%795 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %797 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%796, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %798 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%797, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %799 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%798, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %800 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%799, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global719 = %800 : tensor<1x256x14x14xf32>
    %801 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%800 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global720 = %801 : tensor<1x256x14x14xf32>
    %802 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%801 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_207 = tensor.collapse_shape %802 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %803 = linalg.matmul ins(%collapsed_207, %cst_12 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%284 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %804 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_33, %803 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%283 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x1024xf32>
    %expanded_208 = tensor.expand_shape %804 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %805 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_208 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %806 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%805, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %807 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%806, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %808 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%807, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %809 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%808, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %810 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%809, %783 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global728 = %810 : tensor<1x1024x14x14xf32>
    %811 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%810 : tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global729 = %811 : tensor<1x1024x14x14xf32>
    %812 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%811 : tensor<1x1024x14x14xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_209 = tensor.collapse_shape %812 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %813 = linalg.matmul ins(%collapsed_209, %cst_14 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%308 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %814 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %813 : tensor<256xf32>, tensor<196x256xf32>) outs(%307 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x256xf32>
    %expanded_210 = tensor.expand_shape %814 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %815 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_210 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %816 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%815, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %817 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%816, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %818 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%817, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %819 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%818, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global736 = %819 : tensor<1x256x14x14xf32>
    %820 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%819 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global737 = %820 : tensor<1x256x14x14xf32>
    %821 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%820 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_211 = tensor.pad %821 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %822 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_211, %cst_13 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%272 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %823 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30, %822 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x14x14x256xf32>
    %824 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%823 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %825 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%824, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %826 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%825, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %827 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%826, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %828 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%827, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global744 = %828 : tensor<1x256x14x14xf32>
    %829 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%828 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global745 = %829 : tensor<1x256x14x14xf32>
    %830 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%829 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_212 = tensor.collapse_shape %830 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %831 = linalg.matmul ins(%collapsed_212, %cst_12 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%284 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %832 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_33, %831 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%283 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x1024xf32>
    %expanded_213 = tensor.expand_shape %832 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %833 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_213 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %834 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%833, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %835 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%834, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %836 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%835, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %837 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%836, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %838 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%837, %811 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global753 = %838 : tensor<1x1024x14x14xf32>
    %839 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%838 : tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global754 = %839 : tensor<1x1024x14x14xf32>
    %840 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%839 : tensor<1x1024x14x14xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_214 = tensor.collapse_shape %840 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %841 = linalg.matmul ins(%collapsed_214, %cst_14 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%308 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %842 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %841 : tensor<256xf32>, tensor<196x256xf32>) outs(%307 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x256xf32>
    %expanded_215 = tensor.expand_shape %842 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %843 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_215 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %844 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%843, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %845 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%844, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %846 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%845, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %847 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%846, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global761 = %847 : tensor<1x256x14x14xf32>
    %848 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%847 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global762 = %848 : tensor<1x256x14x14xf32>
    %849 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%848 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_216 = tensor.pad %849 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %850 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_216, %cst_13 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%272 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %851 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30, %850 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x14x14x256xf32>
    %852 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%851 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %853 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%852, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %854 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%853, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %855 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%854, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %856 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%855, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global769 = %856 : tensor<1x256x14x14xf32>
    %857 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%856 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global770 = %857 : tensor<1x256x14x14xf32>
    %858 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%857 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_217 = tensor.collapse_shape %858 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %859 = linalg.matmul ins(%collapsed_217, %cst_12 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%284 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %860 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_33, %859 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%283 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x1024xf32>
    %expanded_218 = tensor.expand_shape %860 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %861 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_218 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %862 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%861, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %863 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%862, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %864 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%863, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %865 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%864, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %866 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%865, %839 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global778 = %866 : tensor<1x1024x14x14xf32>
    %867 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%866 : tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global779 = %867 : tensor<1x1024x14x14xf32>
    %868 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%867 : tensor<1x1024x14x14xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_219 = tensor.collapse_shape %868 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %869 = linalg.matmul ins(%collapsed_219, %cst_14 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%308 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %870 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %869 : tensor<256xf32>, tensor<196x256xf32>) outs(%307 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x256xf32>
    %expanded_220 = tensor.expand_shape %870 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %871 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_220 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %872 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%871, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %873 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%872, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %874 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%873, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %875 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%874, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global786 = %875 : tensor<1x256x14x14xf32>
    %876 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%875 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global787 = %876 : tensor<1x256x14x14xf32>
    %877 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%876 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_221 = tensor.pad %877 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %878 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_221, %cst_13 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%272 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %879 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30, %878 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x14x14x256xf32>
    %880 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%879 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %881 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%880, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %882 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%881, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %883 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%882, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %884 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%883, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global794 = %884 : tensor<1x256x14x14xf32>
    %885 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%884 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global795 = %885 : tensor<1x256x14x14xf32>
    %886 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%885 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_222 = tensor.collapse_shape %886 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %887 = linalg.matmul ins(%collapsed_222, %cst_12 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%284 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %888 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_33, %887 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%283 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x1024xf32>
    %expanded_223 = tensor.expand_shape %888 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %889 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_223 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %890 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%889, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %891 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%890, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %892 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%891, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %893 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%892, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %894 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%893, %867 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global803 = %894 : tensor<1x1024x14x14xf32>
    %895 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%894 : tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global804 = %895 : tensor<1x1024x14x14xf32>
    %896 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%895 : tensor<1x1024x14x14xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_224 = tensor.collapse_shape %896 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %897 = linalg.matmul ins(%collapsed_224, %cst_14 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%308 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %898 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %897 : tensor<256xf32>, tensor<196x256xf32>) outs(%307 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x256xf32>
    %expanded_225 = tensor.expand_shape %898 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %899 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_225 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %900 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%899, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %901 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%900, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %902 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%901, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %903 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%902, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global811 = %903 : tensor<1x256x14x14xf32>
    %904 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%903 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global812 = %904 : tensor<1x256x14x14xf32>
    %905 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%904 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_226 = tensor.pad %905 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %906 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_226, %cst_13 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%272 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %907 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30, %906 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x14x14x256xf32>
    %908 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%907 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %909 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%908, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %910 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%909, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %911 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%910, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    %912 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%911, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global819 = %912 : tensor<1x256x14x14xf32>
    %913 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%912 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global820 = %913 : tensor<1x256x14x14xf32>
    %914 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%913 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_227 = tensor.collapse_shape %914 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %915 = linalg.matmul ins(%collapsed_227, %cst_12 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%284 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %916 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_33, %915 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%283 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x1024xf32>
    %expanded_228 = tensor.expand_shape %916 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %917 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_228 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %918 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%917, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %919 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%918, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %920 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%919, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %921 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%920, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    %922 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%921, %895 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global828 = %922 : tensor<1x1024x14x14xf32>
    %923 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%922 : tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global829 = %923 : tensor<1x1024x14x14xf32>
    %924 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%923 : tensor<1x1024x14x14xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_229 = tensor.collapse_shape %924 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %925 = tensor.empty() : tensor<196x512xf32>
    %926 = linalg.fill ins(%cst_28 : f32) outs(%925 : tensor<196x512xf32>) -> tensor<196x512xf32>
    %927 = linalg.matmul ins(%collapsed_229, %cst_11 : tensor<196x1024xf32>, tensor<1024x512xf32>) outs(%926 : tensor<196x512xf32>) -> tensor<196x512xf32>
    %928 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_32, %927 : tensor<512xf32>, tensor<196x512xf32>) outs(%925 : tensor<196x512xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<196x512xf32>
    %expanded_230 = tensor.expand_shape %928 [[0, 1, 2], [3]] : tensor<196x512xf32> into tensor<1x14x14x512xf32>
    %929 = tensor.empty() : tensor<1x512x14x14xf32>
    %930 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_230 : tensor<1x14x14x512xf32>) outs(%929 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x14x14xf32>
    %931 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%930, %cst_1 : tensor<1x512x14x14xf32>, tensor<1x512xf32>) outs(%929 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x14x14xf32>
    %932 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%931, %collapsed_96 : tensor<1x512x14x14xf32>, tensor<1x512xf32>) outs(%929 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x14x14xf32>
    %933 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%932, %cst_1 : tensor<1x512x14x14xf32>, tensor<1x512xf32>) outs(%929 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x14x14xf32>
    %934 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%933, %cst_1 : tensor<1x512x14x14xf32>, tensor<1x512xf32>) outs(%929 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x14x14xf32>
    ml_program.global_store @global836 = %934 : tensor<1x512x14x14xf32>
    %935 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%934 : tensor<1x512x14x14xf32>) outs(%929 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x512x14x14xf32>
    ml_program.global_store @global837 = %935 : tensor<1x512x14x14xf32>
    %936 = tensor.empty() : tensor<1x14x14x512xf32>
    %937 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%935 : tensor<1x512x14x14xf32>) outs(%936 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x512xf32>
    %padded_231 = tensor.pad %937 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x14x14x512xf32> to tensor<1x16x16x512xf32>
    %938 = tensor.empty() : tensor<1x7x7x512xf32>
    %939 = linalg.fill ins(%cst_28 : f32) outs(%938 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %940 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded_231, %cst_8 : tensor<1x16x16x512xf32>, tensor<3x3x512x512xf32>) outs(%939 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %941 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_32, %940 : tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%938 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x7x7x512xf32>
    %942 = tensor.empty() : tensor<1x512x7x7xf32>
    %943 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%941 : tensor<1x7x7x512xf32>) outs(%942 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %944 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%943, %cst_1 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%942 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x7x7xf32>
    %945 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%944, %collapsed_96 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%942 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x7x7xf32>
    %946 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%945, %cst_1 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%942 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x7x7xf32>
    %947 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%946, %cst_1 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%942 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global844 = %947 : tensor<1x512x7x7xf32>
    %948 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%947 : tensor<1x512x7x7xf32>) outs(%942 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global845 = %948 : tensor<1x512x7x7xf32>
    %949 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%948 : tensor<1x512x7x7xf32>) outs(%938 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %collapsed_232 = tensor.collapse_shape %949 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %950 = tensor.empty() : tensor<49x2048xf32>
    %951 = linalg.fill ins(%cst_28 : f32) outs(%950 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %952 = linalg.matmul ins(%collapsed_232, %cst_7 : tensor<49x512xf32>, tensor<512x2048xf32>) outs(%951 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %953 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_34, %952 : tensor<2048xf32>, tensor<49x2048xf32>) outs(%950 : tensor<49x2048xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<49x2048xf32>
    %expanded_233 = tensor.expand_shape %953 [[0, 1, 2], [3]] : tensor<49x2048xf32> into tensor<1x7x7x2048xf32>
    %954 = tensor.empty() : tensor<1x2048x7x7xf32>
    %955 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_233 : tensor<1x7x7x2048xf32>) outs(%954 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2048x7x7xf32>
    %956 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%955, %cst : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%954 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x2048x7x7xf32>
    %957 = tensor.empty() : tensor<2048x1x1xf32>
    %958 = linalg.generic {indexing_maps = [#map5, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_39 : tensor<2048x1x1xf32>) outs(%957 : tensor<2048x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = math.rsqrt %in : f32
      linalg.yield %1042 : f32
    } -> tensor<2048x1x1xf32>
    %expanded_234 = tensor.expand_shape %958 [[0, 1], [2], [3]] : tensor<2048x1x1xf32> into tensor<1x2048x1x1xf32>
    ml_program.global_store @global851 = %expanded_234 : tensor<1x2048x1x1xf32>
    %collapsed_235 = tensor.collapse_shape %expanded_234 [[0], [1, 2, 3]] : tensor<1x2048x1x1xf32> into tensor<1x2048xf32>
    %959 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%956, %collapsed_235 : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%954 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x2048x7x7xf32>
    %960 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%959, %cst : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%954 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x2048x7x7xf32>
    %961 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%960, %cst : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%954 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x2048x7x7xf32>
    %962 = tensor.empty() : tensor<1x7x7x2048xf32>
    %963 = linalg.fill ins(%cst_28 : f32) outs(%962 : tensor<1x7x7x2048xf32>) -> tensor<1x7x7x2048xf32>
    %964 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%924, %cst_10 : tensor<1x14x14x1024xf32>, tensor<1x1x1024x2048xf32>) outs(%963 : tensor<1x7x7x2048xf32>) -> tensor<1x7x7x2048xf32>
    %965 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_34, %964 : tensor<2048xf32>, tensor<1x7x7x2048xf32>) outs(%962 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x7x7x2048xf32>
    %966 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%965 : tensor<1x7x7x2048xf32>) outs(%954 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2048x7x7xf32>
    %967 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%966, %cst : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%954 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x2048x7x7xf32>
    %968 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%967, %collapsed_235 : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%954 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x2048x7x7xf32>
    %969 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%968, %cst : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%954 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x2048x7x7xf32>
    %970 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%969, %cst : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%954 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x2048x7x7xf32>
    %971 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%961, %970 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) outs(%954 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global861 = %971 : tensor<1x2048x7x7xf32>
    %972 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%971 : tensor<1x2048x7x7xf32>) outs(%954 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global862 = %972 : tensor<1x2048x7x7xf32>
    %973 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%972 : tensor<1x2048x7x7xf32>) outs(%962 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x2048xf32>
    %collapsed_236 = tensor.collapse_shape %973 [[0, 1, 2], [3]] : tensor<1x7x7x2048xf32> into tensor<49x2048xf32>
    %974 = tensor.empty() : tensor<49x512xf32>
    %975 = linalg.fill ins(%cst_28 : f32) outs(%974 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %976 = linalg.matmul ins(%collapsed_236, %cst_9 : tensor<49x2048xf32>, tensor<2048x512xf32>) outs(%975 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %977 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_32, %976 : tensor<512xf32>, tensor<49x512xf32>) outs(%974 : tensor<49x512xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<49x512xf32>
    %expanded_237 = tensor.expand_shape %977 [[0, 1, 2], [3]] : tensor<49x512xf32> into tensor<1x7x7x512xf32>
    %978 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_237 : tensor<1x7x7x512xf32>) outs(%942 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %979 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%978, %cst_1 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%942 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x7x7xf32>
    %980 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%979, %collapsed_96 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%942 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x7x7xf32>
    %981 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%980, %cst_1 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%942 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x7x7xf32>
    %982 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%981, %cst_1 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%942 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global869 = %982 : tensor<1x512x7x7xf32>
    %983 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%982 : tensor<1x512x7x7xf32>) outs(%942 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global870 = %983 : tensor<1x512x7x7xf32>
    %984 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%983 : tensor<1x512x7x7xf32>) outs(%938 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_238 = tensor.pad %984 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %985 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_238, %cst_8 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%939 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %986 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_32, %985 : tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%938 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x7x7x512xf32>
    %987 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%986 : tensor<1x7x7x512xf32>) outs(%942 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %988 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%987, %cst_1 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%942 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x7x7xf32>
    %989 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%988, %collapsed_96 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%942 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x7x7xf32>
    %990 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%989, %cst_1 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%942 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x7x7xf32>
    %991 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%990, %cst_1 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%942 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global877 = %991 : tensor<1x512x7x7xf32>
    %992 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%991 : tensor<1x512x7x7xf32>) outs(%942 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global878 = %992 : tensor<1x512x7x7xf32>
    %993 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%992 : tensor<1x512x7x7xf32>) outs(%938 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %collapsed_239 = tensor.collapse_shape %993 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %994 = linalg.matmul ins(%collapsed_239, %cst_7 : tensor<49x512xf32>, tensor<512x2048xf32>) outs(%951 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %995 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_34, %994 : tensor<2048xf32>, tensor<49x2048xf32>) outs(%950 : tensor<49x2048xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<49x2048xf32>
    %expanded_240 = tensor.expand_shape %995 [[0, 1, 2], [3]] : tensor<49x2048xf32> into tensor<1x7x7x2048xf32>
    %996 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_240 : tensor<1x7x7x2048xf32>) outs(%954 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2048x7x7xf32>
    %997 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%996, %cst : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%954 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x2048x7x7xf32>
    %998 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%997, %collapsed_235 : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%954 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x2048x7x7xf32>
    %999 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%998, %cst : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%954 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x2048x7x7xf32>
    %1000 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%999, %cst : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%954 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x2048x7x7xf32>
    %1001 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1000, %972 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) outs(%954 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global886 = %1001 : tensor<1x2048x7x7xf32>
    %1002 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1001 : tensor<1x2048x7x7xf32>) outs(%954 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global887 = %1002 : tensor<1x2048x7x7xf32>
    %1003 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1002 : tensor<1x2048x7x7xf32>) outs(%962 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x2048xf32>
    %collapsed_241 = tensor.collapse_shape %1003 [[0, 1, 2], [3]] : tensor<1x7x7x2048xf32> into tensor<49x2048xf32>
    %1004 = linalg.matmul ins(%collapsed_241, %cst_9 : tensor<49x2048xf32>, tensor<2048x512xf32>) outs(%975 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %1005 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_32, %1004 : tensor<512xf32>, tensor<49x512xf32>) outs(%974 : tensor<49x512xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<49x512xf32>
    %expanded_242 = tensor.expand_shape %1005 [[0, 1, 2], [3]] : tensor<49x512xf32> into tensor<1x7x7x512xf32>
    %1006 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_242 : tensor<1x7x7x512xf32>) outs(%942 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %1007 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1006, %cst_1 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%942 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x7x7xf32>
    %1008 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1007, %collapsed_96 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%942 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x7x7xf32>
    %1009 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1008, %cst_1 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%942 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x7x7xf32>
    %1010 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1009, %cst_1 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%942 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global894 = %1010 : tensor<1x512x7x7xf32>
    %1011 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1010 : tensor<1x512x7x7xf32>) outs(%942 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global895 = %1011 : tensor<1x512x7x7xf32>
    %1012 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1011 : tensor<1x512x7x7xf32>) outs(%938 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_243 = tensor.pad %1012 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %1013 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_243, %cst_8 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%939 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %1014 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_32, %1013 : tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%938 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x7x7x512xf32>
    %1015 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1014 : tensor<1x7x7x512xf32>) outs(%942 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %1016 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1015, %cst_1 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%942 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x7x7xf32>
    %1017 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1016, %collapsed_96 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%942 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x7x7xf32>
    %1018 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1017, %cst_1 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%942 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x7x7xf32>
    %1019 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1018, %cst_1 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%942 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global902 = %1019 : tensor<1x512x7x7xf32>
    %1020 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1019 : tensor<1x512x7x7xf32>) outs(%942 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global903 = %1020 : tensor<1x512x7x7xf32>
    %1021 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1020 : tensor<1x512x7x7xf32>) outs(%938 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %collapsed_244 = tensor.collapse_shape %1021 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %1022 = linalg.matmul ins(%collapsed_244, %cst_7 : tensor<49x512xf32>, tensor<512x2048xf32>) outs(%951 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %1023 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_34, %1022 : tensor<2048xf32>, tensor<49x2048xf32>) outs(%950 : tensor<49x2048xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<49x2048xf32>
    %expanded_245 = tensor.expand_shape %1023 [[0, 1, 2], [3]] : tensor<49x2048xf32> into tensor<1x7x7x2048xf32>
    %1024 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_245 : tensor<1x7x7x2048xf32>) outs(%954 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2048x7x7xf32>
    %1025 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1024, %cst : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%954 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.subf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x2048x7x7xf32>
    %1026 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1025, %collapsed_235 : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%954 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x2048x7x7xf32>
    %1027 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1026, %cst : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%954 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.mulf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x2048x7x7xf32>
    %1028 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1027, %cst : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%954 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x2048x7x7xf32>
    %1029 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1028, %1002 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) outs(%954 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global911 = %1029 : tensor<1x2048x7x7xf32>
    %1030 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1029 : tensor<1x2048x7x7xf32>) outs(%954 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.minf %in, %cst_4 : f32
      %1043 = arith.maxf %1042, %cst_28 : f32
      linalg.yield %1043 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global912 = %1030 : tensor<1x2048x7x7xf32>
    %1031 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1030 : tensor<1x2048x7x7xf32>) outs(%962 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x2048xf32>
    %1032 = tensor.empty() : tensor<1x1x1x2048xf32>
    %1033 = linalg.fill ins(%cst_28 : f32) outs(%1032 : tensor<1x1x1x2048xf32>) -> tensor<1x1x1x2048xf32>
    %1034 = tensor.empty() : tensor<7x7xf32>
    %1035 = linalg.pooling_nhwc_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1031, %1034 : tensor<1x7x7x2048xf32>, tensor<7x7xf32>) outs(%1033 : tensor<1x1x1x2048xf32>) -> tensor<1x1x1x2048xf32>
    %1036 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1035 : tensor<1x1x1x2048xf32>) outs(%1032 : tensor<1x1x1x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1042 = arith.divf %in, %cst_6 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1x1x2048xf32>
    %collapsed_246 = tensor.collapse_shape %1036 [[0], [1, 2], [3]] : tensor<1x1x1x2048xf32> into tensor<1x1x2048xf32>
    %1037 = tensor.empty() : tensor<1x1x1000xf32>
    %1038 = linalg.fill ins(%cst_28 : f32) outs(%1037 : tensor<1x1x1000xf32>) -> tensor<1x1x1000xf32>
    %1039 = linalg.batch_matmul ins(%collapsed_246, %cst_36 : tensor<1x1x2048xf32>, tensor<1x2048x1000xf32>) outs(%1038 : tensor<1x1x1000xf32>) -> tensor<1x1x1000xf32>
    %collapsed_247 = tensor.collapse_shape %1039 [[0, 1], [2]] : tensor<1x1x1000xf32> into tensor<1x1000xf32>
    %1040 = tensor.empty() : tensor<1x1000xf32>
    %1041 = linalg.generic {indexing_maps = [#map7, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_247, %cst_35 : tensor<1x1000xf32>, tensor<1x1000xf32>) outs(%1040 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_248: f32, %out: f32):
      %1042 = arith.addf %in, %in_248 : f32
      linalg.yield %1042 : f32
    } -> tensor<1x1000xf32>
    return %1041 : tensor<1x1000xf32>
  }
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant dense<0.000000e+00> : tensor<1xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<4096xf32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<2048xf32>
    %cst_2 = arith.constant dense<0.000000e+00> : tensor<1024xf32>
    %cst_3 = arith.constant dense<0.000000e+00> : tensor<512xf32>
    %cst_4 = arith.constant dense<0.000000e+00> : tensor<12xf32>
    %cst_5 = arith.constant dense<0.0204081628> : tensor<1x7x7x2048xf32>
    %cst_6 = arith.constant -3.40282347E+38 : f32
    %cst_7 = arith.constant 0.000000e+00 : f32
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
    %236 = linalg.generic {indexing_maps = [#map8, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0 : tensor<1x2048x1000xf32>) outs(%235 : tensor<1x1000x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1000x2048xf32>
    %237 = tensor.empty() : tensor<1x1x2048xf32>
    %238 = linalg.fill ins(%cst_7 : f32) outs(%237 : tensor<1x1x2048xf32>) -> tensor<1x1x2048xf32>
    %239 = linalg.batch_matmul ins(%expanded, %236 : tensor<1x1x1000xf32>, tensor<1x1000x2048xf32>) outs(%238 : tensor<1x1x2048xf32>) -> tensor<1x1x2048xf32>
    %240 = tensor.empty() : tensor<1x7x7x2048xf32>
    %collapsed = tensor.collapse_shape %239 [[0, 1], [2]] : tensor<1x1x2048xf32> into tensor<1x2048xf32>
    %241 = linalg.generic {indexing_maps = [#map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed, %cst_5 : tensor<1x2048xf32>, tensor<1x7x7x2048xf32>) outs(%240 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x7x7x2048xf32>
    %242 = tensor.empty() : tensor<1x2048x7x7xf32>
    %243 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241 : tensor<1x7x7x2048xf32>) outs(%242 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2048x7x7xf32>
    %244 = tensor.empty() : tensor<1x2048x7x7xi1>
    %245 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%233, %234 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) outs(%244 : tensor<1x2048x7x7xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x2048x7x7xi1>
    %246 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245, %243, %cst : tensor<1x2048x7x7xi1>, tensor<1x2048x7x7xf32>, tensor<1xf32>) outs(%242 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x2048x7x7xf32>
    %collapsed_8 = tensor.collapse_shape %3 [[0], [1, 2, 3]] : tensor<1x2048x1x1xf32> into tensor<1x2048xf32>
    %247 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_8, %246 : tensor<1x2048xf32>, tensor<1x2048x7x7xf32>) outs(%242 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x2048x7x7xf32>
    %collapsed_9 = tensor.collapse_shape %220 [[0], [1, 2, 3]] : tensor<1x2048x1x1xf32> into tensor<1x2048xf32>
    %248 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_9, %247 : tensor<1x2048xf32>, tensor<1x2048x7x7xf32>) outs(%242 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x2048x7x7xf32>
    %249 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%248 : tensor<1x2048x7x7xf32>) outs(%240 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x2048xf32>
    %250 = tensor.empty() : tensor<512x1x1x2048xf32>
    %251 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<2048x1x1x512xf32>) outs(%250 : tensor<512x1x1x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x1x1x2048xf32>
    %252 = tensor.empty() : tensor<512xf32>
    %collapsed_10 = tensor.collapse_shape %249 [[0, 1, 2], [3]] : tensor<1x7x7x2048xf32> into tensor<49x2048xf32>
    %collapsed_11 = tensor.collapse_shape %251 [[0, 1, 2], [3]] : tensor<512x1x1x2048xf32> into tensor<512x2048xf32>
    %253 = tensor.empty() : tensor<49x512xf32>
    %254 = linalg.fill ins(%cst_7 : f32) outs(%253 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %255 = tensor.empty() : tensor<2048x512xf32>
    %256 = linalg.generic {indexing_maps = [#map12, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_11 : tensor<512x2048xf32>) outs(%255 : tensor<2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512xf32>
    %257 = linalg.matmul ins(%collapsed_10, %256 : tensor<49x2048xf32>, tensor<2048x512xf32>) outs(%254 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %258 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%252, %257 : tensor<512xf32>, tensor<49x512xf32>) outs(%253 : tensor<49x512xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<49x512xf32>
    %expanded_12 = tensor.expand_shape %258 [[0, 1, 2], [3]] : tensor<49x512xf32> into tensor<1x7x7x512xf32>
    %259 = tensor.empty() : tensor<1x512x7x7xf32>
    %260 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_12 : tensor<1x7x7x512xf32>) outs(%259 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %261 = tensor.empty() : tensor<1x512x7x7xi1>
    %262 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%231, %232 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%261 : tensor<1x512x7x7xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x512x7x7xi1>
    %263 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262, %260, %cst : tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<1xf32>) outs(%259 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x7x7xf32>
    %collapsed_13 = tensor.collapse_shape %15 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %264 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_13, %263 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%259 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x7x7xf32>
    %collapsed_14 = tensor.collapse_shape %56 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %265 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_14, %264 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%259 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x7x7xf32>
    %266 = tensor.empty() : tensor<1x7x7x512xf32>
    %267 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%265 : tensor<1x512x7x7xf32>) outs(%266 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %268 = tensor.empty() : tensor<512x3x3x512xf32>
    %269 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5 : tensor<512x3x3x512xf32>) outs(%268 : tensor<512x3x3x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x3x3x512xf32>
    %270 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%268 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %1303 = linalg.index 0 : index
      %1304 = linalg.index 1 : index
      %1305 = arith.subi %c2, %1304 : index
      %1306 = linalg.index 2 : index
      %1307 = linalg.index 3 : index
      %extracted = tensor.extract %269[%1303, %1305, %1306, %1307] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %271 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%268 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %1303 = linalg.index 0 : index
      %1304 = linalg.index 1 : index
      %1305 = linalg.index 2 : index
      %1306 = arith.subi %c2, %1305 : index
      %1307 = linalg.index 3 : index
      %extracted = tensor.extract %270[%1303, %1304, %1306, %1307] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded = tensor.pad %267 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %272 = tensor.empty() : tensor<3x3x512x512xf32>
    %273 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271 : tensor<512x3x3x512xf32>) outs(%272 : tensor<3x3x512x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x512x512xf32>
    %274 = linalg.fill ins(%cst_7 : f32) outs(%266 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %275 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded, %273 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%274 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %276 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%252, %275 : tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%266 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x7x7x512xf32>
    %277 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%276 : tensor<1x7x7x512xf32>) outs(%259 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %278 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%229, %230 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%261 : tensor<1x512x7x7xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x512x7x7xi1>
    %279 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278, %277, %cst : tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<1xf32>) outs(%259 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x7x7xf32>
    %280 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_13, %279 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%259 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x7x7xf32>
    %281 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_14, %280 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%259 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x7x7xf32>
    %282 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281 : tensor<1x512x7x7xf32>) outs(%266 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %283 = tensor.empty() : tensor<2048x1x1x512xf32>
    %284 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1 : tensor<512x1x1x2048xf32>) outs(%283 : tensor<2048x1x1x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x1x1x512xf32>
    %285 = tensor.empty() : tensor<2048xf32>
    %collapsed_15 = tensor.collapse_shape %282 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %collapsed_16 = tensor.collapse_shape %284 [[0, 1, 2], [3]] : tensor<2048x1x1x512xf32> into tensor<2048x512xf32>
    %286 = tensor.empty() : tensor<49x2048xf32>
    %287 = linalg.fill ins(%cst_7 : f32) outs(%286 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %288 = tensor.empty() : tensor<512x2048xf32>
    %289 = linalg.generic {indexing_maps = [#map12, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_16 : tensor<2048x512xf32>) outs(%288 : tensor<512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048xf32>
    %290 = linalg.matmul ins(%collapsed_15, %289 : tensor<49x512xf32>, tensor<512x2048xf32>) outs(%287 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %291 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%285, %290 : tensor<2048xf32>, tensor<49x2048xf32>) outs(%286 : tensor<49x2048xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<49x2048xf32>
    %expanded_17 = tensor.expand_shape %291 [[0, 1, 2], [3]] : tensor<49x2048xf32> into tensor<1x7x7x2048xf32>
    %292 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_17 : tensor<1x7x7x2048xf32>) outs(%242 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2048x7x7xf32>
    %293 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%246, %292 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) outs(%242 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x2048x7x7xf32>
    %294 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%227, %228 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) outs(%244 : tensor<1x2048x7x7xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x2048x7x7xi1>
    %295 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294, %293, %cst : tensor<1x2048x7x7xi1>, tensor<1x2048x7x7xf32>, tensor<1xf32>) outs(%242 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x2048x7x7xf32>
    %296 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_8, %295 : tensor<1x2048xf32>, tensor<1x2048x7x7xf32>) outs(%242 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x2048x7x7xf32>
    %297 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_9, %296 : tensor<1x2048xf32>, tensor<1x2048x7x7xf32>) outs(%242 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x2048x7x7xf32>
    %298 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%297 : tensor<1x2048x7x7xf32>) outs(%240 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x2048xf32>
    %collapsed_18 = tensor.collapse_shape %298 [[0, 1, 2], [3]] : tensor<1x7x7x2048xf32> into tensor<49x2048xf32>
    %299 = linalg.matmul ins(%collapsed_18, %256 : tensor<49x2048xf32>, tensor<2048x512xf32>) outs(%254 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %300 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%252, %299 : tensor<512xf32>, tensor<49x512xf32>) outs(%253 : tensor<49x512xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<49x512xf32>
    %expanded_19 = tensor.expand_shape %300 [[0, 1, 2], [3]] : tensor<49x512xf32> into tensor<1x7x7x512xf32>
    %301 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_19 : tensor<1x7x7x512xf32>) outs(%259 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %302 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225, %226 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%261 : tensor<1x512x7x7xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x512x7x7xi1>
    %303 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%302, %301, %cst : tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<1xf32>) outs(%259 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x7x7xf32>
    %304 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_13, %303 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%259 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x7x7xf32>
    %305 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_14, %304 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%259 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x7x7xf32>
    %306 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%305 : tensor<1x512x7x7xf32>) outs(%266 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_20 = tensor.pad %306 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %307 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_20, %273 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%274 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %308 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%252, %307 : tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%266 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x7x7x512xf32>
    %309 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308 : tensor<1x7x7x512xf32>) outs(%259 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %310 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%223, %224 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%261 : tensor<1x512x7x7xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x512x7x7xi1>
    %311 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%310, %309, %cst : tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<1xf32>) outs(%259 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x7x7xf32>
    %312 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_13, %311 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%259 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x7x7xf32>
    %313 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_14, %312 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%259 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x7x7xf32>
    %314 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313 : tensor<1x512x7x7xf32>) outs(%266 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %collapsed_21 = tensor.collapse_shape %314 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %315 = linalg.matmul ins(%collapsed_21, %289 : tensor<49x512xf32>, tensor<512x2048xf32>) outs(%287 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %316 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%285, %315 : tensor<2048xf32>, tensor<49x2048xf32>) outs(%286 : tensor<49x2048xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<49x2048xf32>
    %expanded_22 = tensor.expand_shape %316 [[0, 1, 2], [3]] : tensor<49x2048xf32> into tensor<1x7x7x2048xf32>
    %317 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_22 : tensor<1x7x7x2048xf32>) outs(%242 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2048x7x7xf32>
    %318 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%295, %317 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) outs(%242 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x2048x7x7xf32>
    %319 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%221, %222 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) outs(%244 : tensor<1x2048x7x7xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x2048x7x7xi1>
    %320 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%319, %318, %cst : tensor<1x2048x7x7xi1>, tensor<1x2048x7x7xf32>, tensor<1xf32>) outs(%242 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x2048x7x7xf32>
    %321 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_8, %320 : tensor<1x2048xf32>, tensor<1x2048x7x7xf32>) outs(%242 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x2048x7x7xf32>
    %322 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_9, %321 : tensor<1x2048xf32>, tensor<1x2048x7x7xf32>) outs(%242 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x2048x7x7xf32>
    %323 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%322 : tensor<1x2048x7x7xf32>) outs(%240 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x2048xf32>
    %324 = tensor.empty() : tensor<1024x1x1x2048xf32>
    %325 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2 : tensor<2048x1x1x1024xf32>) outs(%324 : tensor<1024x1x1x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x1x1x2048xf32>
    %326 = tensor.empty() : tensor<1024xf32>
    %padded_23 = tensor.pad %325 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1024x1x1x2048xf32> to tensor<1024x2x2x2048xf32>
    %expanded_24 = tensor.expand_shape %padded_23 [[0, 1], [2, 3], [4], [5]] : tensor<1024x2x2x2048xf32> into tensor<1024x1x2x1x2x2048xf32>
    %327 = tensor.empty() : tensor<2x2x1024x1x1x2048xf32>
    %328 = linalg.generic {indexing_maps = [#map14, #map15], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_24 : tensor<1024x1x2x1x2x2048xf32>) outs(%327 : tensor<2x2x1024x1x1x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x1024x1x1x2048xf32>
    %collapsed_25 = tensor.collapse_shape %323 [[0, 1, 2], [3]] : tensor<1x7x7x2048xf32> into tensor<49x2048xf32>
    %collapsed_26 = tensor.collapse_shape %328 [[0, 1, 2, 3, 4], [5]] : tensor<2x2x1024x1x1x2048xf32> into tensor<4096x2048xf32>
    %329 = tensor.empty() : tensor<49x4096xf32>
    %330 = linalg.fill ins(%cst_7 : f32) outs(%329 : tensor<49x4096xf32>) -> tensor<49x4096xf32>
    %331 = tensor.empty() : tensor<2048x4096xf32>
    %332 = linalg.generic {indexing_maps = [#map12, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_26 : tensor<4096x2048xf32>) outs(%331 : tensor<2048x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x4096xf32>
    %333 = linalg.matmul ins(%collapsed_25, %332 : tensor<49x2048xf32>, tensor<2048x4096xf32>) outs(%330 : tensor<49x4096xf32>) -> tensor<49x4096xf32>
    %334 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_0, %333 : tensor<4096xf32>, tensor<49x4096xf32>) outs(%329 : tensor<49x4096xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<49x4096xf32>
    %expanded_27 = tensor.expand_shape %334 [[0, 1, 2], [3, 4, 5]] : tensor<49x4096xf32> into tensor<1x7x7x2x2x1024xf32>
    %335 = tensor.empty() : tensor<1x7x2x7x2x1024xf32>
    %336 = linalg.generic {indexing_maps = [#map16, #map15], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_27 : tensor<1x7x7x2x2x1024xf32>) outs(%335 : tensor<1x7x2x7x2x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x2x7x2x1024xf32>
    %collapsed_28 = tensor.collapse_shape %336 [[0], [1, 2], [3, 4], [5]] : tensor<1x7x2x7x2x1024xf32> into tensor<1x14x14x1024xf32>
    %337 = tensor.empty() : tensor<1x14x14x1024xf32>
    %expanded_29 = tensor.expand_shape %326 [[0, 1]] : tensor<1024xf32> into tensor<1x1024xf32>
    %338 = linalg.generic {indexing_maps = [#map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_28, %expanded_29 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>) outs(%337 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x14x14x1024xf32>
    %339 = linalg.matmul ins(%collapsed_25, %256 : tensor<49x2048xf32>, tensor<2048x512xf32>) outs(%254 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %340 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%252, %339 : tensor<512xf32>, tensor<49x512xf32>) outs(%253 : tensor<49x512xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<49x512xf32>
    %expanded_30 = tensor.expand_shape %340 [[0, 1, 2], [3]] : tensor<49x512xf32> into tensor<1x7x7x512xf32>
    %341 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_30 : tensor<1x7x7x512xf32>) outs(%259 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %342 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%218, %219 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%261 : tensor<1x512x7x7xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x512x7x7xi1>
    %343 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%342, %341, %cst : tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<1xf32>) outs(%259 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x7x7xf32>
    %344 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_13, %343 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%259 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x7x7xf32>
    %345 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_14, %344 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%259 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x7x7xf32>
    %346 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%345 : tensor<1x512x7x7xf32>) outs(%266 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_31 = tensor.pad %269 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<512x3x3x512xf32> to tensor<512x4x4x512xf32>
    %expanded_32 = tensor.expand_shape %padded_31 [[0], [1, 2], [3, 4], [5]] : tensor<512x4x4x512xf32> into tensor<512x2x2x2x2x512xf32>
    %347 = tensor.empty() : tensor<2x2x512x2x2x512xf32>
    %348 = linalg.generic {indexing_maps = [#map14, #map15], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_32 : tensor<512x2x2x2x2x512xf32>) outs(%347 : tensor<2x2x512x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x512x2x2x512xf32>
    %collapsed_33 = tensor.collapse_shape %348 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x512x2x2x512xf32> into tensor<2048x2x2x512xf32>
    %349 = tensor.empty() : tensor<2048x2x2x512xf32>
    %350 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%349 : tensor<2048x2x2x512xf32>) {
    ^bb0(%out: f32):
      %1303 = linalg.index 0 : index
      %1304 = linalg.index 1 : index
      %1305 = arith.subi %c1, %1304 : index
      %1306 = linalg.index 2 : index
      %1307 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_33[%1303, %1305, %1306, %1307] : tensor<2048x2x2x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<2048x2x2x512xf32>
    %351 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%349 : tensor<2048x2x2x512xf32>) {
    ^bb0(%out: f32):
      %1303 = linalg.index 0 : index
      %1304 = linalg.index 1 : index
      %1305 = linalg.index 2 : index
      %1306 = arith.subi %c1, %1305 : index
      %1307 = linalg.index 3 : index
      %extracted = tensor.extract %350[%1303, %1304, %1306, %1307] : tensor<2048x2x2x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<2048x2x2x512xf32>
    %padded_34 = tensor.pad %346 low[%c0, %c1, %c1, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %352 = tensor.empty() : tensor<2x2x512x2048xf32>
    %353 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351 : tensor<2048x2x2x512xf32>) outs(%352 : tensor<2x2x512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x512x2048xf32>
    %354 = tensor.empty() : tensor<1x8x8x2048xf32>
    %355 = linalg.fill ins(%cst_7 : f32) outs(%354 : tensor<1x8x8x2048xf32>) -> tensor<1x8x8x2048xf32>
    %356 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_34, %353 : tensor<1x9x9x512xf32>, tensor<2x2x512x2048xf32>) outs(%355 : tensor<1x8x8x2048xf32>) -> tensor<1x8x8x2048xf32>
    %357 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_1, %356 : tensor<2048xf32>, tensor<1x8x8x2048xf32>) outs(%354 : tensor<1x8x8x2048xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x8x8x2048xf32>
    %expanded_35 = tensor.expand_shape %357 [[0], [1], [2], [3, 4, 5]] : tensor<1x8x8x2048xf32> into tensor<1x8x8x2x2x512xf32>
    %358 = tensor.empty() : tensor<1x8x2x8x2x512xf32>
    %359 = linalg.generic {indexing_maps = [#map16, #map15], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_35 : tensor<1x8x8x2x2x512xf32>) outs(%358 : tensor<1x8x2x8x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x2x8x2x512xf32>
    %collapsed_36 = tensor.collapse_shape %359 [[0], [1, 2], [3, 4], [5]] : tensor<1x8x2x8x2x512xf32> into tensor<1x16x16x512xf32>
    %extracted_slice = tensor.extract_slice %collapsed_36[0, 1, 1, 0] [1, 14, 14, 512] [1, 1, 1, 1] : tensor<1x16x16x512xf32> to tensor<1x14x14x512xf32>
    %360 = tensor.empty() : tensor<1x14x14x512xf32>
    %expanded_37 = tensor.expand_shape %252 [[0, 1]] : tensor<512xf32> into tensor<1x512xf32>
    %361 = linalg.generic {indexing_maps = [#map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%extracted_slice, %expanded_37 : tensor<1x14x14x512xf32>, tensor<1x512xf32>) outs(%360 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x14x14x512xf32>
    %362 = tensor.empty() : tensor<1x512x14x14xf32>
    %363 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%361 : tensor<1x14x14x512xf32>) outs(%362 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x14x14xf32>
    %364 = tensor.empty() : tensor<1x512x14x14xi1>
    %365 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%216, %217 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) outs(%364 : tensor<1x512x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x512x14x14xi1>
    %366 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%365, %363, %cst : tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<1xf32>) outs(%362 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x14x14xf32>
    %367 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_13, %366 : tensor<1x512xf32>, tensor<1x512x14x14xf32>) outs(%362 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x14x14xf32>
    %368 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_14, %367 : tensor<1x512xf32>, tensor<1x512x14x14xf32>) outs(%362 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x14x14xf32>
    %369 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%368 : tensor<1x512x14x14xf32>) outs(%360 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x512xf32>
    %370 = tensor.empty() : tensor<1024x1x1x512xf32>
    %371 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6 : tensor<512x1x1x1024xf32>) outs(%370 : tensor<1024x1x1x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x1x1x512xf32>
    %collapsed_38 = tensor.collapse_shape %369 [[0, 1, 2], [3]] : tensor<1x14x14x512xf32> into tensor<196x512xf32>
    %collapsed_39 = tensor.collapse_shape %371 [[0, 1, 2], [3]] : tensor<1024x1x1x512xf32> into tensor<1024x512xf32>
    %372 = tensor.empty() : tensor<196x1024xf32>
    %373 = linalg.fill ins(%cst_7 : f32) outs(%372 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %374 = tensor.empty() : tensor<512x1024xf32>
    %375 = linalg.generic {indexing_maps = [#map12, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_39 : tensor<1024x512xf32>) outs(%374 : tensor<512x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x1024xf32>
    %376 = linalg.matmul ins(%collapsed_38, %375 : tensor<196x512xf32>, tensor<512x1024xf32>) outs(%373 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %377 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%326, %376 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%372 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x1024xf32>
    %expanded_40 = tensor.expand_shape %377 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %378 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338, %expanded_40 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%337 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x14x14x1024xf32>
    %379 = tensor.empty() : tensor<1x1024x14x14xf32>
    %380 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%378 : tensor<1x14x14x1024xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %381 = tensor.empty() : tensor<1x1024x14x14xi1>
    %382 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214, %215 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%381 : tensor<1x1024x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x1024x14x14xi1>
    %383 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%382, %380, %cst : tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<1xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %collapsed_41 = tensor.collapse_shape %9 [[0], [1, 2, 3]] : tensor<1x1024x1x1xf32> into tensor<1x1024xf32>
    %384 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_41, %383 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %collapsed_42 = tensor.collapse_shape %81 [[0], [1, 2, 3]] : tensor<1x1024x1x1xf32> into tensor<1x1024xf32>
    %385 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_42, %384 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %386 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%385 : tensor<1x1024x14x14xf32>) outs(%337 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %387 = tensor.empty() : tensor<256x1x1x1024xf32>
    %388 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<1024x1x1x256xf32>) outs(%387 : tensor<256x1x1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1x1x1024xf32>
    %389 = tensor.empty() : tensor<256xf32>
    %collapsed_43 = tensor.collapse_shape %386 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %collapsed_44 = tensor.collapse_shape %388 [[0, 1, 2], [3]] : tensor<256x1x1x1024xf32> into tensor<256x1024xf32>
    %390 = tensor.empty() : tensor<196x256xf32>
    %391 = linalg.fill ins(%cst_7 : f32) outs(%390 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %392 = tensor.empty() : tensor<1024x256xf32>
    %393 = linalg.generic {indexing_maps = [#map12, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_44 : tensor<256x1024xf32>) outs(%392 : tensor<1024x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x256xf32>
    %394 = linalg.matmul ins(%collapsed_43, %393 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%391 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %395 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%389, %394 : tensor<256xf32>, tensor<196x256xf32>) outs(%390 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x256xf32>
    %expanded_45 = tensor.expand_shape %395 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %396 = tensor.empty() : tensor<1x256x14x14xf32>
    %397 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_45 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %398 = tensor.empty() : tensor<1x256x14x14xi1>
    %399 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212, %213 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %400 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%399, %397, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %collapsed_46 = tensor.collapse_shape %21 [[0], [1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<1x256xf32>
    %401 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %400 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %collapsed_47 = tensor.collapse_shape %36 [[0], [1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<1x256xf32>
    %402 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %401 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %403 = tensor.empty() : tensor<1x14x14x256xf32>
    %404 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%402 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %405 = tensor.empty() : tensor<256x3x3x256xf32>
    %406 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11 : tensor<256x3x3x256xf32>) outs(%405 : tensor<256x3x3x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x3x3x256xf32>
    %407 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%405 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %1303 = linalg.index 0 : index
      %1304 = linalg.index 1 : index
      %1305 = arith.subi %c2, %1304 : index
      %1306 = linalg.index 2 : index
      %1307 = linalg.index 3 : index
      %extracted = tensor.extract %406[%1303, %1305, %1306, %1307] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %408 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%405 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %1303 = linalg.index 0 : index
      %1304 = linalg.index 1 : index
      %1305 = linalg.index 2 : index
      %1306 = arith.subi %c2, %1305 : index
      %1307 = linalg.index 3 : index
      %extracted = tensor.extract %407[%1303, %1304, %1306, %1307] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %padded_48 = tensor.pad %404 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %409 = tensor.empty() : tensor<3x3x256x256xf32>
    %410 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%408 : tensor<256x3x3x256xf32>) outs(%409 : tensor<3x3x256x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x256x256xf32>
    %411 = linalg.fill ins(%cst_7 : f32) outs(%403 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %412 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_48, %410 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%411 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %413 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %412 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x14x14x256xf32>
    %414 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%413 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %415 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210, %211 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %416 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%415, %414, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %417 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %416 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %418 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %417 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %419 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%418 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %420 = tensor.empty() : tensor<1024x1x1x256xf32>
    %421 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7 : tensor<256x1x1x1024xf32>) outs(%420 : tensor<1024x1x1x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x1x1x256xf32>
    %collapsed_49 = tensor.collapse_shape %419 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %collapsed_50 = tensor.collapse_shape %421 [[0, 1, 2], [3]] : tensor<1024x1x1x256xf32> into tensor<1024x256xf32>
    %422 = tensor.empty() : tensor<256x1024xf32>
    %423 = linalg.generic {indexing_maps = [#map12, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_50 : tensor<1024x256xf32>) outs(%422 : tensor<256x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1024xf32>
    %424 = linalg.matmul ins(%collapsed_49, %423 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%373 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %425 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%326, %424 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%372 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x1024xf32>
    %expanded_51 = tensor.expand_shape %425 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %426 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_51 : tensor<1x14x14x1024xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %427 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%383, %426 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %428 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208, %209 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%381 : tensor<1x1024x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x1024x14x14xi1>
    %429 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%428, %427, %cst : tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<1xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %430 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_41, %429 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %431 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_42, %430 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %432 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%431 : tensor<1x1024x14x14xf32>) outs(%337 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_52 = tensor.collapse_shape %432 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %433 = linalg.matmul ins(%collapsed_52, %393 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%391 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %434 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%389, %433 : tensor<256xf32>, tensor<196x256xf32>) outs(%390 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x256xf32>
    %expanded_53 = tensor.expand_shape %434 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %435 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_53 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %436 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206, %207 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %437 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%436, %435, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %438 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %437 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %439 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %438 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %440 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%439 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_54 = tensor.pad %440 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %441 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_54, %410 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%411 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %442 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %441 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x14x14x256xf32>
    %443 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%442 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %444 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204, %205 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %445 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%444, %443, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %446 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %445 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %447 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %446 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %448 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%447 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_55 = tensor.collapse_shape %448 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %449 = linalg.matmul ins(%collapsed_55, %423 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%373 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %450 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%326, %449 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%372 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x1024xf32>
    %expanded_56 = tensor.expand_shape %450 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %451 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_56 : tensor<1x14x14x1024xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %452 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%429, %451 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %453 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202, %203 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%381 : tensor<1x1024x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x1024x14x14xi1>
    %454 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%453, %452, %cst : tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<1xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %455 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_41, %454 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %456 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_42, %455 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %457 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%456 : tensor<1x1024x14x14xf32>) outs(%337 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_57 = tensor.collapse_shape %457 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %458 = linalg.matmul ins(%collapsed_57, %393 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%391 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %459 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%389, %458 : tensor<256xf32>, tensor<196x256xf32>) outs(%390 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x256xf32>
    %expanded_58 = tensor.expand_shape %459 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %460 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_58 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %461 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200, %201 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %462 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%461, %460, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %463 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %462 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %464 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %463 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %465 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%464 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_59 = tensor.pad %465 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %466 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_59, %410 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%411 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %467 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %466 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x14x14x256xf32>
    %468 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%467 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %469 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198, %199 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %470 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%469, %468, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %471 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %470 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %472 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %471 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %473 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%472 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_60 = tensor.collapse_shape %473 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %474 = linalg.matmul ins(%collapsed_60, %423 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%373 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %475 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%326, %474 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%372 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x1024xf32>
    %expanded_61 = tensor.expand_shape %475 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %476 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_61 : tensor<1x14x14x1024xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %477 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%454, %476 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %478 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196, %197 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%381 : tensor<1x1024x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x1024x14x14xi1>
    %479 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%478, %477, %cst : tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<1xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %480 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_41, %479 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %481 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_42, %480 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %482 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%481 : tensor<1x1024x14x14xf32>) outs(%337 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_62 = tensor.collapse_shape %482 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %483 = linalg.matmul ins(%collapsed_62, %393 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%391 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %484 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%389, %483 : tensor<256xf32>, tensor<196x256xf32>) outs(%390 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x256xf32>
    %expanded_63 = tensor.expand_shape %484 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %485 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_63 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %486 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %195 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %487 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%486, %485, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %488 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %487 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %489 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %488 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %490 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%489 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_64 = tensor.pad %490 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %491 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_64, %410 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%411 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %492 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %491 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x14x14x256xf32>
    %493 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%492 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %494 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192, %193 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %495 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%494, %493, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %496 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %495 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %497 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %496 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %498 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%497 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_65 = tensor.collapse_shape %498 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %499 = linalg.matmul ins(%collapsed_65, %423 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%373 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %500 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%326, %499 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%372 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x1024xf32>
    %expanded_66 = tensor.expand_shape %500 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %501 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_66 : tensor<1x14x14x1024xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %502 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%479, %501 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %503 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190, %191 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%381 : tensor<1x1024x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x1024x14x14xi1>
    %504 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%503, %502, %cst : tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<1xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %505 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_41, %504 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %506 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_42, %505 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %507 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%506 : tensor<1x1024x14x14xf32>) outs(%337 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_67 = tensor.collapse_shape %507 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %508 = linalg.matmul ins(%collapsed_67, %393 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%391 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %509 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%389, %508 : tensor<256xf32>, tensor<196x256xf32>) outs(%390 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x256xf32>
    %expanded_68 = tensor.expand_shape %509 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %510 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_68 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %511 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188, %189 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %512 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%511, %510, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %513 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %512 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %514 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %513 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %515 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%514 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_69 = tensor.pad %515 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %516 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_69, %410 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%411 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %517 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %516 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x14x14x256xf32>
    %518 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%517 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %519 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186, %187 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %520 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%519, %518, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %521 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %520 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %522 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %521 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %523 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%522 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_70 = tensor.collapse_shape %523 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %524 = linalg.matmul ins(%collapsed_70, %423 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%373 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %525 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%326, %524 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%372 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x1024xf32>
    %expanded_71 = tensor.expand_shape %525 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %526 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_71 : tensor<1x14x14x1024xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %527 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%504, %526 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %528 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184, %185 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%381 : tensor<1x1024x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x1024x14x14xi1>
    %529 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%528, %527, %cst : tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<1xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %530 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_41, %529 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %531 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_42, %530 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %532 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%531 : tensor<1x1024x14x14xf32>) outs(%337 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_72 = tensor.collapse_shape %532 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %533 = linalg.matmul ins(%collapsed_72, %393 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%391 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %534 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%389, %533 : tensor<256xf32>, tensor<196x256xf32>) outs(%390 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x256xf32>
    %expanded_73 = tensor.expand_shape %534 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %535 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_73 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %536 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%182, %183 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %537 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%536, %535, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %538 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %537 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %539 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %538 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %540 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%539 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_74 = tensor.pad %540 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %541 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_74, %410 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%411 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %542 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %541 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x14x14x256xf32>
    %543 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%542 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %544 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%180, %181 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %545 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%544, %543, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %546 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %545 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %547 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %546 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %548 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%547 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_75 = tensor.collapse_shape %548 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %549 = linalg.matmul ins(%collapsed_75, %423 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%373 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %550 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%326, %549 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%372 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x1024xf32>
    %expanded_76 = tensor.expand_shape %550 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %551 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_76 : tensor<1x14x14x1024xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %552 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%529, %551 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %553 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178, %179 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%381 : tensor<1x1024x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x1024x14x14xi1>
    %554 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%553, %552, %cst : tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<1xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %555 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_41, %554 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %556 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_42, %555 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %557 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%556 : tensor<1x1024x14x14xf32>) outs(%337 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_77 = tensor.collapse_shape %557 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %558 = linalg.matmul ins(%collapsed_77, %393 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%391 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %559 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%389, %558 : tensor<256xf32>, tensor<196x256xf32>) outs(%390 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x256xf32>
    %expanded_78 = tensor.expand_shape %559 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %560 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_78 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %561 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176, %177 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %562 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%561, %560, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %563 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %562 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %564 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %563 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %565 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%564 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_79 = tensor.pad %565 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %566 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_79, %410 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%411 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %567 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %566 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x14x14x256xf32>
    %568 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%567 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %569 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174, %175 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %570 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%569, %568, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %571 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %570 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %572 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %571 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %573 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%572 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_80 = tensor.collapse_shape %573 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %574 = linalg.matmul ins(%collapsed_80, %423 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%373 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %575 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%326, %574 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%372 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x1024xf32>
    %expanded_81 = tensor.expand_shape %575 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %576 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_81 : tensor<1x14x14x1024xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %577 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%554, %576 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %578 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172, %173 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%381 : tensor<1x1024x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x1024x14x14xi1>
    %579 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%578, %577, %cst : tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<1xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %580 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_41, %579 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %581 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_42, %580 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %582 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%581 : tensor<1x1024x14x14xf32>) outs(%337 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_82 = tensor.collapse_shape %582 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %583 = linalg.matmul ins(%collapsed_82, %393 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%391 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %584 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%389, %583 : tensor<256xf32>, tensor<196x256xf32>) outs(%390 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x256xf32>
    %expanded_83 = tensor.expand_shape %584 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %585 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_83 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %586 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170, %171 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %587 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%586, %585, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %588 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %587 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %589 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %588 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %590 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%589 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_84 = tensor.pad %590 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %591 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_84, %410 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%411 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %592 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %591 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x14x14x256xf32>
    %593 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%592 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %594 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%168, %169 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %595 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%594, %593, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %596 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %595 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %597 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %596 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %598 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%597 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_85 = tensor.collapse_shape %598 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %599 = linalg.matmul ins(%collapsed_85, %423 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%373 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %600 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%326, %599 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%372 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x1024xf32>
    %expanded_86 = tensor.expand_shape %600 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %601 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_86 : tensor<1x14x14x1024xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %602 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%579, %601 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %603 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166, %167 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%381 : tensor<1x1024x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x1024x14x14xi1>
    %604 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%603, %602, %cst : tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<1xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %605 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_41, %604 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %606 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_42, %605 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %607 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%606 : tensor<1x1024x14x14xf32>) outs(%337 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_87 = tensor.collapse_shape %607 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %608 = linalg.matmul ins(%collapsed_87, %393 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%391 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %609 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%389, %608 : tensor<256xf32>, tensor<196x256xf32>) outs(%390 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x256xf32>
    %expanded_88 = tensor.expand_shape %609 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %610 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_88 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %611 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164, %165 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %612 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%611, %610, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %613 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %612 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %614 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %613 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %615 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%614 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_89 = tensor.pad %615 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %616 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_89, %410 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%411 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %617 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %616 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x14x14x256xf32>
    %618 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%617 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %619 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162, %163 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %620 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%619, %618, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %621 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %620 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %622 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %621 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %623 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%622 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_90 = tensor.collapse_shape %623 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %624 = linalg.matmul ins(%collapsed_90, %423 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%373 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %625 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%326, %624 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%372 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x1024xf32>
    %expanded_91 = tensor.expand_shape %625 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %626 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_91 : tensor<1x14x14x1024xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %627 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%604, %626 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %628 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160, %161 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%381 : tensor<1x1024x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x1024x14x14xi1>
    %629 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%628, %627, %cst : tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<1xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %630 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_41, %629 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %631 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_42, %630 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %632 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%631 : tensor<1x1024x14x14xf32>) outs(%337 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_92 = tensor.collapse_shape %632 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %633 = linalg.matmul ins(%collapsed_92, %393 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%391 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %634 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%389, %633 : tensor<256xf32>, tensor<196x256xf32>) outs(%390 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x256xf32>
    %expanded_93 = tensor.expand_shape %634 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %635 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_93 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %636 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158, %159 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %637 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%636, %635, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %638 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %637 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %639 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %638 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %640 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%639 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_94 = tensor.pad %640 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %641 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_94, %410 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%411 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %642 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %641 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x14x14x256xf32>
    %643 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%642 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %644 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156, %157 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %645 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%644, %643, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %646 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %645 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %647 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %646 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %648 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%647 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_95 = tensor.collapse_shape %648 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %649 = linalg.matmul ins(%collapsed_95, %423 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%373 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %650 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%326, %649 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%372 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x1024xf32>
    %expanded_96 = tensor.expand_shape %650 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %651 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_96 : tensor<1x14x14x1024xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %652 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%629, %651 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %653 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %155 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%381 : tensor<1x1024x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x1024x14x14xi1>
    %654 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%653, %652, %cst : tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<1xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %655 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_41, %654 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %656 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_42, %655 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %657 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%656 : tensor<1x1024x14x14xf32>) outs(%337 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_97 = tensor.collapse_shape %657 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %658 = linalg.matmul ins(%collapsed_97, %393 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%391 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %659 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%389, %658 : tensor<256xf32>, tensor<196x256xf32>) outs(%390 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x256xf32>
    %expanded_98 = tensor.expand_shape %659 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %660 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_98 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %661 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152, %153 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %662 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%661, %660, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %663 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %662 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %664 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %663 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %665 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%664 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_99 = tensor.pad %665 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %666 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_99, %410 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%411 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %667 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %666 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x14x14x256xf32>
    %668 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%667 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %669 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%150, %151 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %670 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%669, %668, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %671 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %670 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %672 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %671 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %673 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%672 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_100 = tensor.collapse_shape %673 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %674 = linalg.matmul ins(%collapsed_100, %423 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%373 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %675 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%326, %674 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%372 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x1024xf32>
    %expanded_101 = tensor.expand_shape %675 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %676 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_101 : tensor<1x14x14x1024xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %677 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%654, %676 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %678 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148, %149 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%381 : tensor<1x1024x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x1024x14x14xi1>
    %679 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%678, %677, %cst : tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<1xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %680 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_41, %679 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %681 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_42, %680 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %682 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%681 : tensor<1x1024x14x14xf32>) outs(%337 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_102 = tensor.collapse_shape %682 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %683 = linalg.matmul ins(%collapsed_102, %393 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%391 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %684 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%389, %683 : tensor<256xf32>, tensor<196x256xf32>) outs(%390 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x256xf32>
    %expanded_103 = tensor.expand_shape %684 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %685 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_103 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %686 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146, %147 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %687 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%686, %685, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %688 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %687 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %689 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %688 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %690 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%689 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_104 = tensor.pad %690 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %691 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_104, %410 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%411 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %692 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %691 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x14x14x256xf32>
    %693 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%692 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %694 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144, %145 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %695 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%694, %693, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %696 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %695 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %697 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %696 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %698 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%697 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_105 = tensor.collapse_shape %698 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %699 = linalg.matmul ins(%collapsed_105, %423 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%373 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %700 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%326, %699 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%372 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x1024xf32>
    %expanded_106 = tensor.expand_shape %700 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %701 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_106 : tensor<1x14x14x1024xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %702 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%679, %701 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %703 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142, %143 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%381 : tensor<1x1024x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x1024x14x14xi1>
    %704 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%703, %702, %cst : tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<1xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %705 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_41, %704 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %706 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_42, %705 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %707 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%706 : tensor<1x1024x14x14xf32>) outs(%337 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_107 = tensor.collapse_shape %707 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %708 = linalg.matmul ins(%collapsed_107, %393 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%391 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %709 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%389, %708 : tensor<256xf32>, tensor<196x256xf32>) outs(%390 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x256xf32>
    %expanded_108 = tensor.expand_shape %709 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %710 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_108 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %711 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%140, %141 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %712 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%711, %710, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %713 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %712 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %714 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %713 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %715 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%714 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_109 = tensor.pad %715 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %716 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_109, %410 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%411 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %717 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %716 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x14x14x256xf32>
    %718 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%717 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %719 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138, %139 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %720 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%719, %718, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %721 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %720 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %722 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %721 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %723 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%722 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_110 = tensor.collapse_shape %723 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %724 = linalg.matmul ins(%collapsed_110, %423 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%373 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %725 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%326, %724 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%372 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x1024xf32>
    %expanded_111 = tensor.expand_shape %725 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %726 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_111 : tensor<1x14x14x1024xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %727 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%704, %726 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %728 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%136, %137 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%381 : tensor<1x1024x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x1024x14x14xi1>
    %729 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%728, %727, %cst : tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<1xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %730 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_41, %729 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %731 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_42, %730 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %732 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%731 : tensor<1x1024x14x14xf32>) outs(%337 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_112 = tensor.collapse_shape %732 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %733 = linalg.matmul ins(%collapsed_112, %393 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%391 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %734 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%389, %733 : tensor<256xf32>, tensor<196x256xf32>) outs(%390 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x256xf32>
    %expanded_113 = tensor.expand_shape %734 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %735 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_113 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %736 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134, %135 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %737 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%736, %735, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %738 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %737 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %739 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %738 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %740 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%739 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_114 = tensor.pad %740 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %741 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_114, %410 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%411 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %742 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %741 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x14x14x256xf32>
    %743 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%742 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %744 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132, %133 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %745 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%744, %743, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %746 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %745 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %747 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %746 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %748 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%747 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_115 = tensor.collapse_shape %748 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %749 = linalg.matmul ins(%collapsed_115, %423 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%373 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %750 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%326, %749 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%372 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x1024xf32>
    %expanded_116 = tensor.expand_shape %750 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %751 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_116 : tensor<1x14x14x1024xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %752 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%729, %751 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %753 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130, %131 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%381 : tensor<1x1024x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x1024x14x14xi1>
    %754 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%753, %752, %cst : tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<1xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %755 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_41, %754 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %756 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_42, %755 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %757 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%756 : tensor<1x1024x14x14xf32>) outs(%337 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_117 = tensor.collapse_shape %757 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %758 = linalg.matmul ins(%collapsed_117, %393 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%391 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %759 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%389, %758 : tensor<256xf32>, tensor<196x256xf32>) outs(%390 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x256xf32>
    %expanded_118 = tensor.expand_shape %759 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %760 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_118 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %761 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128, %129 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %762 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%761, %760, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %763 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %762 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %764 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %763 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %765 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%764 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_119 = tensor.pad %765 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %766 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_119, %410 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%411 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %767 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %766 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x14x14x256xf32>
    %768 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%767 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %769 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126, %127 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %770 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%769, %768, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %771 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %770 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %772 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %771 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %773 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%772 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_120 = tensor.collapse_shape %773 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %774 = linalg.matmul ins(%collapsed_120, %423 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%373 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %775 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%326, %774 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%372 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x1024xf32>
    %expanded_121 = tensor.expand_shape %775 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %776 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_121 : tensor<1x14x14x1024xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %777 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%754, %776 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %778 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %125 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%381 : tensor<1x1024x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x1024x14x14xi1>
    %779 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%778, %777, %cst : tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<1xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %780 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_41, %779 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %781 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_42, %780 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %782 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%781 : tensor<1x1024x14x14xf32>) outs(%337 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_122 = tensor.collapse_shape %782 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %783 = linalg.matmul ins(%collapsed_122, %393 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%391 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %784 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%389, %783 : tensor<256xf32>, tensor<196x256xf32>) outs(%390 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x256xf32>
    %expanded_123 = tensor.expand_shape %784 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %785 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_123 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %786 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122, %123 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %787 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%786, %785, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %788 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %787 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %789 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %788 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %790 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%789 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_124 = tensor.pad %790 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %791 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_124, %410 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%411 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %792 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %791 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x14x14x256xf32>
    %793 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%792 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %794 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%120, %121 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %795 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%794, %793, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %796 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %795 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %797 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %796 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %798 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%797 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_125 = tensor.collapse_shape %798 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %799 = linalg.matmul ins(%collapsed_125, %423 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%373 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %800 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%326, %799 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%372 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x1024xf32>
    %expanded_126 = tensor.expand_shape %800 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %801 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_126 : tensor<1x14x14x1024xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %802 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%779, %801 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %803 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118, %119 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%381 : tensor<1x1024x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x1024x14x14xi1>
    %804 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%803, %802, %cst : tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<1xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %805 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_41, %804 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %806 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_42, %805 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %807 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%806 : tensor<1x1024x14x14xf32>) outs(%337 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_127 = tensor.collapse_shape %807 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %808 = linalg.matmul ins(%collapsed_127, %393 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%391 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %809 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%389, %808 : tensor<256xf32>, tensor<196x256xf32>) outs(%390 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x256xf32>
    %expanded_128 = tensor.expand_shape %809 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %810 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_128 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %811 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116, %117 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %812 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%811, %810, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %813 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %812 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %814 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %813 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %815 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%814 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_129 = tensor.pad %815 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %816 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_129, %410 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%411 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %817 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %816 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x14x14x256xf32>
    %818 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%817 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %819 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114, %115 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %820 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%819, %818, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %821 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %820 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %822 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %821 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %823 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%822 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_130 = tensor.collapse_shape %823 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %824 = linalg.matmul ins(%collapsed_130, %423 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%373 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %825 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%326, %824 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%372 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x1024xf32>
    %expanded_131 = tensor.expand_shape %825 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %826 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_131 : tensor<1x14x14x1024xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %827 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%804, %826 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %828 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112, %113 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%381 : tensor<1x1024x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x1024x14x14xi1>
    %829 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%828, %827, %cst : tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<1xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %830 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_41, %829 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %831 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_42, %830 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %832 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%831 : tensor<1x1024x14x14xf32>) outs(%337 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_132 = tensor.collapse_shape %832 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %833 = linalg.matmul ins(%collapsed_132, %393 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%391 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %834 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%389, %833 : tensor<256xf32>, tensor<196x256xf32>) outs(%390 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x256xf32>
    %expanded_133 = tensor.expand_shape %834 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %835 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_133 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %836 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110, %111 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %837 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%836, %835, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %838 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %837 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %839 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %838 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %840 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%839 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_134 = tensor.pad %840 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %841 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_134, %410 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%411 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %842 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %841 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x14x14x256xf32>
    %843 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%842 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %844 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108, %109 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %845 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%844, %843, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %846 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %845 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %847 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %846 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %848 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%847 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_135 = tensor.collapse_shape %848 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %849 = linalg.matmul ins(%collapsed_135, %423 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%373 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %850 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%326, %849 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%372 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x1024xf32>
    %expanded_136 = tensor.expand_shape %850 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %851 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_136 : tensor<1x14x14x1024xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %852 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%829, %851 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %853 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106, %107 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%381 : tensor<1x1024x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x1024x14x14xi1>
    %854 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%853, %852, %cst : tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<1xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %855 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_41, %854 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %856 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_42, %855 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %857 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%856 : tensor<1x1024x14x14xf32>) outs(%337 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_137 = tensor.collapse_shape %857 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %858 = linalg.matmul ins(%collapsed_137, %393 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%391 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %859 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%389, %858 : tensor<256xf32>, tensor<196x256xf32>) outs(%390 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x256xf32>
    %expanded_138 = tensor.expand_shape %859 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %860 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_138 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %861 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104, %105 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %862 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%861, %860, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %863 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %862 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %864 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %863 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %865 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%864 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_139 = tensor.pad %865 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %866 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_139, %410 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%411 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %867 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %866 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x14x14x256xf32>
    %868 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%867 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %869 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%102, %103 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %870 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%869, %868, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %871 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %870 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %872 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %871 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %873 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%872 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_140 = tensor.collapse_shape %873 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %874 = linalg.matmul ins(%collapsed_140, %423 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%373 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %875 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%326, %874 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%372 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x1024xf32>
    %expanded_141 = tensor.expand_shape %875 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %876 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_141 : tensor<1x14x14x1024xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %877 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%854, %876 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %878 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %101 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%381 : tensor<1x1024x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x1024x14x14xi1>
    %879 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%878, %877, %cst : tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<1xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %880 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_41, %879 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %881 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_42, %880 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %882 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%881 : tensor<1x1024x14x14xf32>) outs(%337 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_142 = tensor.collapse_shape %882 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %883 = linalg.matmul ins(%collapsed_142, %393 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%391 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %884 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%389, %883 : tensor<256xf32>, tensor<196x256xf32>) outs(%390 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x256xf32>
    %expanded_143 = tensor.expand_shape %884 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %885 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_143 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %886 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98, %99 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %887 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%886, %885, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %888 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %887 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %889 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %888 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %890 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%889 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_144 = tensor.pad %890 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %891 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_144, %410 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%411 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %892 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %891 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x14x14x256xf32>
    %893 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%892 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %894 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96, %97 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %895 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%894, %893, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %896 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %895 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %897 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %896 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %898 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%897 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_145 = tensor.collapse_shape %898 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %899 = linalg.matmul ins(%collapsed_145, %423 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%373 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %900 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%326, %899 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%372 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x1024xf32>
    %expanded_146 = tensor.expand_shape %900 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %901 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_146 : tensor<1x14x14x1024xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %902 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%879, %901 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %903 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94, %95 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%381 : tensor<1x1024x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x1024x14x14xi1>
    %904 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%903, %902, %cst : tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<1xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %905 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_41, %904 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %906 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_42, %905 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %907 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%906 : tensor<1x1024x14x14xf32>) outs(%337 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_147 = tensor.collapse_shape %907 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %908 = linalg.matmul ins(%collapsed_147, %393 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%391 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %909 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%389, %908 : tensor<256xf32>, tensor<196x256xf32>) outs(%390 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x256xf32>
    %expanded_148 = tensor.expand_shape %909 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %910 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_148 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %911 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%92, %93 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %912 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%911, %910, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %913 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %912 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %914 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %913 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %915 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%914 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_149 = tensor.pad %915 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %916 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_149, %410 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%411 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %917 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %916 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x14x14x256xf32>
    %918 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%917 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %919 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90, %91 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %920 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%919, %918, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %921 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %920 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %922 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %921 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %923 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%922 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_150 = tensor.collapse_shape %923 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %924 = linalg.matmul ins(%collapsed_150, %423 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%373 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %925 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%326, %924 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%372 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x1024xf32>
    %expanded_151 = tensor.expand_shape %925 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %926 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_151 : tensor<1x14x14x1024xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %927 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%904, %926 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %928 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88, %89 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%381 : tensor<1x1024x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x1024x14x14xi1>
    %929 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%928, %927, %cst : tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<1xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %930 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_41, %929 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %931 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_42, %930 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %932 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%931 : tensor<1x1024x14x14xf32>) outs(%337 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_152 = tensor.collapse_shape %932 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %933 = linalg.matmul ins(%collapsed_152, %393 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%391 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %934 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%389, %933 : tensor<256xf32>, tensor<196x256xf32>) outs(%390 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x256xf32>
    %expanded_153 = tensor.expand_shape %934 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %935 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_153 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %936 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86, %87 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %937 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%936, %935, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %938 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %937 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %939 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %938 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %940 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%939 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_154 = tensor.pad %940 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %941 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_154, %410 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%411 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %942 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %941 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x14x14x256xf32>
    %943 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%942 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %944 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%84, %85 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %945 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%944, %943, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %946 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %945 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %947 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %946 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %948 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%947 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_155 = tensor.collapse_shape %948 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %949 = linalg.matmul ins(%collapsed_155, %423 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%373 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %950 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%326, %949 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%372 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x1024xf32>
    %expanded_156 = tensor.expand_shape %950 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %951 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_156 : tensor<1x14x14x1024xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %952 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%929, %951 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %953 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82, %83 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%381 : tensor<1x1024x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x1024x14x14xi1>
    %954 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%953, %952, %cst : tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<1xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %955 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_41, %954 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %956 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_42, %955 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%379 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x1024x14x14xf32>
    %957 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%956 : tensor<1x1024x14x14xf32>) outs(%337 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %958 = tensor.empty() : tensor<512x1x1x1024xf32>
    %959 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<1024x1x1x512xf32>) outs(%958 : tensor<512x1x1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x1x1x1024xf32>
    %padded_157 = tensor.pad %959 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<512x1x1x1024xf32> to tensor<512x2x2x1024xf32>
    %expanded_158 = tensor.expand_shape %padded_157 [[0, 1], [2, 3], [4], [5]] : tensor<512x2x2x1024xf32> into tensor<512x1x2x1x2x1024xf32>
    %960 = tensor.empty() : tensor<2x2x512x1x1x1024xf32>
    %961 = linalg.generic {indexing_maps = [#map14, #map15], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_158 : tensor<512x1x2x1x2x1024xf32>) outs(%960 : tensor<2x2x512x1x1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x512x1x1x1024xf32>
    %collapsed_159 = tensor.collapse_shape %957 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %collapsed_160 = tensor.collapse_shape %961 [[0, 1, 2, 3, 4], [5]] : tensor<2x2x512x1x1x1024xf32> into tensor<2048x1024xf32>
    %962 = tensor.empty() : tensor<196x2048xf32>
    %963 = linalg.fill ins(%cst_7 : f32) outs(%962 : tensor<196x2048xf32>) -> tensor<196x2048xf32>
    %964 = tensor.empty() : tensor<1024x2048xf32>
    %965 = linalg.generic {indexing_maps = [#map12, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_160 : tensor<2048x1024xf32>) outs(%964 : tensor<1024x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x2048xf32>
    %966 = linalg.matmul ins(%collapsed_159, %965 : tensor<196x1024xf32>, tensor<1024x2048xf32>) outs(%963 : tensor<196x2048xf32>) -> tensor<196x2048xf32>
    %967 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_1, %966 : tensor<2048xf32>, tensor<196x2048xf32>) outs(%962 : tensor<196x2048xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x2048xf32>
    %expanded_161 = tensor.expand_shape %967 [[0, 1, 2], [3, 4, 5]] : tensor<196x2048xf32> into tensor<1x14x14x2x2x512xf32>
    %968 = tensor.empty() : tensor<1x14x2x14x2x512xf32>
    %969 = linalg.generic {indexing_maps = [#map16, #map15], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_161 : tensor<1x14x14x2x2x512xf32>) outs(%968 : tensor<1x14x2x14x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x2x14x2x512xf32>
    %collapsed_162 = tensor.collapse_shape %969 [[0], [1, 2], [3, 4], [5]] : tensor<1x14x2x14x2x512xf32> into tensor<1x28x28x512xf32>
    %970 = tensor.empty() : tensor<1x28x28x512xf32>
    %971 = linalg.generic {indexing_maps = [#map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_162, %expanded_37 : tensor<1x28x28x512xf32>, tensor<1x512xf32>) outs(%970 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x28x28x512xf32>
    %972 = linalg.matmul ins(%collapsed_159, %393 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%391 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %973 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%389, %972 : tensor<256xf32>, tensor<196x256xf32>) outs(%390 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<196x256xf32>
    %expanded_163 = tensor.expand_shape %973 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %974 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_163 : tensor<1x14x14x256xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %975 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %80 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%398 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x14x14xi1>
    %976 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%975, %974, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %977 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %976 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %978 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %977 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%396 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x14x14xf32>
    %979 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%978 : tensor<1x256x14x14xf32>) outs(%403 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_164 = tensor.pad %406 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<256x3x3x256xf32> to tensor<256x4x4x256xf32>
    %expanded_165 = tensor.expand_shape %padded_164 [[0], [1, 2], [3, 4], [5]] : tensor<256x4x4x256xf32> into tensor<256x2x2x2x2x256xf32>
    %980 = tensor.empty() : tensor<2x2x256x2x2x256xf32>
    %981 = linalg.generic {indexing_maps = [#map14, #map15], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_165 : tensor<256x2x2x2x2x256xf32>) outs(%980 : tensor<2x2x256x2x2x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x256x2x2x256xf32>
    %collapsed_166 = tensor.collapse_shape %981 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x256x2x2x256xf32> into tensor<1024x2x2x256xf32>
    %982 = tensor.empty() : tensor<1024x2x2x256xf32>
    %983 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%982 : tensor<1024x2x2x256xf32>) {
    ^bb0(%out: f32):
      %1303 = linalg.index 0 : index
      %1304 = linalg.index 1 : index
      %1305 = arith.subi %c1, %1304 : index
      %1306 = linalg.index 2 : index
      %1307 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_166[%1303, %1305, %1306, %1307] : tensor<1024x2x2x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<1024x2x2x256xf32>
    %984 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%982 : tensor<1024x2x2x256xf32>) {
    ^bb0(%out: f32):
      %1303 = linalg.index 0 : index
      %1304 = linalg.index 1 : index
      %1305 = linalg.index 2 : index
      %1306 = arith.subi %c1, %1305 : index
      %1307 = linalg.index 3 : index
      %extracted = tensor.extract %983[%1303, %1304, %1306, %1307] : tensor<1024x2x2x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<1024x2x2x256xf32>
    %padded_167 = tensor.pad %979 low[%c0, %c1, %c1, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %985 = tensor.empty() : tensor<2x2x256x1024xf32>
    %986 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%984 : tensor<1024x2x2x256xf32>) outs(%985 : tensor<2x2x256x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x256x1024xf32>
    %987 = tensor.empty() : tensor<1x15x15x1024xf32>
    %988 = linalg.fill ins(%cst_7 : f32) outs(%987 : tensor<1x15x15x1024xf32>) -> tensor<1x15x15x1024xf32>
    %989 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_167, %986 : tensor<1x16x16x256xf32>, tensor<2x2x256x1024xf32>) outs(%988 : tensor<1x15x15x1024xf32>) -> tensor<1x15x15x1024xf32>
    %990 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_2, %989 : tensor<1024xf32>, tensor<1x15x15x1024xf32>) outs(%987 : tensor<1x15x15x1024xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x15x15x1024xf32>
    %expanded_168 = tensor.expand_shape %990 [[0], [1], [2], [3, 4, 5]] : tensor<1x15x15x1024xf32> into tensor<1x15x15x2x2x256xf32>
    %991 = tensor.empty() : tensor<1x15x2x15x2x256xf32>
    %992 = linalg.generic {indexing_maps = [#map16, #map15], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_168 : tensor<1x15x15x2x2x256xf32>) outs(%991 : tensor<1x15x2x15x2x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x15x2x15x2x256xf32>
    %collapsed_169 = tensor.collapse_shape %992 [[0], [1, 2], [3, 4], [5]] : tensor<1x15x2x15x2x256xf32> into tensor<1x30x30x256xf32>
    %extracted_slice_170 = tensor.extract_slice %collapsed_169[0, 1, 1, 0] [1, 28, 28, 256] [1, 1, 1, 1] : tensor<1x30x30x256xf32> to tensor<1x28x28x256xf32>
    %993 = tensor.empty() : tensor<1x28x28x256xf32>
    %expanded_171 = tensor.expand_shape %389 [[0, 1]] : tensor<256xf32> into tensor<1x256xf32>
    %994 = linalg.generic {indexing_maps = [#map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%extracted_slice_170, %expanded_171 : tensor<1x28x28x256xf32>, tensor<1x256xf32>) outs(%993 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x28x28x256xf32>
    %995 = tensor.empty() : tensor<1x256x28x28xf32>
    %996 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%994 : tensor<1x28x28x256xf32>) outs(%995 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x28x28xf32>
    %997 = tensor.empty() : tensor<1x256x28x28xi1>
    %998 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77, %78 : tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) outs(%997 : tensor<1x256x28x28xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x28x28xi1>
    %999 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%998, %996, %cst : tensor<1x256x28x28xi1>, tensor<1x256x28x28xf32>, tensor<1xf32>) outs(%995 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x28x28xf32>
    %1000 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %999 : tensor<1x256xf32>, tensor<1x256x28x28xf32>) outs(%995 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x28x28xf32>
    %1001 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %1000 : tensor<1x256xf32>, tensor<1x256x28x28xf32>) outs(%995 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x28x28xf32>
    %1002 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1001 : tensor<1x256x28x28xf32>) outs(%993 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x256xf32>
    %1003 = tensor.empty() : tensor<512x1x1x256xf32>
    %1004 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12 : tensor<256x1x1x512xf32>) outs(%1003 : tensor<512x1x1x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x1x1x256xf32>
    %collapsed_172 = tensor.collapse_shape %1002 [[0, 1, 2], [3]] : tensor<1x28x28x256xf32> into tensor<784x256xf32>
    %collapsed_173 = tensor.collapse_shape %1004 [[0, 1, 2], [3]] : tensor<512x1x1x256xf32> into tensor<512x256xf32>
    %1005 = tensor.empty() : tensor<784x512xf32>
    %1006 = linalg.fill ins(%cst_7 : f32) outs(%1005 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %1007 = tensor.empty() : tensor<256x512xf32>
    %1008 = linalg.generic {indexing_maps = [#map12, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_173 : tensor<512x256xf32>) outs(%1007 : tensor<256x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x512xf32>
    %1009 = linalg.matmul ins(%collapsed_172, %1008 : tensor<784x256xf32>, tensor<256x512xf32>) outs(%1006 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %1010 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%252, %1009 : tensor<512xf32>, tensor<784x512xf32>) outs(%1005 : tensor<784x512xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<784x512xf32>
    %expanded_174 = tensor.expand_shape %1010 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %1011 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%971, %expanded_174 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%970 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x28x28x512xf32>
    %1012 = tensor.empty() : tensor<1x512x28x28xf32>
    %1013 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1011 : tensor<1x28x28x512xf32>) outs(%1012 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %1014 = tensor.empty() : tensor<1x512x28x28xi1>
    %1015 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75, %76 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%1014 : tensor<1x512x28x28xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x512x28x28xi1>
    %1016 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1015, %1013, %cst : tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<1xf32>) outs(%1012 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x28x28xf32>
    %1017 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_13, %1016 : tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%1012 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x28x28xf32>
    %1018 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_14, %1017 : tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%1012 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x28x28xf32>
    %1019 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1018 : tensor<1x512x28x28xf32>) outs(%970 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %1020 = tensor.empty() : tensor<128x1x1x512xf32>
    %1021 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16 : tensor<512x1x1x128xf32>) outs(%1020 : tensor<128x1x1x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x1x1x512xf32>
    %1022 = tensor.empty() : tensor<128xf32>
    %collapsed_175 = tensor.collapse_shape %1019 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %collapsed_176 = tensor.collapse_shape %1021 [[0, 1, 2], [3]] : tensor<128x1x1x512xf32> into tensor<128x512xf32>
    %1023 = tensor.empty() : tensor<784x128xf32>
    %1024 = linalg.fill ins(%cst_7 : f32) outs(%1023 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %1025 = tensor.empty() : tensor<512x128xf32>
    %1026 = linalg.generic {indexing_maps = [#map12, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_176 : tensor<128x512xf32>) outs(%1025 : tensor<512x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x128xf32>
    %1027 = linalg.matmul ins(%collapsed_175, %1026 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%1024 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %1028 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%1022, %1027 : tensor<128xf32>, tensor<784x128xf32>) outs(%1023 : tensor<784x128xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<784x128xf32>
    %expanded_177 = tensor.expand_shape %1028 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %1029 = tensor.empty() : tensor<1x128x28x28xf32>
    %1030 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_177 : tensor<1x28x28x128xf32>) outs(%1029 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %1031 = tensor.empty() : tensor<1x128x28x28xi1>
    %1032 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73, %74 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%1031 : tensor<1x128x28x28xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x128x28x28xi1>
    %1033 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1032, %1030, %cst : tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<1xf32>) outs(%1029 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x128x28x28xf32>
    %collapsed_178 = tensor.collapse_shape %18 [[0], [1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<1x128xf32>
    %1034 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_178, %1033 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%1029 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x128x28x28xf32>
    %collapsed_179 = tensor.collapse_shape %51 [[0], [1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<1x128xf32>
    %1035 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_179, %1034 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%1029 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x128x28x28xf32>
    %1036 = tensor.empty() : tensor<1x28x28x128xf32>
    %1037 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1035 : tensor<1x128x28x28xf32>) outs(%1036 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %1038 = tensor.empty() : tensor<128x3x3x128xf32>
    %1039 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17 : tensor<128x3x3x128xf32>) outs(%1038 : tensor<128x3x3x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x3x3x128xf32>
    %1040 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%1038 : tensor<128x3x3x128xf32>) {
    ^bb0(%out: f32):
      %1303 = linalg.index 0 : index
      %1304 = linalg.index 1 : index
      %1305 = arith.subi %c2, %1304 : index
      %1306 = linalg.index 2 : index
      %1307 = linalg.index 3 : index
      %extracted = tensor.extract %1039[%1303, %1305, %1306, %1307] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x128xf32>
    %1041 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%1038 : tensor<128x3x3x128xf32>) {
    ^bb0(%out: f32):
      %1303 = linalg.index 0 : index
      %1304 = linalg.index 1 : index
      %1305 = linalg.index 2 : index
      %1306 = arith.subi %c2, %1305 : index
      %1307 = linalg.index 3 : index
      %extracted = tensor.extract %1040[%1303, %1304, %1306, %1307] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x128xf32>
    %padded_180 = tensor.pad %1037 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %1042 = tensor.empty() : tensor<3x3x128x128xf32>
    %1043 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1041 : tensor<128x3x3x128xf32>) outs(%1042 : tensor<3x3x128x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x128x128xf32>
    %1044 = linalg.fill ins(%cst_7 : f32) outs(%1036 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %1045 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_180, %1043 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%1044 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %1046 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1022, %1045 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%1036 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x28x28x128xf32>
    %1047 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1046 : tensor<1x28x28x128xf32>) outs(%1029 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %1048 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71, %72 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%1031 : tensor<1x128x28x28xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x128x28x28xi1>
    %1049 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1048, %1047, %cst : tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<1xf32>) outs(%1029 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x128x28x28xf32>
    %1050 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_178, %1049 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%1029 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x128x28x28xf32>
    %1051 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_179, %1050 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%1029 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x128x28x28xf32>
    %1052 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1051 : tensor<1x128x28x28xf32>) outs(%1036 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %1053 = tensor.empty() : tensor<512x1x1x128xf32>
    %1054 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<128x1x1x512xf32>) outs(%1053 : tensor<512x1x1x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x1x1x128xf32>
    %collapsed_181 = tensor.collapse_shape %1052 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %collapsed_182 = tensor.collapse_shape %1054 [[0, 1, 2], [3]] : tensor<512x1x1x128xf32> into tensor<512x128xf32>
    %1055 = tensor.empty() : tensor<128x512xf32>
    %1056 = linalg.generic {indexing_maps = [#map12, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_182 : tensor<512x128xf32>) outs(%1055 : tensor<128x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x512xf32>
    %1057 = linalg.matmul ins(%collapsed_181, %1056 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%1006 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %1058 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%252, %1057 : tensor<512xf32>, tensor<784x512xf32>) outs(%1005 : tensor<784x512xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<784x512xf32>
    %expanded_183 = tensor.expand_shape %1058 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %1059 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_183 : tensor<1x28x28x512xf32>) outs(%1012 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %1060 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1016, %1059 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%1012 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x28x28xf32>
    %1061 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %70 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%1014 : tensor<1x512x28x28xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x512x28x28xi1>
    %1062 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1061, %1060, %cst : tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<1xf32>) outs(%1012 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x28x28xf32>
    %1063 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_13, %1062 : tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%1012 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x28x28xf32>
    %1064 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_14, %1063 : tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%1012 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x28x28xf32>
    %1065 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1064 : tensor<1x512x28x28xf32>) outs(%970 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_184 = tensor.collapse_shape %1065 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %1066 = linalg.matmul ins(%collapsed_184, %1026 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%1024 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %1067 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%1022, %1066 : tensor<128xf32>, tensor<784x128xf32>) outs(%1023 : tensor<784x128xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<784x128xf32>
    %expanded_185 = tensor.expand_shape %1067 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %1068 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_185 : tensor<1x28x28x128xf32>) outs(%1029 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %1069 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %68 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%1031 : tensor<1x128x28x28xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x128x28x28xi1>
    %1070 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1069, %1068, %cst : tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<1xf32>) outs(%1029 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x128x28x28xf32>
    %1071 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_178, %1070 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%1029 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x128x28x28xf32>
    %1072 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_179, %1071 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%1029 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x128x28x28xf32>
    %1073 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1072 : tensor<1x128x28x28xf32>) outs(%1036 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_186 = tensor.pad %1073 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %1074 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_186, %1043 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%1044 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %1075 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1022, %1074 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%1036 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x28x28x128xf32>
    %1076 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1075 : tensor<1x28x28x128xf32>) outs(%1029 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %1077 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%65, %66 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%1031 : tensor<1x128x28x28xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x128x28x28xi1>
    %1078 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1077, %1076, %cst : tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<1xf32>) outs(%1029 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x128x28x28xf32>
    %1079 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_178, %1078 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%1029 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x128x28x28xf32>
    %1080 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_179, %1079 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%1029 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x128x28x28xf32>
    %1081 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1080 : tensor<1x128x28x28xf32>) outs(%1036 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_187 = tensor.collapse_shape %1081 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %1082 = linalg.matmul ins(%collapsed_187, %1056 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%1006 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %1083 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%252, %1082 : tensor<512xf32>, tensor<784x512xf32>) outs(%1005 : tensor<784x512xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<784x512xf32>
    %expanded_188 = tensor.expand_shape %1083 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %1084 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_188 : tensor<1x28x28x512xf32>) outs(%1012 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %1085 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1062, %1084 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%1012 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x28x28xf32>
    %1086 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63, %64 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%1014 : tensor<1x512x28x28xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x512x28x28xi1>
    %1087 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1086, %1085, %cst : tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<1xf32>) outs(%1012 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x28x28xf32>
    %1088 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_13, %1087 : tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%1012 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x28x28xf32>
    %1089 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_14, %1088 : tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%1012 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x28x28xf32>
    %1090 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1089 : tensor<1x512x28x28xf32>) outs(%970 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_189 = tensor.collapse_shape %1090 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %1091 = linalg.matmul ins(%collapsed_189, %1026 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%1024 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %1092 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%1022, %1091 : tensor<128xf32>, tensor<784x128xf32>) outs(%1023 : tensor<784x128xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<784x128xf32>
    %expanded_190 = tensor.expand_shape %1092 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %1093 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_190 : tensor<1x28x28x128xf32>) outs(%1029 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %1094 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61, %62 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%1031 : tensor<1x128x28x28xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x128x28x28xi1>
    %1095 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1094, %1093, %cst : tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<1xf32>) outs(%1029 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x128x28x28xf32>
    %1096 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_178, %1095 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%1029 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x128x28x28xf32>
    %1097 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_179, %1096 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%1029 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x128x28x28xf32>
    %1098 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1097 : tensor<1x128x28x28xf32>) outs(%1036 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_191 = tensor.pad %1098 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %1099 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_191, %1043 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%1044 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %1100 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1022, %1099 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%1036 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x28x28x128xf32>
    %1101 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1100 : tensor<1x28x28x128xf32>) outs(%1029 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %1102 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59, %60 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%1031 : tensor<1x128x28x28xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x128x28x28xi1>
    %1103 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1102, %1101, %cst : tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<1xf32>) outs(%1029 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x128x28x28xf32>
    %1104 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_178, %1103 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%1029 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x128x28x28xf32>
    %1105 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_179, %1104 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%1029 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x128x28x28xf32>
    %1106 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1105 : tensor<1x128x28x28xf32>) outs(%1036 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_192 = tensor.collapse_shape %1106 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %1107 = linalg.matmul ins(%collapsed_192, %1056 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%1006 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %1108 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%252, %1107 : tensor<512xf32>, tensor<784x512xf32>) outs(%1005 : tensor<784x512xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<784x512xf32>
    %expanded_193 = tensor.expand_shape %1108 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %1109 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_193 : tensor<1x28x28x512xf32>) outs(%1012 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %1110 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1087, %1109 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%1012 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x28x28xf32>
    %1111 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %58 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%1014 : tensor<1x512x28x28xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x512x28x28xi1>
    %1112 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1111, %1110, %cst : tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<1xf32>) outs(%1012 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x28x28xf32>
    %1113 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_13, %1112 : tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%1012 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x28x28xf32>
    %1114 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_14, %1113 : tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%1012 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x512x28x28xf32>
    %1115 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1114 : tensor<1x512x28x28xf32>) outs(%970 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %1116 = tensor.empty() : tensor<256x1x1x512xf32>
    %1117 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14 : tensor<512x1x1x256xf32>) outs(%1116 : tensor<256x1x1x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1x1x512xf32>
    %padded_194 = tensor.pad %1117 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<256x1x1x512xf32> to tensor<256x2x2x512xf32>
    %expanded_195 = tensor.expand_shape %padded_194 [[0, 1], [2, 3], [4], [5]] : tensor<256x2x2x512xf32> into tensor<256x1x2x1x2x512xf32>
    %1118 = tensor.empty() : tensor<2x2x256x1x1x512xf32>
    %1119 = linalg.generic {indexing_maps = [#map14, #map15], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_195 : tensor<256x1x2x1x2x512xf32>) outs(%1118 : tensor<2x2x256x1x1x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x256x1x1x512xf32>
    %collapsed_196 = tensor.collapse_shape %1115 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %collapsed_197 = tensor.collapse_shape %1119 [[0, 1, 2, 3, 4], [5]] : tensor<2x2x256x1x1x512xf32> into tensor<1024x512xf32>
    %1120 = tensor.empty() : tensor<784x1024xf32>
    %1121 = linalg.fill ins(%cst_7 : f32) outs(%1120 : tensor<784x1024xf32>) -> tensor<784x1024xf32>
    %1122 = linalg.generic {indexing_maps = [#map12, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_197 : tensor<1024x512xf32>) outs(%374 : tensor<512x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x1024xf32>
    %1123 = linalg.matmul ins(%collapsed_196, %1122 : tensor<784x512xf32>, tensor<512x1024xf32>) outs(%1121 : tensor<784x1024xf32>) -> tensor<784x1024xf32>
    %1124 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_2, %1123 : tensor<1024xf32>, tensor<784x1024xf32>) outs(%1120 : tensor<784x1024xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<784x1024xf32>
    %expanded_198 = tensor.expand_shape %1124 [[0, 1, 2], [3, 4, 5]] : tensor<784x1024xf32> into tensor<1x28x28x2x2x256xf32>
    %1125 = tensor.empty() : tensor<1x28x2x28x2x256xf32>
    %1126 = linalg.generic {indexing_maps = [#map16, #map15], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_198 : tensor<1x28x28x2x2x256xf32>) outs(%1125 : tensor<1x28x2x28x2x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x2x28x2x256xf32>
    %collapsed_199 = tensor.collapse_shape %1126 [[0], [1, 2], [3, 4], [5]] : tensor<1x28x2x28x2x256xf32> into tensor<1x56x56x256xf32>
    %1127 = tensor.empty() : tensor<1x56x56x256xf32>
    %1128 = linalg.generic {indexing_maps = [#map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_199, %expanded_171 : tensor<1x56x56x256xf32>, tensor<1x256xf32>) outs(%1127 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x56x56x256xf32>
    %1129 = linalg.matmul ins(%collapsed_196, %1026 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%1024 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %1130 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%1022, %1129 : tensor<128xf32>, tensor<784x128xf32>) outs(%1023 : tensor<784x128xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<784x128xf32>
    %expanded_200 = tensor.expand_shape %1130 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %1131 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_200 : tensor<1x28x28x128xf32>) outs(%1029 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %1132 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%54, %55 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%1031 : tensor<1x128x28x28xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x128x28x28xi1>
    %1133 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1132, %1131, %cst : tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<1xf32>) outs(%1029 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x128x28x28xf32>
    %1134 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_178, %1133 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%1029 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x128x28x28xf32>
    %1135 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_179, %1134 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%1029 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x128x28x28xf32>
    %1136 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1135 : tensor<1x128x28x28xf32>) outs(%1036 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_201 = tensor.pad %1039 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<128x3x3x128xf32> to tensor<128x4x4x128xf32>
    %expanded_202 = tensor.expand_shape %padded_201 [[0], [1, 2], [3, 4], [5]] : tensor<128x4x4x128xf32> into tensor<128x2x2x2x2x128xf32>
    %1137 = tensor.empty() : tensor<2x2x128x2x2x128xf32>
    %1138 = linalg.generic {indexing_maps = [#map14, #map15], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_202 : tensor<128x2x2x2x2x128xf32>) outs(%1137 : tensor<2x2x128x2x2x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x128x2x2x128xf32>
    %collapsed_203 = tensor.collapse_shape %1138 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x128x2x2x128xf32> into tensor<512x2x2x128xf32>
    %1139 = tensor.empty() : tensor<512x2x2x128xf32>
    %1140 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%1139 : tensor<512x2x2x128xf32>) {
    ^bb0(%out: f32):
      %1303 = linalg.index 0 : index
      %1304 = linalg.index 1 : index
      %1305 = arith.subi %c1, %1304 : index
      %1306 = linalg.index 2 : index
      %1307 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_203[%1303, %1305, %1306, %1307] : tensor<512x2x2x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x2x2x128xf32>
    %1141 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%1139 : tensor<512x2x2x128xf32>) {
    ^bb0(%out: f32):
      %1303 = linalg.index 0 : index
      %1304 = linalg.index 1 : index
      %1305 = linalg.index 2 : index
      %1306 = arith.subi %c1, %1305 : index
      %1307 = linalg.index 3 : index
      %extracted = tensor.extract %1140[%1303, %1304, %1306, %1307] : tensor<512x2x2x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x2x2x128xf32>
    %padded_204 = tensor.pad %1136 low[%c0, %c1, %c1, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %1142 = tensor.empty() : tensor<2x2x128x512xf32>
    %1143 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1141 : tensor<512x2x2x128xf32>) outs(%1142 : tensor<2x2x128x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x128x512xf32>
    %1144 = tensor.empty() : tensor<1x29x29x512xf32>
    %1145 = linalg.fill ins(%cst_7 : f32) outs(%1144 : tensor<1x29x29x512xf32>) -> tensor<1x29x29x512xf32>
    %1146 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_204, %1143 : tensor<1x30x30x128xf32>, tensor<2x2x128x512xf32>) outs(%1145 : tensor<1x29x29x512xf32>) -> tensor<1x29x29x512xf32>
    %1147 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_3, %1146 : tensor<512xf32>, tensor<1x29x29x512xf32>) outs(%1144 : tensor<1x29x29x512xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x29x29x512xf32>
    %expanded_205 = tensor.expand_shape %1147 [[0], [1], [2], [3, 4, 5]] : tensor<1x29x29x512xf32> into tensor<1x29x29x2x2x128xf32>
    %1148 = tensor.empty() : tensor<1x29x2x29x2x128xf32>
    %1149 = linalg.generic {indexing_maps = [#map16, #map15], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_205 : tensor<1x29x29x2x2x128xf32>) outs(%1148 : tensor<1x29x2x29x2x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x29x2x29x2x128xf32>
    %collapsed_206 = tensor.collapse_shape %1149 [[0], [1, 2], [3, 4], [5]] : tensor<1x29x2x29x2x128xf32> into tensor<1x58x58x128xf32>
    %extracted_slice_207 = tensor.extract_slice %collapsed_206[0, 1, 1, 0] [1, 56, 56, 128] [1, 1, 1, 1] : tensor<1x58x58x128xf32> to tensor<1x56x56x128xf32>
    %1150 = tensor.empty() : tensor<1x56x56x128xf32>
    %expanded_208 = tensor.expand_shape %1022 [[0, 1]] : tensor<128xf32> into tensor<1x128xf32>
    %1151 = linalg.generic {indexing_maps = [#map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%extracted_slice_207, %expanded_208 : tensor<1x56x56x128xf32>, tensor<1x128xf32>) outs(%1150 : tensor<1x56x56x128xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x56x56x128xf32>
    %1152 = tensor.empty() : tensor<1x128x56x56xf32>
    %1153 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1151 : tensor<1x56x56x128xf32>) outs(%1152 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x56x56xf32>
    %1154 = tensor.empty() : tensor<1x128x56x56xi1>
    %1155 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52, %53 : tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) outs(%1154 : tensor<1x128x56x56xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x128x56x56xi1>
    %1156 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1155, %1153, %cst : tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<1xf32>) outs(%1152 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x128x56x56xf32>
    %1157 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_178, %1156 : tensor<1x128xf32>, tensor<1x128x56x56xf32>) outs(%1152 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x128x56x56xf32>
    %1158 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_179, %1157 : tensor<1x128xf32>, tensor<1x128x56x56xf32>) outs(%1152 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x128x56x56xf32>
    %1159 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1158 : tensor<1x128x56x56xf32>) outs(%1150 : tensor<1x56x56x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x128xf32>
    %1160 = tensor.empty() : tensor<256x1x1x128xf32>
    %1161 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19 : tensor<128x1x1x256xf32>) outs(%1160 : tensor<256x1x1x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1x1x128xf32>
    %collapsed_209 = tensor.collapse_shape %1159 [[0, 1, 2], [3]] : tensor<1x56x56x128xf32> into tensor<3136x128xf32>
    %collapsed_210 = tensor.collapse_shape %1161 [[0, 1, 2], [3]] : tensor<256x1x1x128xf32> into tensor<256x128xf32>
    %1162 = tensor.empty() : tensor<3136x256xf32>
    %1163 = linalg.fill ins(%cst_7 : f32) outs(%1162 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %1164 = tensor.empty() : tensor<128x256xf32>
    %1165 = linalg.generic {indexing_maps = [#map12, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_210 : tensor<256x128xf32>) outs(%1164 : tensor<128x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x256xf32>
    %1166 = linalg.matmul ins(%collapsed_209, %1165 : tensor<3136x128xf32>, tensor<128x256xf32>) outs(%1163 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %1167 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%389, %1166 : tensor<256xf32>, tensor<3136x256xf32>) outs(%1162 : tensor<3136x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<3136x256xf32>
    %expanded_211 = tensor.expand_shape %1167 [[0, 1, 2], [3]] : tensor<3136x256xf32> into tensor<1x56x56x256xf32>
    %1168 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1128, %expanded_211 : tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) outs(%1127 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x56x56x256xf32>
    %1169 = tensor.empty() : tensor<1x256x56x56xf32>
    %1170 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1168 : tensor<1x56x56x256xf32>) outs(%1169 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %1171 = tensor.empty() : tensor<1x256x56x56xi1>
    %1172 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%49, %50 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%1171 : tensor<1x256x56x56xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x56x56xi1>
    %1173 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1172, %1170, %cst : tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<1xf32>) outs(%1169 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x56x56xf32>
    %1174 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %1173 : tensor<1x256xf32>, tensor<1x256x56x56xf32>) outs(%1169 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x56x56xf32>
    %1175 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %1174 : tensor<1x256xf32>, tensor<1x256x56x56xf32>) outs(%1169 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x56x56xf32>
    %1176 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1175 : tensor<1x256x56x56xf32>) outs(%1127 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %1177 = tensor.empty() : tensor<64x1x1x256xf32>
    %1178 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22 : tensor<256x1x1x64xf32>) outs(%1177 : tensor<64x1x1x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x1x1x256xf32>
    %1179 = tensor.empty() : tensor<64xf32>
    %collapsed_212 = tensor.collapse_shape %1176 [[0, 1, 2], [3]] : tensor<1x56x56x256xf32> into tensor<3136x256xf32>
    %collapsed_213 = tensor.collapse_shape %1178 [[0, 1, 2], [3]] : tensor<64x1x1x256xf32> into tensor<64x256xf32>
    %1180 = tensor.empty() : tensor<3136x64xf32>
    %1181 = linalg.fill ins(%cst_7 : f32) outs(%1180 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %1182 = tensor.empty() : tensor<256x64xf32>
    %1183 = linalg.generic {indexing_maps = [#map12, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_213 : tensor<64x256xf32>) outs(%1182 : tensor<256x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x64xf32>
    %1184 = linalg.matmul ins(%collapsed_212, %1183 : tensor<3136x256xf32>, tensor<256x64xf32>) outs(%1181 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %1185 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%1179, %1184 : tensor<64xf32>, tensor<3136x64xf32>) outs(%1180 : tensor<3136x64xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<3136x64xf32>
    %expanded_214 = tensor.expand_shape %1185 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %1186 = tensor.empty() : tensor<1x64x56x56xf32>
    %1187 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_214 : tensor<1x56x56x64xf32>) outs(%1186 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %1188 = tensor.empty() : tensor<1x64x56x56xi1>
    %1189 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %48 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%1188 : tensor<1x64x56x56xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x64x56x56xi1>
    %1190 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1189, %1187, %cst : tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<1xf32>) outs(%1186 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x64x56x56xf32>
    %collapsed_215 = tensor.collapse_shape %25 [[0], [1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<1x64xf32>
    %1191 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_215, %1190 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%1186 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x64x56x56xf32>
    %collapsed_216 = tensor.collapse_shape %27 [[0], [1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<1x64xf32>
    %1192 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_216, %1191 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%1186 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x64x56x56xf32>
    %1193 = tensor.empty() : tensor<1x56x56x64xf32>
    %1194 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1192 : tensor<1x64x56x56xf32>) outs(%1193 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %1195 = tensor.empty() : tensor<64x3x3x64xf32>
    %1196 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23 : tensor<64x3x3x64xf32>) outs(%1195 : tensor<64x3x3x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x3x3x64xf32>
    %1197 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%1195 : tensor<64x3x3x64xf32>) {
    ^bb0(%out: f32):
      %1303 = linalg.index 0 : index
      %1304 = linalg.index 1 : index
      %1305 = arith.subi %c2, %1304 : index
      %1306 = linalg.index 2 : index
      %1307 = linalg.index 3 : index
      %extracted = tensor.extract %1196[%1303, %1305, %1306, %1307] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x64xf32>
    %1198 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%1195 : tensor<64x3x3x64xf32>) {
    ^bb0(%out: f32):
      %1303 = linalg.index 0 : index
      %1304 = linalg.index 1 : index
      %1305 = linalg.index 2 : index
      %1306 = arith.subi %c2, %1305 : index
      %1307 = linalg.index 3 : index
      %extracted = tensor.extract %1197[%1303, %1304, %1306, %1307] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x64xf32>
    %padded_217 = tensor.pad %1194 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %1199 = tensor.empty() : tensor<3x3x64x64xf32>
    %1200 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1198 : tensor<64x3x3x64xf32>) outs(%1199 : tensor<3x3x64x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x64x64xf32>
    %1201 = linalg.fill ins(%cst_7 : f32) outs(%1193 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %1202 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_217, %1200 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%1201 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %1203 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1179, %1202 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%1193 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x56x56x64xf32>
    %1204 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1203 : tensor<1x56x56x64xf32>) outs(%1186 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %1205 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%45, %46 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%1188 : tensor<1x64x56x56xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x64x56x56xi1>
    %1206 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1205, %1204, %cst : tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<1xf32>) outs(%1186 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x64x56x56xf32>
    %1207 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_215, %1206 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%1186 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x64x56x56xf32>
    %1208 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_216, %1207 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%1186 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x64x56x56xf32>
    %1209 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1208 : tensor<1x64x56x56xf32>) outs(%1193 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %1210 = tensor.empty() : tensor<256x1x1x64xf32>
    %1211 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20 : tensor<64x1x1x256xf32>) outs(%1210 : tensor<256x1x1x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1x1x64xf32>
    %collapsed_218 = tensor.collapse_shape %1209 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %collapsed_219 = tensor.collapse_shape %1211 [[0, 1, 2], [3]] : tensor<256x1x1x64xf32> into tensor<256x64xf32>
    %1212 = tensor.empty() : tensor<64x256xf32>
    %1213 = linalg.generic {indexing_maps = [#map12, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_219 : tensor<256x64xf32>) outs(%1212 : tensor<64x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x256xf32>
    %1214 = linalg.matmul ins(%collapsed_218, %1213 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%1163 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %1215 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%389, %1214 : tensor<256xf32>, tensor<3136x256xf32>) outs(%1162 : tensor<3136x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<3136x256xf32>
    %expanded_220 = tensor.expand_shape %1215 [[0, 1, 2], [3]] : tensor<3136x256xf32> into tensor<1x56x56x256xf32>
    %1216 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_220 : tensor<1x56x56x256xf32>) outs(%1169 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %1217 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1173, %1216 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%1169 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x56x56xf32>
    %1218 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %44 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%1171 : tensor<1x256x56x56xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x56x56xi1>
    %1219 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1218, %1217, %cst : tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<1xf32>) outs(%1169 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x56x56xf32>
    %1220 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %1219 : tensor<1x256xf32>, tensor<1x256x56x56xf32>) outs(%1169 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x56x56xf32>
    %1221 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %1220 : tensor<1x256xf32>, tensor<1x256x56x56xf32>) outs(%1169 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x56x56xf32>
    %1222 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1221 : tensor<1x256x56x56xf32>) outs(%1127 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %collapsed_221 = tensor.collapse_shape %1222 [[0, 1, 2], [3]] : tensor<1x56x56x256xf32> into tensor<3136x256xf32>
    %1223 = linalg.matmul ins(%collapsed_221, %1183 : tensor<3136x256xf32>, tensor<256x64xf32>) outs(%1181 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %1224 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%1179, %1223 : tensor<64xf32>, tensor<3136x64xf32>) outs(%1180 : tensor<3136x64xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<3136x64xf32>
    %expanded_222 = tensor.expand_shape %1224 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %1225 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_222 : tensor<1x56x56x64xf32>) outs(%1186 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %1226 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41, %42 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%1188 : tensor<1x64x56x56xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x64x56x56xi1>
    %1227 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1226, %1225, %cst : tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<1xf32>) outs(%1186 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x64x56x56xf32>
    %1228 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_215, %1227 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%1186 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x64x56x56xf32>
    %1229 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_216, %1228 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%1186 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x64x56x56xf32>
    %1230 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1229 : tensor<1x64x56x56xf32>) outs(%1193 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_223 = tensor.pad %1230 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %1231 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_223, %1200 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%1201 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %1232 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1179, %1231 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%1193 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x56x56x64xf32>
    %1233 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1232 : tensor<1x56x56x64xf32>) outs(%1186 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %1234 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39, %40 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%1188 : tensor<1x64x56x56xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x64x56x56xi1>
    %1235 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1234, %1233, %cst : tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<1xf32>) outs(%1186 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x64x56x56xf32>
    %1236 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_215, %1235 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%1186 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x64x56x56xf32>
    %1237 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_216, %1236 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%1186 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x64x56x56xf32>
    %1238 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1237 : tensor<1x64x56x56xf32>) outs(%1193 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %collapsed_224 = tensor.collapse_shape %1238 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %1239 = linalg.matmul ins(%collapsed_224, %1213 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%1163 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %1240 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%389, %1239 : tensor<256xf32>, tensor<3136x256xf32>) outs(%1162 : tensor<3136x256xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<3136x256xf32>
    %expanded_225 = tensor.expand_shape %1240 [[0, 1, 2], [3]] : tensor<3136x256xf32> into tensor<1x56x56x256xf32>
    %1241 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_225 : tensor<1x56x56x256xf32>) outs(%1169 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %1242 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1219, %1241 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%1169 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x56x56xf32>
    %1243 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37, %38 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%1171 : tensor<1x256x56x56xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x256x56x56xi1>
    %1244 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1243, %1242, %cst : tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<1xf32>) outs(%1169 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x56x56xf32>
    %1245 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %1244 : tensor<1x256xf32>, tensor<1x256x56x56xf32>) outs(%1169 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x56x56xf32>
    %1246 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %1245 : tensor<1x256xf32>, tensor<1x256x56x56xf32>) outs(%1169 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x256x56x56xf32>
    %1247 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1246 : tensor<1x256x56x56xf32>) outs(%1127 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %collapsed_226 = tensor.collapse_shape %1247 [[0, 1, 2], [3]] : tensor<1x56x56x256xf32> into tensor<3136x256xf32>
    %1248 = linalg.matmul ins(%collapsed_226, %1183 : tensor<3136x256xf32>, tensor<256x64xf32>) outs(%1181 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %1249 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%1179, %1248 : tensor<64xf32>, tensor<3136x64xf32>) outs(%1180 : tensor<3136x64xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<3136x64xf32>
    %expanded_227 = tensor.expand_shape %1249 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %1250 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_227 : tensor<1x56x56x64xf32>) outs(%1186 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %1251 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34, %35 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%1188 : tensor<1x64x56x56xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x64x56x56xi1>
    %1252 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1251, %1250, %cst : tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<1xf32>) outs(%1186 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x64x56x56xf32>
    %1253 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_215, %1252 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%1186 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x64x56x56xf32>
    %1254 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_216, %1253 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%1186 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x64x56x56xf32>
    %1255 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1254 : tensor<1x64x56x56xf32>) outs(%1193 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_228 = tensor.pad %1255 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %1256 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_228, %1200 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%1201 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %1257 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1179, %1256 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%1193 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x56x56x64xf32>
    %1258 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1257 : tensor<1x56x56x64xf32>) outs(%1186 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %1259 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32, %33 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%1188 : tensor<1x64x56x56xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x64x56x56xi1>
    %1260 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1259, %1258, %cst : tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<1xf32>) outs(%1186 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x64x56x56xf32>
    %1261 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_215, %1260 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%1186 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x64x56x56xf32>
    %1262 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_216, %1261 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%1186 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x64x56x56xf32>
    %1263 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1262 : tensor<1x64x56x56xf32>) outs(%1193 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %1264 = tensor.empty() : tensor<64x1x1x64xf32>
    %1265 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24 : tensor<64x1x1x64xf32>) outs(%1264 : tensor<64x1x1x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x1x1x64xf32>
    %collapsed_229 = tensor.collapse_shape %1263 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %collapsed_230 = tensor.collapse_shape %1265 [[0, 1, 2], [3]] : tensor<64x1x1x64xf32> into tensor<64x64xf32>
    %1266 = tensor.empty() : tensor<64x64xf32>
    %1267 = linalg.generic {indexing_maps = [#map12, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_230 : tensor<64x64xf32>) outs(%1266 : tensor<64x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x64xf32>
    %1268 = linalg.matmul ins(%collapsed_229, %1267 : tensor<3136x64xf32>, tensor<64x64xf32>) outs(%1181 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %1269 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%1179, %1268 : tensor<64xf32>, tensor<3136x64xf32>) outs(%1180 : tensor<3136x64xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<3136x64xf32>
    %expanded_231 = tensor.expand_shape %1269 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %1270 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_227, %expanded_231 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%1193 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x56x56x64xf32>
    %padded_232 = tensor.pad %30 low[0, 1, 1, 0] high[0, 0, 0, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x112x112x64xf32> to tensor<1x113x113x64xf32>
    %1271 = tensor.empty() : tensor<1x113x113x64xf32>
    %1272 = tensor.empty() : tensor<3x3xf32>
    %1273 = linalg.generic {indexing_maps = [#map17, #map18, #map19, #map19, #map17], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%padded_232, %1272, %31, %1270 : tensor<1x113x113x64xf32>, tensor<3x3xf32>, tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%1271 : tensor<1x113x113x64xf32>) {
    ^bb0(%in: f32, %in_242: f32, %in_243: f32, %in_244: f32, %out: f32):
      %1303 = arith.cmpf oge, %in, %in_243 : f32
      %1304 = arith.select %1303, %in_244, %cst_7 : f32
      %1305 = arith.addf %out, %1304 : f32
      linalg.yield %1305 : f32
    } -> tensor<1x113x113x64xf32>
    %extracted_slice_233 = tensor.extract_slice %1273[0, 1, 1, 0] [1, 112, 112, 64] [1, 1, 1, 1] : tensor<1x113x113x64xf32> to tensor<1x112x112x64xf32>
    %1274 = tensor.empty() : tensor<1x64x112x112xf32>
    %1275 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%extracted_slice_233 : tensor<1x112x112x64xf32>) outs(%1274 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x112x112xf32>
    %1276 = tensor.empty() : tensor<1x64x112x112xi1>
    %1277 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28, %29 : tensor<1x64x112x112xf32>, tensor<1x64x112x112xf32>) outs(%1276 : tensor<1x64x112x112xi1>) {
    ^bb0(%in: f32, %in_242: f32, %out: i1):
      %1303 = arith.cmpf oeq, %in, %in_242 : f32
      linalg.yield %1303 : i1
    } -> tensor<1x64x112x112xi1>
    %1278 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1277, %1275, %cst : tensor<1x64x112x112xi1>, tensor<1x64x112x112xf32>, tensor<1xf32>) outs(%1274 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: i1, %in_242: f32, %in_243: f32, %out: f32):
      %1303 = arith.select %in, %in_242, %in_243 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x64x112x112xf32>
    %1279 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_215, %1278 : tensor<1x64xf32>, tensor<1x64x112x112xf32>) outs(%1274 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x64x112x112xf32>
    %1280 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_216, %1279 : tensor<1x64xf32>, tensor<1x64x112x112xf32>) outs(%1274 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.mulf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x64x112x112xf32>
    %1281 = tensor.empty() : tensor<1x112x112x64xf32>
    %1282 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1280 : tensor<1x64x112x112xf32>) outs(%1281 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x112x112x64xf32>
    %1283 = tensor.empty() : tensor<3x7x7x64xf32>
    %1284 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26 : tensor<64x7x7x3xf32>) outs(%1283 : tensor<3x7x7x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x7x7x64xf32>
    %1285 = tensor.empty() : tensor<3xf32>
    %padded_234 = tensor.pad %1284 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<3x7x7x64xf32> to tensor<3x8x8x64xf32>
    %expanded_235 = tensor.expand_shape %padded_234 [[0], [1, 2], [3, 4], [5]] : tensor<3x8x8x64xf32> into tensor<3x4x2x4x2x64xf32>
    %1286 = tensor.empty() : tensor<2x2x3x4x4x64xf32>
    %1287 = linalg.generic {indexing_maps = [#map14, #map15], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_235 : tensor<3x4x2x4x2x64xf32>) outs(%1286 : tensor<2x2x3x4x4x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x3x4x4x64xf32>
    %collapsed_236 = tensor.collapse_shape %1287 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x3x4x4x64xf32> into tensor<12x4x4x64xf32>
    %1288 = tensor.empty() : tensor<12x4x4x64xf32>
    %1289 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%1288 : tensor<12x4x4x64xf32>) {
    ^bb0(%out: f32):
      %1303 = linalg.index 0 : index
      %1304 = linalg.index 1 : index
      %1305 = arith.subi %c3, %1304 : index
      %1306 = linalg.index 2 : index
      %1307 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_236[%1303, %1305, %1306, %1307] : tensor<12x4x4x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<12x4x4x64xf32>
    %1290 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%1288 : tensor<12x4x4x64xf32>) {
    ^bb0(%out: f32):
      %1303 = linalg.index 0 : index
      %1304 = linalg.index 1 : index
      %1305 = linalg.index 2 : index
      %1306 = arith.subi %c3, %1305 : index
      %1307 = linalg.index 3 : index
      %extracted = tensor.extract %1289[%1303, %1304, %1306, %1307] : tensor<12x4x4x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<12x4x4x64xf32>
    %padded_237 = tensor.pad %1282 low[%c0, %c3, %c3, %c0] high[%c0, %c3, %c3, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x112x112x64xf32> to tensor<1x118x118x64xf32>
    %1291 = tensor.empty() : tensor<4x4x64x12xf32>
    %1292 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1290 : tensor<12x4x4x64xf32>) outs(%1291 : tensor<4x4x64x12xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x4x64x12xf32>
    %1293 = tensor.empty() : tensor<1x115x115x12xf32>
    %1294 = linalg.fill ins(%cst_7 : f32) outs(%1293 : tensor<1x115x115x12xf32>) -> tensor<1x115x115x12xf32>
    %1295 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_237, %1292 : tensor<1x118x118x64xf32>, tensor<4x4x64x12xf32>) outs(%1294 : tensor<1x115x115x12xf32>) -> tensor<1x115x115x12xf32>
    %1296 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_4, %1295 : tensor<12xf32>, tensor<1x115x115x12xf32>) outs(%1293 : tensor<1x115x115x12xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x115x115x12xf32>
    %expanded_238 = tensor.expand_shape %1296 [[0], [1], [2], [3, 4, 5]] : tensor<1x115x115x12xf32> into tensor<1x115x115x2x2x3xf32>
    %1297 = tensor.empty() : tensor<1x115x2x115x2x3xf32>
    %1298 = linalg.generic {indexing_maps = [#map16, #map15], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_238 : tensor<1x115x115x2x2x3xf32>) outs(%1297 : tensor<1x115x2x115x2x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x115x2x115x2x3xf32>
    %collapsed_239 = tensor.collapse_shape %1298 [[0], [1, 2], [3, 4], [5]] : tensor<1x115x2x115x2x3xf32> into tensor<1x230x230x3xf32>
    %extracted_slice_240 = tensor.extract_slice %collapsed_239[0, 3, 3, 0] [1, 224, 224, 3] [1, 1, 1, 1] : tensor<1x230x230x3xf32> to tensor<1x224x224x3xf32>
    %1299 = tensor.empty() : tensor<1x224x224x3xf32>
    %expanded_241 = tensor.expand_shape %1285 [[0, 1]] : tensor<3xf32> into tensor<1x3xf32>
    %1300 = linalg.generic {indexing_maps = [#map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%extracted_slice_240, %expanded_241 : tensor<1x224x224x3xf32>, tensor<1x3xf32>) outs(%1299 : tensor<1x224x224x3xf32>) {
    ^bb0(%in: f32, %in_242: f32, %out: f32):
      %1303 = arith.addf %in, %in_242 : f32
      linalg.yield %1303 : f32
    } -> tensor<1x224x224x3xf32>
    %1301 = tensor.empty() : tensor<1x3x224x224xf32>
    %1302 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1300 : tensor<1x224x224x3xf32>) outs(%1301 : tensor<1x3x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3x224x224xf32>
    return %1302 : tensor<1x3x224x224xf32>
  }
}

