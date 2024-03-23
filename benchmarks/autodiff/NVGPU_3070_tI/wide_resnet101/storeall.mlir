#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
module attributes {torch.debug_module_name = "ResNet"} {
  ml_program.global private mutable @global910 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global909 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global901 : tensor<1x1024x7x7xf32>
  ml_program.global private mutable @global900 : tensor<1x1024x7x7xf32>
  ml_program.global private mutable @global893 : tensor<1x1024x7x7xf32>
  ml_program.global private mutable @global892 : tensor<1x1024x7x7xf32>
  ml_program.global private mutable @global885 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global884 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global876 : tensor<1x1024x7x7xf32>
  ml_program.global private mutable @global875 : tensor<1x1024x7x7xf32>
  ml_program.global private mutable @global868 : tensor<1x1024x7x7xf32>
  ml_program.global private mutable @global867 : tensor<1x1024x7x7xf32>
  ml_program.global private mutable @global860 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global859 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global849 : tensor<1x2048x1x1xf32>
  ml_program.global private mutable @global843 : tensor<1x1024x7x7xf32>
  ml_program.global private mutable @global842 : tensor<1x1024x7x7xf32>
  ml_program.global private mutable @global835 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global834 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global827 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global826 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global818 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global817 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global810 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global809 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global802 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global801 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global793 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global792 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global785 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global784 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global777 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global776 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global768 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global767 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global760 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global759 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global752 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global751 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global743 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global742 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global735 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global734 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global727 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global726 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global718 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global717 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global710 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global709 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global702 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global701 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global693 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global692 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global685 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global684 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global677 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global676 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global668 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global667 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global660 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global659 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global652 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global651 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global643 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global642 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global635 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global634 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global627 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global626 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global618 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global617 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global610 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global609 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global602 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global601 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global593 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global592 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global585 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global584 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global577 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global576 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global568 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global567 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global560 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global559 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global552 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global551 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global543 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global542 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global535 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global534 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global527 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global526 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global518 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global517 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global510 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global509 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global502 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global501 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global493 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global492 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global485 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global484 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global477 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global476 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global468 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global467 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global460 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global459 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global452 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global451 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global443 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global442 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global435 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global434 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global427 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global426 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global418 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global417 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global410 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global409 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global402 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global401 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global393 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global392 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global385 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global384 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global377 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global376 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global368 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global367 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global360 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global359 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global352 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global351 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global343 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global342 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global335 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global334 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global327 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global326 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global318 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global317 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global310 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global309 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global302 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global301 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global293 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global292 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global285 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global284 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global277 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global276 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global266 : tensor<1x1024x1x1xf32>
  ml_program.global private mutable @global260 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global259 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global252 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global251 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global244 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global243 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global235 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global234 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global227 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global226 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global219 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global218 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global210 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global209 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global202 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global201 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global194 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global193 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global185 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global184 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global177 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global176 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global169 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global168 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global158 : tensor<1x512x1x1xf32>
  ml_program.global private mutable @global152 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global151 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global144 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global143 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global136 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global135 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global127 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global126 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global119 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global118 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global111 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global110 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global102 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global101 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global94 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global93 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global86 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global85 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global75 : tensor<1x256x1x1xf32>
  ml_program.global private mutable @global69 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global68 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global61 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global60 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global57 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global52 : tensor<1x56x56x64xf32>
  ml_program.global private mutable @global51 : tensor<1x112x112x64xf32>
  ml_program.global private mutable @global50 : tensor<1x64x112x112xf32>
  ml_program.global private mutable @global49 : tensor<1x64x112x112xf32>
  ml_program.global private mutable @global46 : tensor<1x64x1x1xf32>
  ml_program.global private mutable @global40 : tensor<64x7x7x3xf32>
  ml_program.global private mutable @global39 : tensor<1x64x1x1xf32>
  ml_program.global private mutable @global37 : tensor<128x1x1x64xf32>
  ml_program.global private mutable @global36 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global34 : tensor<128x3x3x128xf32>
  ml_program.global private mutable @global33 : tensor<256x1x1x128xf32>
  ml_program.global private mutable @global32 : tensor<1x256x1x1xf32>
  ml_program.global private mutable @global30 : tensor<256x1x1x64xf32>
  ml_program.global private mutable @global29 : tensor<128x1x1x256xf32>
  ml_program.global private mutable @global28 : tensor<256x1x1x256xf32>
  ml_program.global private mutable @global27 : tensor<256x3x3x256xf32>
  ml_program.global private mutable @global26 : tensor<512x1x1x256xf32>
  ml_program.global private mutable @global25 : tensor<1x512x1x1xf32>
  ml_program.global private mutable @global23 : tensor<256x1x1x512xf32>
  ml_program.global private mutable @global22 : tensor<512x1x1x512xf32>
  ml_program.global private mutable @global21 : tensor<512x3x3x512xf32>
  ml_program.global private mutable @global20 : tensor<1024x1x1x512xf32>
  ml_program.global private mutable @global19 : tensor<1x1024x1x1xf32>
  ml_program.global private mutable @global17 : tensor<512x1x1x1024xf32>
  ml_program.global private mutable @global16 : tensor<1024x1x1x1024xf32>
  ml_program.global private mutable @global15 : tensor<1024x3x3x1024xf32>
  ml_program.global private mutable @global14 : tensor<2048x1x1x1024xf32>
  ml_program.global private mutable @global13 : tensor<1x2048x1x1xf32>
  ml_program.global private mutable @global11 : tensor<1024x1x1x2048xf32>
  ml_program.global private mutable @global10 : tensor<1x2048x1000xf32>
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %0 = "tosa.const"() {value = dense<0.000000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %1 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3 = "tosa.const"() {value = dense<0.000000e+00> : tensor<128xf32>} : () -> tensor<128xf32>
    %4 = "tosa.const"() {value = dense<0.000000e+00> : tensor<256xf32>} : () -> tensor<256xf32>
    %5 = "tosa.const"() {value = dense<0.000000e+00> : tensor<512xf32>} : () -> tensor<512xf32>
    %6 = "tosa.const"() {value = dense<0.000000e+00> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %7 = "tosa.const"() {value = dense<0.000000e+00> : tensor<2048xf32>} : () -> tensor<2048xf32>
    %8 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1000xf32>} : () -> tensor<1x1000xf32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x2048x1000xf32>} : () -> tensor<1x2048x1000xf32>
    %10 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x1x1x2048xf32>} : () -> tensor<1024x1x1x2048xf32>
    %11 = "tosa.const"() {value = dense<7.778000e-02> : tensor<2048x1x1xf32>} : () -> tensor<2048x1x1xf32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x2048x1x1xf32>} : () -> tensor<1x2048x1x1xf32>
    %13 = "tosa.const"() {value = dense<7.777000e-02> : tensor<2048x1x1x1024xf32>} : () -> tensor<2048x1x1x1024xf32>
    %14 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x3x3x1024xf32>} : () -> tensor<1024x3x3x1024xf32>
    %15 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x1x1x1024xf32>} : () -> tensor<1024x1x1x1024xf32>
    %16 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x1024xf32>} : () -> tensor<512x1x1x1024xf32>
    %17 = "tosa.const"() {value = dense<7.778000e-02> : tensor<1024x1x1xf32>} : () -> tensor<1024x1x1xf32>
    %18 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1024x1x1xf32>} : () -> tensor<1x1024x1x1xf32>
    %19 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x1x1x512xf32>} : () -> tensor<1024x1x1x512xf32>
    %20 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x3x3x512xf32>} : () -> tensor<512x3x3x512xf32>
    %21 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x512xf32>} : () -> tensor<512x1x1x512xf32>
    %22 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x512xf32>} : () -> tensor<256x1x1x512xf32>
    %23 = "tosa.const"() {value = dense<7.778000e-02> : tensor<512x1x1xf32>} : () -> tensor<512x1x1xf32>
    %24 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %25 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x256xf32>} : () -> tensor<512x1x1x256xf32>
    %26 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x256xf32>} : () -> tensor<256x3x3x256xf32>
    %27 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x256xf32>} : () -> tensor<256x1x1x256xf32>
    %28 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x256xf32>} : () -> tensor<128x1x1x256xf32>
    %29 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x64xf32>} : () -> tensor<256x1x1x64xf32>
    %30 = "tosa.const"() {value = dense<7.778000e-02> : tensor<256x1x1xf32>} : () -> tensor<256x1x1xf32>
    %31 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %32 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x128xf32>} : () -> tensor<256x1x1x128xf32>
    %33 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x128xf32>} : () -> tensor<128x3x3x128xf32>
    %34 = "tosa.const"() {value = dense<7.778000e-02> : tensor<128x1x1xf32>} : () -> tensor<128x1x1xf32>
    %35 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %36 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x64xf32>} : () -> tensor<128x1x1x64xf32>
    %37 = "tosa.const"() {value = dense<7.778000e-02> : tensor<64x1x1xf32>} : () -> tensor<64x1x1xf32>
    %38 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %39 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x7x7x3xf32>} : () -> tensor<64x7x7x3xf32>
    ml_program.global_store @global10 = %9 : tensor<1x2048x1000xf32>
    ml_program.global_store @global11 = %10 : tensor<1024x1x1x2048xf32>
    ml_program.global_store @global13 = %12 : tensor<1x2048x1x1xf32>
    ml_program.global_store @global14 = %13 : tensor<2048x1x1x1024xf32>
    ml_program.global_store @global15 = %14 : tensor<1024x3x3x1024xf32>
    ml_program.global_store @global16 = %15 : tensor<1024x1x1x1024xf32>
    ml_program.global_store @global17 = %16 : tensor<512x1x1x1024xf32>
    ml_program.global_store @global19 = %18 : tensor<1x1024x1x1xf32>
    ml_program.global_store @global20 = %19 : tensor<1024x1x1x512xf32>
    ml_program.global_store @global21 = %20 : tensor<512x3x3x512xf32>
    ml_program.global_store @global22 = %21 : tensor<512x1x1x512xf32>
    ml_program.global_store @global23 = %22 : tensor<256x1x1x512xf32>
    ml_program.global_store @global25 = %24 : tensor<1x512x1x1xf32>
    ml_program.global_store @global26 = %25 : tensor<512x1x1x256xf32>
    ml_program.global_store @global27 = %26 : tensor<256x3x3x256xf32>
    ml_program.global_store @global28 = %27 : tensor<256x1x1x256xf32>
    ml_program.global_store @global29 = %28 : tensor<128x1x1x256xf32>
    ml_program.global_store @global30 = %29 : tensor<256x1x1x64xf32>
    ml_program.global_store @global32 = %31 : tensor<1x256x1x1xf32>
    ml_program.global_store @global33 = %32 : tensor<256x1x1x128xf32>
    ml_program.global_store @global34 = %33 : tensor<128x3x3x128xf32>
    ml_program.global_store @global36 = %35 : tensor<1x128x1x1xf32>
    ml_program.global_store @global37 = %36 : tensor<128x1x1x64xf32>
    ml_program.global_store @global39 = %38 : tensor<1x64x1x1xf32>
    ml_program.global_store @global40 = %39 : tensor<64x7x7x3xf32>
    %40 = "tosa.transpose"(%arg0, %1) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %41 = "tosa.conv2d"(%40, %39, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 3, 3>, stride = array<i64: 2, 2>} : (tensor<1x224x224x3xf32>, tensor<64x7x7x3xf32>, tensor<64xf32>) -> tensor<1x112x112x64xf32>
    %42 = "tosa.transpose"(%41, %2) : (tensor<1x112x112x64xf32>, tensor<4xi32>) -> tensor<1x64x112x112xf32>
    %43 = "tosa.sub"(%42, %38) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %44 = "tosa.rsqrt"(%37) : (tensor<64x1x1xf32>) -> tensor<64x1x1xf32>
    %45 = "tosa.reshape"(%44) {new_shape = array<i64: 1, 64, 1, 1>} : (tensor<64x1x1xf32>) -> tensor<1x64x1x1xf32>
    ml_program.global_store @global46 = %45 : tensor<1x64x1x1xf32>
    %46 = "tosa.mul"(%43, %45) {shift = 0 : i8} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %47 = "tosa.mul"(%46, %38) {shift = 0 : i8} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %48 = "tosa.add"(%47, %38) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    ml_program.global_store @global49 = %48 : tensor<1x64x112x112xf32>
    %49 = "tosa.clamp"(%48) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    ml_program.global_store @global50 = %49 : tensor<1x64x112x112xf32>
    %50 = "tosa.transpose"(%49, %1) : (tensor<1x64x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x64xf32>
    ml_program.global_store @global51 = %50 : tensor<1x112x112x64xf32>
    %51 = "tosa.max_pool2d"(%50) {kernel = array<i64: 3, 3>, pad = array<i64: 1, 0, 1, 0>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>) -> tensor<1x56x56x64xf32>
    ml_program.global_store @global52 = %51 : tensor<1x56x56x64xf32>
    %52 = "tosa.conv2d"(%51, %36, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<128x1x1x64xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %53 = "tosa.transpose"(%52, %2) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %54 = "tosa.sub"(%53, %35) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %55 = "tosa.rsqrt"(%34) : (tensor<128x1x1xf32>) -> tensor<128x1x1xf32>
    %56 = "tosa.reshape"(%55) {new_shape = array<i64: 1, 128, 1, 1>} : (tensor<128x1x1xf32>) -> tensor<1x128x1x1xf32>
    ml_program.global_store @global57 = %56 : tensor<1x128x1x1xf32>
    %57 = "tosa.mul"(%54, %56) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %58 = "tosa.mul"(%57, %35) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %59 = "tosa.add"(%58, %35) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global60 = %59 : tensor<1x128x56x56xf32>
    %60 = "tosa.clamp"(%59) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global61 = %60 : tensor<1x128x56x56xf32>
    %61 = "tosa.transpose"(%60, %1) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %62 = "tosa.conv2d"(%61, %33, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %63 = "tosa.transpose"(%62, %2) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %64 = "tosa.sub"(%63, %35) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %65 = "tosa.mul"(%64, %56) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %66 = "tosa.mul"(%65, %35) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %67 = "tosa.add"(%66, %35) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global68 = %67 : tensor<1x128x56x56xf32>
    %68 = "tosa.clamp"(%67) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global69 = %68 : tensor<1x128x56x56xf32>
    %69 = "tosa.transpose"(%68, %1) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %70 = "tosa.conv2d"(%69, %32, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %71 = "tosa.transpose"(%70, %2) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %72 = "tosa.sub"(%71, %31) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %73 = "tosa.rsqrt"(%30) : (tensor<256x1x1xf32>) -> tensor<256x1x1xf32>
    %74 = "tosa.reshape"(%73) {new_shape = array<i64: 1, 256, 1, 1>} : (tensor<256x1x1xf32>) -> tensor<1x256x1x1xf32>
    ml_program.global_store @global75 = %74 : tensor<1x256x1x1xf32>
    %75 = "tosa.mul"(%72, %74) {shift = 0 : i8} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %76 = "tosa.mul"(%75, %31) {shift = 0 : i8} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %77 = "tosa.add"(%76, %31) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %78 = "tosa.conv2d"(%51, %29, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %79 = "tosa.transpose"(%78, %2) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %80 = "tosa.sub"(%79, %31) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %81 = "tosa.mul"(%80, %74) {shift = 0 : i8} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %82 = "tosa.mul"(%81, %31) {shift = 0 : i8} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %83 = "tosa.add"(%82, %31) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %84 = "tosa.add"(%77, %83) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global85 = %84 : tensor<1x256x56x56xf32>
    %85 = "tosa.clamp"(%84) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global86 = %85 : tensor<1x256x56x56xf32>
    %86 = "tosa.transpose"(%85, %1) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %87 = "tosa.conv2d"(%86, %28, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %88 = "tosa.transpose"(%87, %2) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %89 = "tosa.sub"(%88, %35) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %90 = "tosa.mul"(%89, %56) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %91 = "tosa.mul"(%90, %35) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %92 = "tosa.add"(%91, %35) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global93 = %92 : tensor<1x128x56x56xf32>
    %93 = "tosa.clamp"(%92) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global94 = %93 : tensor<1x128x56x56xf32>
    %94 = "tosa.transpose"(%93, %1) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %95 = "tosa.conv2d"(%94, %33, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %96 = "tosa.transpose"(%95, %2) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %97 = "tosa.sub"(%96, %35) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %98 = "tosa.mul"(%97, %56) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %99 = "tosa.mul"(%98, %35) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %100 = "tosa.add"(%99, %35) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global101 = %100 : tensor<1x128x56x56xf32>
    %101 = "tosa.clamp"(%100) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global102 = %101 : tensor<1x128x56x56xf32>
    %102 = "tosa.transpose"(%101, %1) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %103 = "tosa.conv2d"(%102, %32, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %104 = "tosa.transpose"(%103, %2) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %105 = "tosa.sub"(%104, %31) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %106 = "tosa.mul"(%105, %74) {shift = 0 : i8} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %107 = "tosa.mul"(%106, %31) {shift = 0 : i8} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %108 = "tosa.add"(%107, %31) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %109 = "tosa.add"(%108, %85) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global110 = %109 : tensor<1x256x56x56xf32>
    %110 = "tosa.clamp"(%109) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global111 = %110 : tensor<1x256x56x56xf32>
    %111 = "tosa.transpose"(%110, %1) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %112 = "tosa.conv2d"(%111, %28, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %113 = "tosa.transpose"(%112, %2) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %114 = "tosa.sub"(%113, %35) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %115 = "tosa.mul"(%114, %56) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %116 = "tosa.mul"(%115, %35) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %117 = "tosa.add"(%116, %35) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global118 = %117 : tensor<1x128x56x56xf32>
    %118 = "tosa.clamp"(%117) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global119 = %118 : tensor<1x128x56x56xf32>
    %119 = "tosa.transpose"(%118, %1) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %120 = "tosa.conv2d"(%119, %33, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %121 = "tosa.transpose"(%120, %2) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %122 = "tosa.sub"(%121, %35) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %123 = "tosa.mul"(%122, %56) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %124 = "tosa.mul"(%123, %35) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %125 = "tosa.add"(%124, %35) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global126 = %125 : tensor<1x128x56x56xf32>
    %126 = "tosa.clamp"(%125) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global127 = %126 : tensor<1x128x56x56xf32>
    %127 = "tosa.transpose"(%126, %1) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %128 = "tosa.conv2d"(%127, %32, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %129 = "tosa.transpose"(%128, %2) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %130 = "tosa.sub"(%129, %31) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %131 = "tosa.mul"(%130, %74) {shift = 0 : i8} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %132 = "tosa.mul"(%131, %31) {shift = 0 : i8} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %133 = "tosa.add"(%132, %31) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %134 = "tosa.add"(%133, %110) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global135 = %134 : tensor<1x256x56x56xf32>
    %135 = "tosa.clamp"(%134) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global136 = %135 : tensor<1x256x56x56xf32>
    %136 = "tosa.transpose"(%135, %1) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %137 = "tosa.conv2d"(%136, %27, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x1x1x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %138 = "tosa.transpose"(%137, %2) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %139 = "tosa.sub"(%138, %31) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %140 = "tosa.mul"(%139, %74) {shift = 0 : i8} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %141 = "tosa.mul"(%140, %31) {shift = 0 : i8} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %142 = "tosa.add"(%141, %31) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global143 = %142 : tensor<1x256x56x56xf32>
    %143 = "tosa.clamp"(%142) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global144 = %143 : tensor<1x256x56x56xf32>
    %144 = "tosa.transpose"(%143, %1) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %145 = "tosa.conv2d"(%144, %26, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x56x56x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %146 = "tosa.transpose"(%145, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %147 = "tosa.sub"(%146, %31) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %148 = "tosa.mul"(%147, %74) {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %149 = "tosa.mul"(%148, %31) {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %150 = "tosa.add"(%149, %31) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global151 = %150 : tensor<1x256x28x28xf32>
    %151 = "tosa.clamp"(%150) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global152 = %151 : tensor<1x256x28x28xf32>
    %152 = "tosa.transpose"(%151, %1) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %153 = "tosa.conv2d"(%152, %25, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %154 = "tosa.transpose"(%153, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %155 = "tosa.sub"(%154, %24) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %156 = "tosa.rsqrt"(%23) : (tensor<512x1x1xf32>) -> tensor<512x1x1xf32>
    %157 = "tosa.reshape"(%156) {new_shape = array<i64: 1, 512, 1, 1>} : (tensor<512x1x1xf32>) -> tensor<1x512x1x1xf32>
    ml_program.global_store @global158 = %157 : tensor<1x512x1x1xf32>
    %158 = "tosa.mul"(%155, %157) {shift = 0 : i8} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %159 = "tosa.mul"(%158, %24) {shift = 0 : i8} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %160 = "tosa.add"(%159, %24) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %161 = "tosa.conv2d"(%136, %25, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x56x56x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %162 = "tosa.transpose"(%161, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %163 = "tosa.sub"(%162, %24) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %164 = "tosa.mul"(%163, %157) {shift = 0 : i8} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %165 = "tosa.mul"(%164, %24) {shift = 0 : i8} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %166 = "tosa.add"(%165, %24) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %167 = "tosa.add"(%160, %166) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global168 = %167 : tensor<1x512x28x28xf32>
    %168 = "tosa.clamp"(%167) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global169 = %168 : tensor<1x512x28x28xf32>
    %169 = "tosa.transpose"(%168, %1) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %170 = "tosa.conv2d"(%169, %22, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %171 = "tosa.transpose"(%170, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %172 = "tosa.sub"(%171, %31) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %173 = "tosa.mul"(%172, %74) {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %174 = "tosa.mul"(%173, %31) {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %175 = "tosa.add"(%174, %31) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global176 = %175 : tensor<1x256x28x28xf32>
    %176 = "tosa.clamp"(%175) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global177 = %176 : tensor<1x256x28x28xf32>
    %177 = "tosa.transpose"(%176, %1) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %178 = "tosa.conv2d"(%177, %26, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %179 = "tosa.transpose"(%178, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %180 = "tosa.sub"(%179, %31) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %181 = "tosa.mul"(%180, %74) {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %182 = "tosa.mul"(%181, %31) {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %183 = "tosa.add"(%182, %31) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global184 = %183 : tensor<1x256x28x28xf32>
    %184 = "tosa.clamp"(%183) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global185 = %184 : tensor<1x256x28x28xf32>
    %185 = "tosa.transpose"(%184, %1) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %186 = "tosa.conv2d"(%185, %25, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %187 = "tosa.transpose"(%186, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %188 = "tosa.sub"(%187, %24) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %189 = "tosa.mul"(%188, %157) {shift = 0 : i8} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %190 = "tosa.mul"(%189, %24) {shift = 0 : i8} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %191 = "tosa.add"(%190, %24) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %192 = "tosa.add"(%191, %168) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global193 = %192 : tensor<1x512x28x28xf32>
    %193 = "tosa.clamp"(%192) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global194 = %193 : tensor<1x512x28x28xf32>
    %194 = "tosa.transpose"(%193, %1) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %195 = "tosa.conv2d"(%194, %22, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %196 = "tosa.transpose"(%195, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %197 = "tosa.sub"(%196, %31) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %198 = "tosa.mul"(%197, %74) {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %199 = "tosa.mul"(%198, %31) {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %200 = "tosa.add"(%199, %31) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global201 = %200 : tensor<1x256x28x28xf32>
    %201 = "tosa.clamp"(%200) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global202 = %201 : tensor<1x256x28x28xf32>
    %202 = "tosa.transpose"(%201, %1) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %203 = "tosa.conv2d"(%202, %26, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %204 = "tosa.transpose"(%203, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %205 = "tosa.sub"(%204, %31) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %206 = "tosa.mul"(%205, %74) {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %207 = "tosa.mul"(%206, %31) {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %208 = "tosa.add"(%207, %31) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global209 = %208 : tensor<1x256x28x28xf32>
    %209 = "tosa.clamp"(%208) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global210 = %209 : tensor<1x256x28x28xf32>
    %210 = "tosa.transpose"(%209, %1) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %211 = "tosa.conv2d"(%210, %25, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %212 = "tosa.transpose"(%211, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %213 = "tosa.sub"(%212, %24) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %214 = "tosa.mul"(%213, %157) {shift = 0 : i8} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %215 = "tosa.mul"(%214, %24) {shift = 0 : i8} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %216 = "tosa.add"(%215, %24) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %217 = "tosa.add"(%216, %193) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global218 = %217 : tensor<1x512x28x28xf32>
    %218 = "tosa.clamp"(%217) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global219 = %218 : tensor<1x512x28x28xf32>
    %219 = "tosa.transpose"(%218, %1) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %220 = "tosa.conv2d"(%219, %22, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %221 = "tosa.transpose"(%220, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %222 = "tosa.sub"(%221, %31) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %223 = "tosa.mul"(%222, %74) {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %224 = "tosa.mul"(%223, %31) {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %225 = "tosa.add"(%224, %31) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global226 = %225 : tensor<1x256x28x28xf32>
    %226 = "tosa.clamp"(%225) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global227 = %226 : tensor<1x256x28x28xf32>
    %227 = "tosa.transpose"(%226, %1) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %228 = "tosa.conv2d"(%227, %26, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %229 = "tosa.transpose"(%228, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %230 = "tosa.sub"(%229, %31) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %231 = "tosa.mul"(%230, %74) {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %232 = "tosa.mul"(%231, %31) {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %233 = "tosa.add"(%232, %31) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global234 = %233 : tensor<1x256x28x28xf32>
    %234 = "tosa.clamp"(%233) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global235 = %234 : tensor<1x256x28x28xf32>
    %235 = "tosa.transpose"(%234, %1) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %236 = "tosa.conv2d"(%235, %25, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %237 = "tosa.transpose"(%236, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %238 = "tosa.sub"(%237, %24) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %239 = "tosa.mul"(%238, %157) {shift = 0 : i8} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %240 = "tosa.mul"(%239, %24) {shift = 0 : i8} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %241 = "tosa.add"(%240, %24) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %242 = "tosa.add"(%241, %218) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global243 = %242 : tensor<1x512x28x28xf32>
    %243 = "tosa.clamp"(%242) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global244 = %243 : tensor<1x512x28x28xf32>
    %244 = "tosa.transpose"(%243, %1) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %245 = "tosa.conv2d"(%244, %21, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x1x1x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %246 = "tosa.transpose"(%245, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %247 = "tosa.sub"(%246, %24) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %248 = "tosa.mul"(%247, %157) {shift = 0 : i8} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %249 = "tosa.mul"(%248, %24) {shift = 0 : i8} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %250 = "tosa.add"(%249, %24) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global251 = %250 : tensor<1x512x28x28xf32>
    %251 = "tosa.clamp"(%250) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global252 = %251 : tensor<1x512x28x28xf32>
    %252 = "tosa.transpose"(%251, %1) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %253 = "tosa.conv2d"(%252, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %254 = "tosa.transpose"(%253, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %255 = "tosa.sub"(%254, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %256 = "tosa.mul"(%255, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %257 = "tosa.mul"(%256, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %258 = "tosa.add"(%257, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global259 = %258 : tensor<1x512x14x14xf32>
    %259 = "tosa.clamp"(%258) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global260 = %259 : tensor<1x512x14x14xf32>
    %260 = "tosa.transpose"(%259, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %261 = "tosa.conv2d"(%260, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %262 = "tosa.transpose"(%261, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %263 = "tosa.sub"(%262, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %264 = "tosa.rsqrt"(%17) : (tensor<1024x1x1xf32>) -> tensor<1024x1x1xf32>
    %265 = "tosa.reshape"(%264) {new_shape = array<i64: 1, 1024, 1, 1>} : (tensor<1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    ml_program.global_store @global266 = %265 : tensor<1x1024x1x1xf32>
    %266 = "tosa.mul"(%263, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %267 = "tosa.mul"(%266, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %268 = "tosa.add"(%267, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %269 = "tosa.conv2d"(%244, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %270 = "tosa.transpose"(%269, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %271 = "tosa.sub"(%270, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %272 = "tosa.mul"(%271, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %273 = "tosa.mul"(%272, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %274 = "tosa.add"(%273, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %275 = "tosa.add"(%268, %274) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global276 = %275 : tensor<1x1024x14x14xf32>
    %276 = "tosa.clamp"(%275) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global277 = %276 : tensor<1x1024x14x14xf32>
    %277 = "tosa.transpose"(%276, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %278 = "tosa.conv2d"(%277, %16, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %279 = "tosa.transpose"(%278, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %280 = "tosa.sub"(%279, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %281 = "tosa.mul"(%280, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %282 = "tosa.mul"(%281, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %283 = "tosa.add"(%282, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global284 = %283 : tensor<1x512x14x14xf32>
    %284 = "tosa.clamp"(%283) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global285 = %284 : tensor<1x512x14x14xf32>
    %285 = "tosa.transpose"(%284, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %286 = "tosa.conv2d"(%285, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %287 = "tosa.transpose"(%286, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %288 = "tosa.sub"(%287, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %289 = "tosa.mul"(%288, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %290 = "tosa.mul"(%289, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %291 = "tosa.add"(%290, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global292 = %291 : tensor<1x512x14x14xf32>
    %292 = "tosa.clamp"(%291) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global293 = %292 : tensor<1x512x14x14xf32>
    %293 = "tosa.transpose"(%292, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %294 = "tosa.conv2d"(%293, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %295 = "tosa.transpose"(%294, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %296 = "tosa.sub"(%295, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %297 = "tosa.mul"(%296, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %298 = "tosa.mul"(%297, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %299 = "tosa.add"(%298, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %300 = "tosa.add"(%299, %276) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global301 = %300 : tensor<1x1024x14x14xf32>
    %301 = "tosa.clamp"(%300) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global302 = %301 : tensor<1x1024x14x14xf32>
    %302 = "tosa.transpose"(%301, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %303 = "tosa.conv2d"(%302, %16, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %304 = "tosa.transpose"(%303, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %305 = "tosa.sub"(%304, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %306 = "tosa.mul"(%305, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %307 = "tosa.mul"(%306, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %308 = "tosa.add"(%307, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global309 = %308 : tensor<1x512x14x14xf32>
    %309 = "tosa.clamp"(%308) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global310 = %309 : tensor<1x512x14x14xf32>
    %310 = "tosa.transpose"(%309, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %311 = "tosa.conv2d"(%310, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %312 = "tosa.transpose"(%311, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %313 = "tosa.sub"(%312, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %314 = "tosa.mul"(%313, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %315 = "tosa.mul"(%314, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %316 = "tosa.add"(%315, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global317 = %316 : tensor<1x512x14x14xf32>
    %317 = "tosa.clamp"(%316) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global318 = %317 : tensor<1x512x14x14xf32>
    %318 = "tosa.transpose"(%317, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %319 = "tosa.conv2d"(%318, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %320 = "tosa.transpose"(%319, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %321 = "tosa.sub"(%320, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %322 = "tosa.mul"(%321, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %323 = "tosa.mul"(%322, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %324 = "tosa.add"(%323, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %325 = "tosa.add"(%324, %301) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global326 = %325 : tensor<1x1024x14x14xf32>
    %326 = "tosa.clamp"(%325) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global327 = %326 : tensor<1x1024x14x14xf32>
    %327 = "tosa.transpose"(%326, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %328 = "tosa.conv2d"(%327, %16, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %329 = "tosa.transpose"(%328, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %330 = "tosa.sub"(%329, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %331 = "tosa.mul"(%330, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %332 = "tosa.mul"(%331, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %333 = "tosa.add"(%332, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global334 = %333 : tensor<1x512x14x14xf32>
    %334 = "tosa.clamp"(%333) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global335 = %334 : tensor<1x512x14x14xf32>
    %335 = "tosa.transpose"(%334, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %336 = "tosa.conv2d"(%335, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %337 = "tosa.transpose"(%336, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %338 = "tosa.sub"(%337, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %339 = "tosa.mul"(%338, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %340 = "tosa.mul"(%339, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %341 = "tosa.add"(%340, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global342 = %341 : tensor<1x512x14x14xf32>
    %342 = "tosa.clamp"(%341) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global343 = %342 : tensor<1x512x14x14xf32>
    %343 = "tosa.transpose"(%342, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %344 = "tosa.conv2d"(%343, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %345 = "tosa.transpose"(%344, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %346 = "tosa.sub"(%345, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %347 = "tosa.mul"(%346, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %348 = "tosa.mul"(%347, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %349 = "tosa.add"(%348, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %350 = "tosa.add"(%349, %326) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global351 = %350 : tensor<1x1024x14x14xf32>
    %351 = "tosa.clamp"(%350) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global352 = %351 : tensor<1x1024x14x14xf32>
    %352 = "tosa.transpose"(%351, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %353 = "tosa.conv2d"(%352, %16, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %354 = "tosa.transpose"(%353, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %355 = "tosa.sub"(%354, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %356 = "tosa.mul"(%355, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %357 = "tosa.mul"(%356, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %358 = "tosa.add"(%357, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global359 = %358 : tensor<1x512x14x14xf32>
    %359 = "tosa.clamp"(%358) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global360 = %359 : tensor<1x512x14x14xf32>
    %360 = "tosa.transpose"(%359, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %361 = "tosa.conv2d"(%360, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %362 = "tosa.transpose"(%361, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %363 = "tosa.sub"(%362, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %364 = "tosa.mul"(%363, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %365 = "tosa.mul"(%364, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %366 = "tosa.add"(%365, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global367 = %366 : tensor<1x512x14x14xf32>
    %367 = "tosa.clamp"(%366) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global368 = %367 : tensor<1x512x14x14xf32>
    %368 = "tosa.transpose"(%367, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %369 = "tosa.conv2d"(%368, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %370 = "tosa.transpose"(%369, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %371 = "tosa.sub"(%370, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %372 = "tosa.mul"(%371, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %373 = "tosa.mul"(%372, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %374 = "tosa.add"(%373, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %375 = "tosa.add"(%374, %351) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global376 = %375 : tensor<1x1024x14x14xf32>
    %376 = "tosa.clamp"(%375) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global377 = %376 : tensor<1x1024x14x14xf32>
    %377 = "tosa.transpose"(%376, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %378 = "tosa.conv2d"(%377, %16, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %379 = "tosa.transpose"(%378, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %380 = "tosa.sub"(%379, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %381 = "tosa.mul"(%380, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %382 = "tosa.mul"(%381, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %383 = "tosa.add"(%382, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global384 = %383 : tensor<1x512x14x14xf32>
    %384 = "tosa.clamp"(%383) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global385 = %384 : tensor<1x512x14x14xf32>
    %385 = "tosa.transpose"(%384, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %386 = "tosa.conv2d"(%385, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %387 = "tosa.transpose"(%386, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %388 = "tosa.sub"(%387, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %389 = "tosa.mul"(%388, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %390 = "tosa.mul"(%389, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %391 = "tosa.add"(%390, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global392 = %391 : tensor<1x512x14x14xf32>
    %392 = "tosa.clamp"(%391) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global393 = %392 : tensor<1x512x14x14xf32>
    %393 = "tosa.transpose"(%392, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %394 = "tosa.conv2d"(%393, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %395 = "tosa.transpose"(%394, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %396 = "tosa.sub"(%395, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %397 = "tosa.mul"(%396, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %398 = "tosa.mul"(%397, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %399 = "tosa.add"(%398, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %400 = "tosa.add"(%399, %376) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global401 = %400 : tensor<1x1024x14x14xf32>
    %401 = "tosa.clamp"(%400) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global402 = %401 : tensor<1x1024x14x14xf32>
    %402 = "tosa.transpose"(%401, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %403 = "tosa.conv2d"(%402, %16, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %404 = "tosa.transpose"(%403, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %405 = "tosa.sub"(%404, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %406 = "tosa.mul"(%405, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %407 = "tosa.mul"(%406, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %408 = "tosa.add"(%407, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global409 = %408 : tensor<1x512x14x14xf32>
    %409 = "tosa.clamp"(%408) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global410 = %409 : tensor<1x512x14x14xf32>
    %410 = "tosa.transpose"(%409, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %411 = "tosa.conv2d"(%410, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %412 = "tosa.transpose"(%411, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %413 = "tosa.sub"(%412, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %414 = "tosa.mul"(%413, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %415 = "tosa.mul"(%414, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %416 = "tosa.add"(%415, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global417 = %416 : tensor<1x512x14x14xf32>
    %417 = "tosa.clamp"(%416) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global418 = %417 : tensor<1x512x14x14xf32>
    %418 = "tosa.transpose"(%417, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %419 = "tosa.conv2d"(%418, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %420 = "tosa.transpose"(%419, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %421 = "tosa.sub"(%420, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %422 = "tosa.mul"(%421, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %423 = "tosa.mul"(%422, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %424 = "tosa.add"(%423, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %425 = "tosa.add"(%424, %401) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global426 = %425 : tensor<1x1024x14x14xf32>
    %426 = "tosa.clamp"(%425) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global427 = %426 : tensor<1x1024x14x14xf32>
    %427 = "tosa.transpose"(%426, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %428 = "tosa.conv2d"(%427, %16, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %429 = "tosa.transpose"(%428, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %430 = "tosa.sub"(%429, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %431 = "tosa.mul"(%430, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %432 = "tosa.mul"(%431, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %433 = "tosa.add"(%432, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global434 = %433 : tensor<1x512x14x14xf32>
    %434 = "tosa.clamp"(%433) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global435 = %434 : tensor<1x512x14x14xf32>
    %435 = "tosa.transpose"(%434, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %436 = "tosa.conv2d"(%435, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %437 = "tosa.transpose"(%436, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %438 = "tosa.sub"(%437, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %439 = "tosa.mul"(%438, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %440 = "tosa.mul"(%439, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %441 = "tosa.add"(%440, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global442 = %441 : tensor<1x512x14x14xf32>
    %442 = "tosa.clamp"(%441) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global443 = %442 : tensor<1x512x14x14xf32>
    %443 = "tosa.transpose"(%442, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %444 = "tosa.conv2d"(%443, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %445 = "tosa.transpose"(%444, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %446 = "tosa.sub"(%445, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %447 = "tosa.mul"(%446, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %448 = "tosa.mul"(%447, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %449 = "tosa.add"(%448, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %450 = "tosa.add"(%449, %426) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global451 = %450 : tensor<1x1024x14x14xf32>
    %451 = "tosa.clamp"(%450) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global452 = %451 : tensor<1x1024x14x14xf32>
    %452 = "tosa.transpose"(%451, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %453 = "tosa.conv2d"(%452, %16, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %454 = "tosa.transpose"(%453, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %455 = "tosa.sub"(%454, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %456 = "tosa.mul"(%455, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %457 = "tosa.mul"(%456, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %458 = "tosa.add"(%457, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global459 = %458 : tensor<1x512x14x14xf32>
    %459 = "tosa.clamp"(%458) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global460 = %459 : tensor<1x512x14x14xf32>
    %460 = "tosa.transpose"(%459, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %461 = "tosa.conv2d"(%460, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %462 = "tosa.transpose"(%461, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %463 = "tosa.sub"(%462, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %464 = "tosa.mul"(%463, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %465 = "tosa.mul"(%464, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %466 = "tosa.add"(%465, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global467 = %466 : tensor<1x512x14x14xf32>
    %467 = "tosa.clamp"(%466) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global468 = %467 : tensor<1x512x14x14xf32>
    %468 = "tosa.transpose"(%467, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %469 = "tosa.conv2d"(%468, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %470 = "tosa.transpose"(%469, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %471 = "tosa.sub"(%470, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %472 = "tosa.mul"(%471, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %473 = "tosa.mul"(%472, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %474 = "tosa.add"(%473, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %475 = "tosa.add"(%474, %451) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global476 = %475 : tensor<1x1024x14x14xf32>
    %476 = "tosa.clamp"(%475) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global477 = %476 : tensor<1x1024x14x14xf32>
    %477 = "tosa.transpose"(%476, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %478 = "tosa.conv2d"(%477, %16, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %479 = "tosa.transpose"(%478, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %480 = "tosa.sub"(%479, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %481 = "tosa.mul"(%480, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %482 = "tosa.mul"(%481, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %483 = "tosa.add"(%482, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global484 = %483 : tensor<1x512x14x14xf32>
    %484 = "tosa.clamp"(%483) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global485 = %484 : tensor<1x512x14x14xf32>
    %485 = "tosa.transpose"(%484, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %486 = "tosa.conv2d"(%485, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %487 = "tosa.transpose"(%486, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %488 = "tosa.sub"(%487, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %489 = "tosa.mul"(%488, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %490 = "tosa.mul"(%489, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %491 = "tosa.add"(%490, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global492 = %491 : tensor<1x512x14x14xf32>
    %492 = "tosa.clamp"(%491) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global493 = %492 : tensor<1x512x14x14xf32>
    %493 = "tosa.transpose"(%492, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %494 = "tosa.conv2d"(%493, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %495 = "tosa.transpose"(%494, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %496 = "tosa.sub"(%495, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %497 = "tosa.mul"(%496, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %498 = "tosa.mul"(%497, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %499 = "tosa.add"(%498, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %500 = "tosa.add"(%499, %476) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global501 = %500 : tensor<1x1024x14x14xf32>
    %501 = "tosa.clamp"(%500) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global502 = %501 : tensor<1x1024x14x14xf32>
    %502 = "tosa.transpose"(%501, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %503 = "tosa.conv2d"(%502, %16, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %504 = "tosa.transpose"(%503, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %505 = "tosa.sub"(%504, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %506 = "tosa.mul"(%505, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %507 = "tosa.mul"(%506, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %508 = "tosa.add"(%507, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global509 = %508 : tensor<1x512x14x14xf32>
    %509 = "tosa.clamp"(%508) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global510 = %509 : tensor<1x512x14x14xf32>
    %510 = "tosa.transpose"(%509, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %511 = "tosa.conv2d"(%510, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %512 = "tosa.transpose"(%511, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %513 = "tosa.sub"(%512, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %514 = "tosa.mul"(%513, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %515 = "tosa.mul"(%514, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %516 = "tosa.add"(%515, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global517 = %516 : tensor<1x512x14x14xf32>
    %517 = "tosa.clamp"(%516) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global518 = %517 : tensor<1x512x14x14xf32>
    %518 = "tosa.transpose"(%517, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %519 = "tosa.conv2d"(%518, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %520 = "tosa.transpose"(%519, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %521 = "tosa.sub"(%520, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %522 = "tosa.mul"(%521, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %523 = "tosa.mul"(%522, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %524 = "tosa.add"(%523, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %525 = "tosa.add"(%524, %501) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global526 = %525 : tensor<1x1024x14x14xf32>
    %526 = "tosa.clamp"(%525) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global527 = %526 : tensor<1x1024x14x14xf32>
    %527 = "tosa.transpose"(%526, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %528 = "tosa.conv2d"(%527, %16, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %529 = "tosa.transpose"(%528, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %530 = "tosa.sub"(%529, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %531 = "tosa.mul"(%530, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %532 = "tosa.mul"(%531, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %533 = "tosa.add"(%532, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global534 = %533 : tensor<1x512x14x14xf32>
    %534 = "tosa.clamp"(%533) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global535 = %534 : tensor<1x512x14x14xf32>
    %535 = "tosa.transpose"(%534, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %536 = "tosa.conv2d"(%535, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %537 = "tosa.transpose"(%536, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %538 = "tosa.sub"(%537, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %539 = "tosa.mul"(%538, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %540 = "tosa.mul"(%539, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %541 = "tosa.add"(%540, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global542 = %541 : tensor<1x512x14x14xf32>
    %542 = "tosa.clamp"(%541) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global543 = %542 : tensor<1x512x14x14xf32>
    %543 = "tosa.transpose"(%542, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %544 = "tosa.conv2d"(%543, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %545 = "tosa.transpose"(%544, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %546 = "tosa.sub"(%545, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %547 = "tosa.mul"(%546, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %548 = "tosa.mul"(%547, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %549 = "tosa.add"(%548, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %550 = "tosa.add"(%549, %526) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global551 = %550 : tensor<1x1024x14x14xf32>
    %551 = "tosa.clamp"(%550) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global552 = %551 : tensor<1x1024x14x14xf32>
    %552 = "tosa.transpose"(%551, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %553 = "tosa.conv2d"(%552, %16, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %554 = "tosa.transpose"(%553, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %555 = "tosa.sub"(%554, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %556 = "tosa.mul"(%555, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %557 = "tosa.mul"(%556, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %558 = "tosa.add"(%557, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global559 = %558 : tensor<1x512x14x14xf32>
    %559 = "tosa.clamp"(%558) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global560 = %559 : tensor<1x512x14x14xf32>
    %560 = "tosa.transpose"(%559, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %561 = "tosa.conv2d"(%560, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %562 = "tosa.transpose"(%561, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %563 = "tosa.sub"(%562, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %564 = "tosa.mul"(%563, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %565 = "tosa.mul"(%564, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %566 = "tosa.add"(%565, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global567 = %566 : tensor<1x512x14x14xf32>
    %567 = "tosa.clamp"(%566) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global568 = %567 : tensor<1x512x14x14xf32>
    %568 = "tosa.transpose"(%567, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %569 = "tosa.conv2d"(%568, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %570 = "tosa.transpose"(%569, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %571 = "tosa.sub"(%570, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %572 = "tosa.mul"(%571, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %573 = "tosa.mul"(%572, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %574 = "tosa.add"(%573, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %575 = "tosa.add"(%574, %551) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global576 = %575 : tensor<1x1024x14x14xf32>
    %576 = "tosa.clamp"(%575) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global577 = %576 : tensor<1x1024x14x14xf32>
    %577 = "tosa.transpose"(%576, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %578 = "tosa.conv2d"(%577, %16, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %579 = "tosa.transpose"(%578, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %580 = "tosa.sub"(%579, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %581 = "tosa.mul"(%580, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %582 = "tosa.mul"(%581, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %583 = "tosa.add"(%582, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global584 = %583 : tensor<1x512x14x14xf32>
    %584 = "tosa.clamp"(%583) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global585 = %584 : tensor<1x512x14x14xf32>
    %585 = "tosa.transpose"(%584, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %586 = "tosa.conv2d"(%585, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %587 = "tosa.transpose"(%586, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %588 = "tosa.sub"(%587, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %589 = "tosa.mul"(%588, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %590 = "tosa.mul"(%589, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %591 = "tosa.add"(%590, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global592 = %591 : tensor<1x512x14x14xf32>
    %592 = "tosa.clamp"(%591) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global593 = %592 : tensor<1x512x14x14xf32>
    %593 = "tosa.transpose"(%592, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %594 = "tosa.conv2d"(%593, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %595 = "tosa.transpose"(%594, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %596 = "tosa.sub"(%595, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %597 = "tosa.mul"(%596, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %598 = "tosa.mul"(%597, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %599 = "tosa.add"(%598, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %600 = "tosa.add"(%599, %576) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global601 = %600 : tensor<1x1024x14x14xf32>
    %601 = "tosa.clamp"(%600) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global602 = %601 : tensor<1x1024x14x14xf32>
    %602 = "tosa.transpose"(%601, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %603 = "tosa.conv2d"(%602, %16, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %604 = "tosa.transpose"(%603, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %605 = "tosa.sub"(%604, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %606 = "tosa.mul"(%605, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %607 = "tosa.mul"(%606, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %608 = "tosa.add"(%607, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global609 = %608 : tensor<1x512x14x14xf32>
    %609 = "tosa.clamp"(%608) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global610 = %609 : tensor<1x512x14x14xf32>
    %610 = "tosa.transpose"(%609, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %611 = "tosa.conv2d"(%610, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %612 = "tosa.transpose"(%611, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %613 = "tosa.sub"(%612, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %614 = "tosa.mul"(%613, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %615 = "tosa.mul"(%614, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %616 = "tosa.add"(%615, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global617 = %616 : tensor<1x512x14x14xf32>
    %617 = "tosa.clamp"(%616) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global618 = %617 : tensor<1x512x14x14xf32>
    %618 = "tosa.transpose"(%617, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %619 = "tosa.conv2d"(%618, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %620 = "tosa.transpose"(%619, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %621 = "tosa.sub"(%620, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %622 = "tosa.mul"(%621, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %623 = "tosa.mul"(%622, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %624 = "tosa.add"(%623, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %625 = "tosa.add"(%624, %601) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global626 = %625 : tensor<1x1024x14x14xf32>
    %626 = "tosa.clamp"(%625) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global627 = %626 : tensor<1x1024x14x14xf32>
    %627 = "tosa.transpose"(%626, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %628 = "tosa.conv2d"(%627, %16, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %629 = "tosa.transpose"(%628, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %630 = "tosa.sub"(%629, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %631 = "tosa.mul"(%630, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %632 = "tosa.mul"(%631, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %633 = "tosa.add"(%632, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global634 = %633 : tensor<1x512x14x14xf32>
    %634 = "tosa.clamp"(%633) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global635 = %634 : tensor<1x512x14x14xf32>
    %635 = "tosa.transpose"(%634, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %636 = "tosa.conv2d"(%635, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %637 = "tosa.transpose"(%636, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %638 = "tosa.sub"(%637, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %639 = "tosa.mul"(%638, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %640 = "tosa.mul"(%639, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %641 = "tosa.add"(%640, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global642 = %641 : tensor<1x512x14x14xf32>
    %642 = "tosa.clamp"(%641) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global643 = %642 : tensor<1x512x14x14xf32>
    %643 = "tosa.transpose"(%642, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %644 = "tosa.conv2d"(%643, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %645 = "tosa.transpose"(%644, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %646 = "tosa.sub"(%645, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %647 = "tosa.mul"(%646, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %648 = "tosa.mul"(%647, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %649 = "tosa.add"(%648, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %650 = "tosa.add"(%649, %626) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global651 = %650 : tensor<1x1024x14x14xf32>
    %651 = "tosa.clamp"(%650) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global652 = %651 : tensor<1x1024x14x14xf32>
    %652 = "tosa.transpose"(%651, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %653 = "tosa.conv2d"(%652, %16, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %654 = "tosa.transpose"(%653, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %655 = "tosa.sub"(%654, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %656 = "tosa.mul"(%655, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %657 = "tosa.mul"(%656, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %658 = "tosa.add"(%657, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global659 = %658 : tensor<1x512x14x14xf32>
    %659 = "tosa.clamp"(%658) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global660 = %659 : tensor<1x512x14x14xf32>
    %660 = "tosa.transpose"(%659, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %661 = "tosa.conv2d"(%660, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %662 = "tosa.transpose"(%661, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %663 = "tosa.sub"(%662, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %664 = "tosa.mul"(%663, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %665 = "tosa.mul"(%664, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %666 = "tosa.add"(%665, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global667 = %666 : tensor<1x512x14x14xf32>
    %667 = "tosa.clamp"(%666) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global668 = %667 : tensor<1x512x14x14xf32>
    %668 = "tosa.transpose"(%667, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %669 = "tosa.conv2d"(%668, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %670 = "tosa.transpose"(%669, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %671 = "tosa.sub"(%670, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %672 = "tosa.mul"(%671, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %673 = "tosa.mul"(%672, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %674 = "tosa.add"(%673, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %675 = "tosa.add"(%674, %651) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global676 = %675 : tensor<1x1024x14x14xf32>
    %676 = "tosa.clamp"(%675) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global677 = %676 : tensor<1x1024x14x14xf32>
    %677 = "tosa.transpose"(%676, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %678 = "tosa.conv2d"(%677, %16, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %679 = "tosa.transpose"(%678, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %680 = "tosa.sub"(%679, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %681 = "tosa.mul"(%680, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %682 = "tosa.mul"(%681, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %683 = "tosa.add"(%682, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global684 = %683 : tensor<1x512x14x14xf32>
    %684 = "tosa.clamp"(%683) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global685 = %684 : tensor<1x512x14x14xf32>
    %685 = "tosa.transpose"(%684, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %686 = "tosa.conv2d"(%685, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %687 = "tosa.transpose"(%686, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %688 = "tosa.sub"(%687, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %689 = "tosa.mul"(%688, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %690 = "tosa.mul"(%689, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %691 = "tosa.add"(%690, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global692 = %691 : tensor<1x512x14x14xf32>
    %692 = "tosa.clamp"(%691) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global693 = %692 : tensor<1x512x14x14xf32>
    %693 = "tosa.transpose"(%692, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %694 = "tosa.conv2d"(%693, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %695 = "tosa.transpose"(%694, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %696 = "tosa.sub"(%695, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %697 = "tosa.mul"(%696, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %698 = "tosa.mul"(%697, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %699 = "tosa.add"(%698, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %700 = "tosa.add"(%699, %676) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global701 = %700 : tensor<1x1024x14x14xf32>
    %701 = "tosa.clamp"(%700) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global702 = %701 : tensor<1x1024x14x14xf32>
    %702 = "tosa.transpose"(%701, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %703 = "tosa.conv2d"(%702, %16, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %704 = "tosa.transpose"(%703, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %705 = "tosa.sub"(%704, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %706 = "tosa.mul"(%705, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %707 = "tosa.mul"(%706, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %708 = "tosa.add"(%707, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global709 = %708 : tensor<1x512x14x14xf32>
    %709 = "tosa.clamp"(%708) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global710 = %709 : tensor<1x512x14x14xf32>
    %710 = "tosa.transpose"(%709, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %711 = "tosa.conv2d"(%710, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %712 = "tosa.transpose"(%711, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %713 = "tosa.sub"(%712, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %714 = "tosa.mul"(%713, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %715 = "tosa.mul"(%714, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %716 = "tosa.add"(%715, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global717 = %716 : tensor<1x512x14x14xf32>
    %717 = "tosa.clamp"(%716) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global718 = %717 : tensor<1x512x14x14xf32>
    %718 = "tosa.transpose"(%717, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %719 = "tosa.conv2d"(%718, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %720 = "tosa.transpose"(%719, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %721 = "tosa.sub"(%720, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %722 = "tosa.mul"(%721, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %723 = "tosa.mul"(%722, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %724 = "tosa.add"(%723, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %725 = "tosa.add"(%724, %701) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global726 = %725 : tensor<1x1024x14x14xf32>
    %726 = "tosa.clamp"(%725) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global727 = %726 : tensor<1x1024x14x14xf32>
    %727 = "tosa.transpose"(%726, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %728 = "tosa.conv2d"(%727, %16, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %729 = "tosa.transpose"(%728, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %730 = "tosa.sub"(%729, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %731 = "tosa.mul"(%730, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %732 = "tosa.mul"(%731, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %733 = "tosa.add"(%732, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global734 = %733 : tensor<1x512x14x14xf32>
    %734 = "tosa.clamp"(%733) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global735 = %734 : tensor<1x512x14x14xf32>
    %735 = "tosa.transpose"(%734, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %736 = "tosa.conv2d"(%735, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %737 = "tosa.transpose"(%736, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %738 = "tosa.sub"(%737, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %739 = "tosa.mul"(%738, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %740 = "tosa.mul"(%739, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %741 = "tosa.add"(%740, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global742 = %741 : tensor<1x512x14x14xf32>
    %742 = "tosa.clamp"(%741) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global743 = %742 : tensor<1x512x14x14xf32>
    %743 = "tosa.transpose"(%742, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %744 = "tosa.conv2d"(%743, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %745 = "tosa.transpose"(%744, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %746 = "tosa.sub"(%745, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %747 = "tosa.mul"(%746, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %748 = "tosa.mul"(%747, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %749 = "tosa.add"(%748, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %750 = "tosa.add"(%749, %726) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global751 = %750 : tensor<1x1024x14x14xf32>
    %751 = "tosa.clamp"(%750) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global752 = %751 : tensor<1x1024x14x14xf32>
    %752 = "tosa.transpose"(%751, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %753 = "tosa.conv2d"(%752, %16, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %754 = "tosa.transpose"(%753, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %755 = "tosa.sub"(%754, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %756 = "tosa.mul"(%755, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %757 = "tosa.mul"(%756, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %758 = "tosa.add"(%757, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global759 = %758 : tensor<1x512x14x14xf32>
    %759 = "tosa.clamp"(%758) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global760 = %759 : tensor<1x512x14x14xf32>
    %760 = "tosa.transpose"(%759, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %761 = "tosa.conv2d"(%760, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %762 = "tosa.transpose"(%761, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %763 = "tosa.sub"(%762, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %764 = "tosa.mul"(%763, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %765 = "tosa.mul"(%764, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %766 = "tosa.add"(%765, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global767 = %766 : tensor<1x512x14x14xf32>
    %767 = "tosa.clamp"(%766) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global768 = %767 : tensor<1x512x14x14xf32>
    %768 = "tosa.transpose"(%767, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %769 = "tosa.conv2d"(%768, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %770 = "tosa.transpose"(%769, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %771 = "tosa.sub"(%770, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %772 = "tosa.mul"(%771, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %773 = "tosa.mul"(%772, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %774 = "tosa.add"(%773, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %775 = "tosa.add"(%774, %751) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global776 = %775 : tensor<1x1024x14x14xf32>
    %776 = "tosa.clamp"(%775) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global777 = %776 : tensor<1x1024x14x14xf32>
    %777 = "tosa.transpose"(%776, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %778 = "tosa.conv2d"(%777, %16, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %779 = "tosa.transpose"(%778, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %780 = "tosa.sub"(%779, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %781 = "tosa.mul"(%780, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %782 = "tosa.mul"(%781, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %783 = "tosa.add"(%782, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global784 = %783 : tensor<1x512x14x14xf32>
    %784 = "tosa.clamp"(%783) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global785 = %784 : tensor<1x512x14x14xf32>
    %785 = "tosa.transpose"(%784, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %786 = "tosa.conv2d"(%785, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %787 = "tosa.transpose"(%786, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %788 = "tosa.sub"(%787, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %789 = "tosa.mul"(%788, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %790 = "tosa.mul"(%789, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %791 = "tosa.add"(%790, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global792 = %791 : tensor<1x512x14x14xf32>
    %792 = "tosa.clamp"(%791) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global793 = %792 : tensor<1x512x14x14xf32>
    %793 = "tosa.transpose"(%792, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %794 = "tosa.conv2d"(%793, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %795 = "tosa.transpose"(%794, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %796 = "tosa.sub"(%795, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %797 = "tosa.mul"(%796, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %798 = "tosa.mul"(%797, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %799 = "tosa.add"(%798, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %800 = "tosa.add"(%799, %776) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global801 = %800 : tensor<1x1024x14x14xf32>
    %801 = "tosa.clamp"(%800) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global802 = %801 : tensor<1x1024x14x14xf32>
    %802 = "tosa.transpose"(%801, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %803 = "tosa.conv2d"(%802, %16, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %804 = "tosa.transpose"(%803, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %805 = "tosa.sub"(%804, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %806 = "tosa.mul"(%805, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %807 = "tosa.mul"(%806, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %808 = "tosa.add"(%807, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global809 = %808 : tensor<1x512x14x14xf32>
    %809 = "tosa.clamp"(%808) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global810 = %809 : tensor<1x512x14x14xf32>
    %810 = "tosa.transpose"(%809, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %811 = "tosa.conv2d"(%810, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %812 = "tosa.transpose"(%811, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %813 = "tosa.sub"(%812, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %814 = "tosa.mul"(%813, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %815 = "tosa.mul"(%814, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %816 = "tosa.add"(%815, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global817 = %816 : tensor<1x512x14x14xf32>
    %817 = "tosa.clamp"(%816) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global818 = %817 : tensor<1x512x14x14xf32>
    %818 = "tosa.transpose"(%817, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %819 = "tosa.conv2d"(%818, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %820 = "tosa.transpose"(%819, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %821 = "tosa.sub"(%820, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %822 = "tosa.mul"(%821, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %823 = "tosa.mul"(%822, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %824 = "tosa.add"(%823, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %825 = "tosa.add"(%824, %801) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global826 = %825 : tensor<1x1024x14x14xf32>
    %826 = "tosa.clamp"(%825) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global827 = %826 : tensor<1x1024x14x14xf32>
    %827 = "tosa.transpose"(%826, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %828 = "tosa.conv2d"(%827, %15, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<1024x1x1x1024xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %829 = "tosa.transpose"(%828, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %830 = "tosa.sub"(%829, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %831 = "tosa.mul"(%830, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %832 = "tosa.mul"(%831, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %833 = "tosa.add"(%832, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global834 = %833 : tensor<1x1024x14x14xf32>
    %834 = "tosa.clamp"(%833) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global835 = %834 : tensor<1x1024x14x14xf32>
    %835 = "tosa.transpose"(%834, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %836 = "tosa.conv2d"(%835, %14, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x14x14x1024xf32>, tensor<1024x3x3x1024xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %837 = "tosa.transpose"(%836, %2) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %838 = "tosa.sub"(%837, %18) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %839 = "tosa.mul"(%838, %265) {shift = 0 : i8} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %840 = "tosa.mul"(%839, %18) {shift = 0 : i8} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %841 = "tosa.add"(%840, %18) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    ml_program.global_store @global842 = %841 : tensor<1x1024x7x7xf32>
    %842 = "tosa.clamp"(%841) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    ml_program.global_store @global843 = %842 : tensor<1x1024x7x7xf32>
    %843 = "tosa.transpose"(%842, %1) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %844 = "tosa.conv2d"(%843, %13, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %845 = "tosa.transpose"(%844, %2) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %846 = "tosa.sub"(%845, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %847 = "tosa.rsqrt"(%11) : (tensor<2048x1x1xf32>) -> tensor<2048x1x1xf32>
    %848 = "tosa.reshape"(%847) {new_shape = array<i64: 1, 2048, 1, 1>} : (tensor<2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    ml_program.global_store @global849 = %848 : tensor<1x2048x1x1xf32>
    %849 = "tosa.mul"(%846, %848) {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %850 = "tosa.mul"(%849, %12) {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %851 = "tosa.add"(%850, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %852 = "tosa.conv2d"(%827, %13, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x14x14x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %853 = "tosa.transpose"(%852, %2) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %854 = "tosa.sub"(%853, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %855 = "tosa.mul"(%854, %848) {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %856 = "tosa.mul"(%855, %12) {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %857 = "tosa.add"(%856, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %858 = "tosa.add"(%851, %857) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global859 = %858 : tensor<1x2048x7x7xf32>
    %859 = "tosa.clamp"(%858) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global860 = %859 : tensor<1x2048x7x7xf32>
    %860 = "tosa.transpose"(%859, %1) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %861 = "tosa.conv2d"(%860, %10, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<1024x1x1x2048xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %862 = "tosa.transpose"(%861, %2) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %863 = "tosa.sub"(%862, %18) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %864 = "tosa.mul"(%863, %265) {shift = 0 : i8} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %865 = "tosa.mul"(%864, %18) {shift = 0 : i8} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %866 = "tosa.add"(%865, %18) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    ml_program.global_store @global867 = %866 : tensor<1x1024x7x7xf32>
    %867 = "tosa.clamp"(%866) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    ml_program.global_store @global868 = %867 : tensor<1x1024x7x7xf32>
    %868 = "tosa.transpose"(%867, %1) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %869 = "tosa.conv2d"(%868, %14, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<1024x3x3x1024xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %870 = "tosa.transpose"(%869, %2) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %871 = "tosa.sub"(%870, %18) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %872 = "tosa.mul"(%871, %265) {shift = 0 : i8} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %873 = "tosa.mul"(%872, %18) {shift = 0 : i8} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %874 = "tosa.add"(%873, %18) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    ml_program.global_store @global875 = %874 : tensor<1x1024x7x7xf32>
    %875 = "tosa.clamp"(%874) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    ml_program.global_store @global876 = %875 : tensor<1x1024x7x7xf32>
    %876 = "tosa.transpose"(%875, %1) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %877 = "tosa.conv2d"(%876, %13, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %878 = "tosa.transpose"(%877, %2) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %879 = "tosa.sub"(%878, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %880 = "tosa.mul"(%879, %848) {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %881 = "tosa.mul"(%880, %12) {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %882 = "tosa.add"(%881, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %883 = "tosa.add"(%882, %859) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global884 = %883 : tensor<1x2048x7x7xf32>
    %884 = "tosa.clamp"(%883) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global885 = %884 : tensor<1x2048x7x7xf32>
    %885 = "tosa.transpose"(%884, %1) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %886 = "tosa.conv2d"(%885, %10, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<1024x1x1x2048xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %887 = "tosa.transpose"(%886, %2) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %888 = "tosa.sub"(%887, %18) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %889 = "tosa.mul"(%888, %265) {shift = 0 : i8} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %890 = "tosa.mul"(%889, %18) {shift = 0 : i8} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %891 = "tosa.add"(%890, %18) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    ml_program.global_store @global892 = %891 : tensor<1x1024x7x7xf32>
    %892 = "tosa.clamp"(%891) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    ml_program.global_store @global893 = %892 : tensor<1x1024x7x7xf32>
    %893 = "tosa.transpose"(%892, %1) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %894 = "tosa.conv2d"(%893, %14, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<1024x3x3x1024xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %895 = "tosa.transpose"(%894, %2) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %896 = "tosa.sub"(%895, %18) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %897 = "tosa.mul"(%896, %265) {shift = 0 : i8} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %898 = "tosa.mul"(%897, %18) {shift = 0 : i8} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %899 = "tosa.add"(%898, %18) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    ml_program.global_store @global900 = %899 : tensor<1x1024x7x7xf32>
    %900 = "tosa.clamp"(%899) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    ml_program.global_store @global901 = %900 : tensor<1x1024x7x7xf32>
    %901 = "tosa.transpose"(%900, %1) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %902 = "tosa.conv2d"(%901, %13, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %903 = "tosa.transpose"(%902, %2) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %904 = "tosa.sub"(%903, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %905 = "tosa.mul"(%904, %848) {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %906 = "tosa.mul"(%905, %12) {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %907 = "tosa.add"(%906, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %908 = "tosa.add"(%907, %884) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global909 = %908 : tensor<1x2048x7x7xf32>
    %909 = "tosa.clamp"(%908) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global910 = %909 : tensor<1x2048x7x7xf32>
    %910 = "tosa.transpose"(%909, %1) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %911 = "tosa.avg_pool2d"(%910) {acc_type = f32, kernel = array<i64: 7, 7>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>) -> tensor<1x1x1x2048xf32>
    %912 = "tosa.reshape"(%911) {new_shape = array<i64: 1, 1, 2048>} : (tensor<1x1x1x2048xf32>) -> tensor<1x1x2048xf32>
    %913 = "tosa.matmul"(%912, %9) : (tensor<1x1x2048xf32>, tensor<1x2048x1000xf32>) -> tensor<1x1x1000xf32>
    %914 = "tosa.reshape"(%913) {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    %915 = "tosa.add"(%914, %8) : (tensor<1x1000xf32>, tensor<1x1000xf32>) -> tensor<1x1000xf32>
    return %915 : tensor<1x1000xf32>
  }
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %0 = "tosa.const"() {value = dense<[0, 2, 1]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1 = "tosa.const"() {value = dense<0.0204081628> : tensor<1x7x7x2048xf32>} : () -> tensor<1x7x7x2048xf32>
    %2 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %4 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %5 = "tosa.const"() {value = dense<[3, 1, 2, 0]> : tensor<4xi64>} : () -> tensor<4xi64>
    %cst = arith.constant -3.40282347E+38 : f32
    %cst_0 = arith.constant 0.000000e+00 : f32
    %6 = ml_program.global_load @global10 : tensor<1x2048x1000xf32>
    %7 = ml_program.global_load @global11 : tensor<1024x1x1x2048xf32>
    %8 = ml_program.global_load @global13 : tensor<1x2048x1x1xf32>
    %9 = ml_program.global_load @global14 : tensor<2048x1x1x1024xf32>
    %10 = ml_program.global_load @global15 : tensor<1024x3x3x1024xf32>
    %11 = ml_program.global_load @global16 : tensor<1024x1x1x1024xf32>
    %12 = ml_program.global_load @global17 : tensor<512x1x1x1024xf32>
    %13 = ml_program.global_load @global19 : tensor<1x1024x1x1xf32>
    %14 = ml_program.global_load @global20 : tensor<1024x1x1x512xf32>
    %15 = ml_program.global_load @global21 : tensor<512x3x3x512xf32>
    %16 = ml_program.global_load @global22 : tensor<512x1x1x512xf32>
    %17 = ml_program.global_load @global23 : tensor<256x1x1x512xf32>
    %18 = ml_program.global_load @global25 : tensor<1x512x1x1xf32>
    %19 = ml_program.global_load @global26 : tensor<512x1x1x256xf32>
    %20 = ml_program.global_load @global27 : tensor<256x3x3x256xf32>
    %21 = ml_program.global_load @global28 : tensor<256x1x1x256xf32>
    %22 = ml_program.global_load @global29 : tensor<128x1x1x256xf32>
    %23 = ml_program.global_load @global30 : tensor<256x1x1x64xf32>
    %24 = ml_program.global_load @global32 : tensor<1x256x1x1xf32>
    %25 = ml_program.global_load @global33 : tensor<256x1x1x128xf32>
    %26 = ml_program.global_load @global34 : tensor<128x3x3x128xf32>
    %27 = ml_program.global_load @global36 : tensor<1x128x1x1xf32>
    %28 = ml_program.global_load @global37 : tensor<128x1x1x64xf32>
    %29 = ml_program.global_load @global39 : tensor<1x64x1x1xf32>
    %30 = ml_program.global_load @global40 : tensor<64x7x7x3xf32>
    %31 = ml_program.global_load @global46 : tensor<1x64x1x1xf32>
    %32 = ml_program.global_load @global49 : tensor<1x64x112x112xf32>
    %33 = ml_program.global_load @global50 : tensor<1x64x112x112xf32>
    %34 = ml_program.global_load @global51 : tensor<1x112x112x64xf32>
    %35 = ml_program.global_load @global52 : tensor<1x56x56x64xf32>
    %36 = ml_program.global_load @global57 : tensor<1x128x1x1xf32>
    %37 = ml_program.global_load @global60 : tensor<1x128x56x56xf32>
    %38 = ml_program.global_load @global61 : tensor<1x128x56x56xf32>
    %39 = ml_program.global_load @global68 : tensor<1x128x56x56xf32>
    %40 = ml_program.global_load @global69 : tensor<1x128x56x56xf32>
    %41 = ml_program.global_load @global75 : tensor<1x256x1x1xf32>
    %42 = ml_program.global_load @global85 : tensor<1x256x56x56xf32>
    %43 = ml_program.global_load @global86 : tensor<1x256x56x56xf32>
    %44 = ml_program.global_load @global93 : tensor<1x128x56x56xf32>
    %45 = ml_program.global_load @global94 : tensor<1x128x56x56xf32>
    %46 = ml_program.global_load @global101 : tensor<1x128x56x56xf32>
    %47 = ml_program.global_load @global102 : tensor<1x128x56x56xf32>
    %48 = ml_program.global_load @global110 : tensor<1x256x56x56xf32>
    %49 = ml_program.global_load @global111 : tensor<1x256x56x56xf32>
    %50 = ml_program.global_load @global118 : tensor<1x128x56x56xf32>
    %51 = ml_program.global_load @global119 : tensor<1x128x56x56xf32>
    %52 = ml_program.global_load @global126 : tensor<1x128x56x56xf32>
    %53 = ml_program.global_load @global127 : tensor<1x128x56x56xf32>
    %54 = ml_program.global_load @global135 : tensor<1x256x56x56xf32>
    %55 = ml_program.global_load @global136 : tensor<1x256x56x56xf32>
    %56 = ml_program.global_load @global143 : tensor<1x256x56x56xf32>
    %57 = ml_program.global_load @global144 : tensor<1x256x56x56xf32>
    %58 = ml_program.global_load @global151 : tensor<1x256x28x28xf32>
    %59 = ml_program.global_load @global152 : tensor<1x256x28x28xf32>
    %60 = ml_program.global_load @global158 : tensor<1x512x1x1xf32>
    %61 = ml_program.global_load @global168 : tensor<1x512x28x28xf32>
    %62 = ml_program.global_load @global169 : tensor<1x512x28x28xf32>
    %63 = ml_program.global_load @global176 : tensor<1x256x28x28xf32>
    %64 = ml_program.global_load @global177 : tensor<1x256x28x28xf32>
    %65 = ml_program.global_load @global184 : tensor<1x256x28x28xf32>
    %66 = ml_program.global_load @global185 : tensor<1x256x28x28xf32>
    %67 = ml_program.global_load @global193 : tensor<1x512x28x28xf32>
    %68 = ml_program.global_load @global194 : tensor<1x512x28x28xf32>
    %69 = ml_program.global_load @global201 : tensor<1x256x28x28xf32>
    %70 = ml_program.global_load @global202 : tensor<1x256x28x28xf32>
    %71 = ml_program.global_load @global209 : tensor<1x256x28x28xf32>
    %72 = ml_program.global_load @global210 : tensor<1x256x28x28xf32>
    %73 = ml_program.global_load @global218 : tensor<1x512x28x28xf32>
    %74 = ml_program.global_load @global219 : tensor<1x512x28x28xf32>
    %75 = ml_program.global_load @global226 : tensor<1x256x28x28xf32>
    %76 = ml_program.global_load @global227 : tensor<1x256x28x28xf32>
    %77 = ml_program.global_load @global234 : tensor<1x256x28x28xf32>
    %78 = ml_program.global_load @global235 : tensor<1x256x28x28xf32>
    %79 = ml_program.global_load @global243 : tensor<1x512x28x28xf32>
    %80 = ml_program.global_load @global244 : tensor<1x512x28x28xf32>
    %81 = ml_program.global_load @global251 : tensor<1x512x28x28xf32>
    %82 = ml_program.global_load @global252 : tensor<1x512x28x28xf32>
    %83 = ml_program.global_load @global259 : tensor<1x512x14x14xf32>
    %84 = ml_program.global_load @global260 : tensor<1x512x14x14xf32>
    %85 = ml_program.global_load @global266 : tensor<1x1024x1x1xf32>
    %86 = ml_program.global_load @global276 : tensor<1x1024x14x14xf32>
    %87 = ml_program.global_load @global277 : tensor<1x1024x14x14xf32>
    %88 = ml_program.global_load @global284 : tensor<1x512x14x14xf32>
    %89 = ml_program.global_load @global285 : tensor<1x512x14x14xf32>
    %90 = ml_program.global_load @global292 : tensor<1x512x14x14xf32>
    %91 = ml_program.global_load @global293 : tensor<1x512x14x14xf32>
    %92 = ml_program.global_load @global301 : tensor<1x1024x14x14xf32>
    %93 = ml_program.global_load @global302 : tensor<1x1024x14x14xf32>
    %94 = ml_program.global_load @global309 : tensor<1x512x14x14xf32>
    %95 = ml_program.global_load @global310 : tensor<1x512x14x14xf32>
    %96 = ml_program.global_load @global317 : tensor<1x512x14x14xf32>
    %97 = ml_program.global_load @global318 : tensor<1x512x14x14xf32>
    %98 = ml_program.global_load @global326 : tensor<1x1024x14x14xf32>
    %99 = ml_program.global_load @global327 : tensor<1x1024x14x14xf32>
    %100 = ml_program.global_load @global334 : tensor<1x512x14x14xf32>
    %101 = ml_program.global_load @global335 : tensor<1x512x14x14xf32>
    %102 = ml_program.global_load @global342 : tensor<1x512x14x14xf32>
    %103 = ml_program.global_load @global343 : tensor<1x512x14x14xf32>
    %104 = ml_program.global_load @global351 : tensor<1x1024x14x14xf32>
    %105 = ml_program.global_load @global352 : tensor<1x1024x14x14xf32>
    %106 = ml_program.global_load @global359 : tensor<1x512x14x14xf32>
    %107 = ml_program.global_load @global360 : tensor<1x512x14x14xf32>
    %108 = ml_program.global_load @global367 : tensor<1x512x14x14xf32>
    %109 = ml_program.global_load @global368 : tensor<1x512x14x14xf32>
    %110 = ml_program.global_load @global376 : tensor<1x1024x14x14xf32>
    %111 = ml_program.global_load @global377 : tensor<1x1024x14x14xf32>
    %112 = ml_program.global_load @global384 : tensor<1x512x14x14xf32>
    %113 = ml_program.global_load @global385 : tensor<1x512x14x14xf32>
    %114 = ml_program.global_load @global392 : tensor<1x512x14x14xf32>
    %115 = ml_program.global_load @global393 : tensor<1x512x14x14xf32>
    %116 = ml_program.global_load @global401 : tensor<1x1024x14x14xf32>
    %117 = ml_program.global_load @global402 : tensor<1x1024x14x14xf32>
    %118 = ml_program.global_load @global409 : tensor<1x512x14x14xf32>
    %119 = ml_program.global_load @global410 : tensor<1x512x14x14xf32>
    %120 = ml_program.global_load @global417 : tensor<1x512x14x14xf32>
    %121 = ml_program.global_load @global418 : tensor<1x512x14x14xf32>
    %122 = ml_program.global_load @global426 : tensor<1x1024x14x14xf32>
    %123 = ml_program.global_load @global427 : tensor<1x1024x14x14xf32>
    %124 = ml_program.global_load @global434 : tensor<1x512x14x14xf32>
    %125 = ml_program.global_load @global435 : tensor<1x512x14x14xf32>
    %126 = ml_program.global_load @global442 : tensor<1x512x14x14xf32>
    %127 = ml_program.global_load @global443 : tensor<1x512x14x14xf32>
    %128 = ml_program.global_load @global451 : tensor<1x1024x14x14xf32>
    %129 = ml_program.global_load @global452 : tensor<1x1024x14x14xf32>
    %130 = ml_program.global_load @global459 : tensor<1x512x14x14xf32>
    %131 = ml_program.global_load @global460 : tensor<1x512x14x14xf32>
    %132 = ml_program.global_load @global467 : tensor<1x512x14x14xf32>
    %133 = ml_program.global_load @global468 : tensor<1x512x14x14xf32>
    %134 = ml_program.global_load @global476 : tensor<1x1024x14x14xf32>
    %135 = ml_program.global_load @global477 : tensor<1x1024x14x14xf32>
    %136 = ml_program.global_load @global484 : tensor<1x512x14x14xf32>
    %137 = ml_program.global_load @global485 : tensor<1x512x14x14xf32>
    %138 = ml_program.global_load @global492 : tensor<1x512x14x14xf32>
    %139 = ml_program.global_load @global493 : tensor<1x512x14x14xf32>
    %140 = ml_program.global_load @global501 : tensor<1x1024x14x14xf32>
    %141 = ml_program.global_load @global502 : tensor<1x1024x14x14xf32>
    %142 = ml_program.global_load @global509 : tensor<1x512x14x14xf32>
    %143 = ml_program.global_load @global510 : tensor<1x512x14x14xf32>
    %144 = ml_program.global_load @global517 : tensor<1x512x14x14xf32>
    %145 = ml_program.global_load @global518 : tensor<1x512x14x14xf32>
    %146 = ml_program.global_load @global526 : tensor<1x1024x14x14xf32>
    %147 = ml_program.global_load @global527 : tensor<1x1024x14x14xf32>
    %148 = ml_program.global_load @global534 : tensor<1x512x14x14xf32>
    %149 = ml_program.global_load @global535 : tensor<1x512x14x14xf32>
    %150 = ml_program.global_load @global542 : tensor<1x512x14x14xf32>
    %151 = ml_program.global_load @global543 : tensor<1x512x14x14xf32>
    %152 = ml_program.global_load @global551 : tensor<1x1024x14x14xf32>
    %153 = ml_program.global_load @global552 : tensor<1x1024x14x14xf32>
    %154 = ml_program.global_load @global559 : tensor<1x512x14x14xf32>
    %155 = ml_program.global_load @global560 : tensor<1x512x14x14xf32>
    %156 = ml_program.global_load @global567 : tensor<1x512x14x14xf32>
    %157 = ml_program.global_load @global568 : tensor<1x512x14x14xf32>
    %158 = ml_program.global_load @global576 : tensor<1x1024x14x14xf32>
    %159 = ml_program.global_load @global577 : tensor<1x1024x14x14xf32>
    %160 = ml_program.global_load @global584 : tensor<1x512x14x14xf32>
    %161 = ml_program.global_load @global585 : tensor<1x512x14x14xf32>
    %162 = ml_program.global_load @global592 : tensor<1x512x14x14xf32>
    %163 = ml_program.global_load @global593 : tensor<1x512x14x14xf32>
    %164 = ml_program.global_load @global601 : tensor<1x1024x14x14xf32>
    %165 = ml_program.global_load @global602 : tensor<1x1024x14x14xf32>
    %166 = ml_program.global_load @global609 : tensor<1x512x14x14xf32>
    %167 = ml_program.global_load @global610 : tensor<1x512x14x14xf32>
    %168 = ml_program.global_load @global617 : tensor<1x512x14x14xf32>
    %169 = ml_program.global_load @global618 : tensor<1x512x14x14xf32>
    %170 = ml_program.global_load @global626 : tensor<1x1024x14x14xf32>
    %171 = ml_program.global_load @global627 : tensor<1x1024x14x14xf32>
    %172 = ml_program.global_load @global634 : tensor<1x512x14x14xf32>
    %173 = ml_program.global_load @global635 : tensor<1x512x14x14xf32>
    %174 = ml_program.global_load @global642 : tensor<1x512x14x14xf32>
    %175 = ml_program.global_load @global643 : tensor<1x512x14x14xf32>
    %176 = ml_program.global_load @global651 : tensor<1x1024x14x14xf32>
    %177 = ml_program.global_load @global652 : tensor<1x1024x14x14xf32>
    %178 = ml_program.global_load @global659 : tensor<1x512x14x14xf32>
    %179 = ml_program.global_load @global660 : tensor<1x512x14x14xf32>
    %180 = ml_program.global_load @global667 : tensor<1x512x14x14xf32>
    %181 = ml_program.global_load @global668 : tensor<1x512x14x14xf32>
    %182 = ml_program.global_load @global676 : tensor<1x1024x14x14xf32>
    %183 = ml_program.global_load @global677 : tensor<1x1024x14x14xf32>
    %184 = ml_program.global_load @global684 : tensor<1x512x14x14xf32>
    %185 = ml_program.global_load @global685 : tensor<1x512x14x14xf32>
    %186 = ml_program.global_load @global692 : tensor<1x512x14x14xf32>
    %187 = ml_program.global_load @global693 : tensor<1x512x14x14xf32>
    %188 = ml_program.global_load @global701 : tensor<1x1024x14x14xf32>
    %189 = ml_program.global_load @global702 : tensor<1x1024x14x14xf32>
    %190 = ml_program.global_load @global709 : tensor<1x512x14x14xf32>
    %191 = ml_program.global_load @global710 : tensor<1x512x14x14xf32>
    %192 = ml_program.global_load @global717 : tensor<1x512x14x14xf32>
    %193 = ml_program.global_load @global718 : tensor<1x512x14x14xf32>
    %194 = ml_program.global_load @global726 : tensor<1x1024x14x14xf32>
    %195 = ml_program.global_load @global727 : tensor<1x1024x14x14xf32>
    %196 = ml_program.global_load @global734 : tensor<1x512x14x14xf32>
    %197 = ml_program.global_load @global735 : tensor<1x512x14x14xf32>
    %198 = ml_program.global_load @global742 : tensor<1x512x14x14xf32>
    %199 = ml_program.global_load @global743 : tensor<1x512x14x14xf32>
    %200 = ml_program.global_load @global751 : tensor<1x1024x14x14xf32>
    %201 = ml_program.global_load @global752 : tensor<1x1024x14x14xf32>
    %202 = ml_program.global_load @global759 : tensor<1x512x14x14xf32>
    %203 = ml_program.global_load @global760 : tensor<1x512x14x14xf32>
    %204 = ml_program.global_load @global767 : tensor<1x512x14x14xf32>
    %205 = ml_program.global_load @global768 : tensor<1x512x14x14xf32>
    %206 = ml_program.global_load @global776 : tensor<1x1024x14x14xf32>
    %207 = ml_program.global_load @global777 : tensor<1x1024x14x14xf32>
    %208 = ml_program.global_load @global784 : tensor<1x512x14x14xf32>
    %209 = ml_program.global_load @global785 : tensor<1x512x14x14xf32>
    %210 = ml_program.global_load @global792 : tensor<1x512x14x14xf32>
    %211 = ml_program.global_load @global793 : tensor<1x512x14x14xf32>
    %212 = ml_program.global_load @global801 : tensor<1x1024x14x14xf32>
    %213 = ml_program.global_load @global802 : tensor<1x1024x14x14xf32>
    %214 = ml_program.global_load @global809 : tensor<1x512x14x14xf32>
    %215 = ml_program.global_load @global810 : tensor<1x512x14x14xf32>
    %216 = ml_program.global_load @global817 : tensor<1x512x14x14xf32>
    %217 = ml_program.global_load @global818 : tensor<1x512x14x14xf32>
    %218 = ml_program.global_load @global826 : tensor<1x1024x14x14xf32>
    %219 = ml_program.global_load @global827 : tensor<1x1024x14x14xf32>
    %220 = ml_program.global_load @global834 : tensor<1x1024x14x14xf32>
    %221 = ml_program.global_load @global835 : tensor<1x1024x14x14xf32>
    %222 = ml_program.global_load @global842 : tensor<1x1024x7x7xf32>
    %223 = ml_program.global_load @global843 : tensor<1x1024x7x7xf32>
    %224 = ml_program.global_load @global849 : tensor<1x2048x1x1xf32>
    %225 = ml_program.global_load @global859 : tensor<1x2048x7x7xf32>
    %226 = ml_program.global_load @global860 : tensor<1x2048x7x7xf32>
    %227 = ml_program.global_load @global867 : tensor<1x1024x7x7xf32>
    %228 = ml_program.global_load @global868 : tensor<1x1024x7x7xf32>
    %229 = ml_program.global_load @global875 : tensor<1x1024x7x7xf32>
    %230 = ml_program.global_load @global876 : tensor<1x1024x7x7xf32>
    %231 = ml_program.global_load @global884 : tensor<1x2048x7x7xf32>
    %232 = ml_program.global_load @global885 : tensor<1x2048x7x7xf32>
    %233 = ml_program.global_load @global892 : tensor<1x1024x7x7xf32>
    %234 = ml_program.global_load @global893 : tensor<1x1024x7x7xf32>
    %235 = ml_program.global_load @global900 : tensor<1x1024x7x7xf32>
    %236 = ml_program.global_load @global901 : tensor<1x1024x7x7xf32>
    %237 = ml_program.global_load @global909 : tensor<1x2048x7x7xf32>
    %238 = ml_program.global_load @global910 : tensor<1x2048x7x7xf32>
    %239 = "tosa.reshape"(%arg0) {new_shape = array<i64: 1, 1, 1000>} : (tensor<1x1000xf32>) -> tensor<1x1x1000xf32>
    %240 = "tosa.transpose"(%6, %0) : (tensor<1x2048x1000xf32>, tensor<3xi32>) -> tensor<1x1000x2048xf32>
    %241 = "tosa.matmul"(%239, %240) : (tensor<1x1x1000xf32>, tensor<1x1000x2048xf32>) -> tensor<1x1x2048xf32>
    %242 = "tosa.reshape"(%241) {new_shape = array<i64: 1, 1, 1, 2048>} : (tensor<1x1x2048xf32>) -> tensor<1x1x1x2048xf32>
    %243 = "tosa.mul"(%242, %1) {shift = 0 : i8} : (tensor<1x1x1x2048xf32>, tensor<1x7x7x2048xf32>) -> tensor<1x7x7x2048xf32>
    %244 = "tosa.transpose"(%243, %2) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %245 = "tosa.equal"(%237, %238) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xi1>
    %246 = "tosa.select"(%245, %244, %3) : (tensor<1x2048x7x7xi1>, tensor<1x2048x7x7xf32>, tensor<f32>) -> tensor<1x2048x7x7xf32>
    %247 = "tosa.mul"(%8, %246) {shift = 0 : i8} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %248 = "tosa.mul"(%224, %247) {shift = 0 : i8} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %249 = "tosa.transpose"(%248, %4) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %250 = "tosa.transpose"(%9, %5) : (tensor<2048x1x1x1024xf32>, tensor<4xi64>) -> tensor<1024x1x1x2048xf32>
    %251 = tensor.empty() : tensor<1024xf32>
    %252 = "tosa.transpose_conv2d"(%249, %250, %251) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 1024>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<1024x1x1x2048xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %253 = "tosa.transpose"(%252, %2) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %254 = "tosa.equal"(%235, %236) : (tensor<1x1024x7x7xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xi1>
    %255 = "tosa.select"(%254, %253, %3) : (tensor<1x1024x7x7xi1>, tensor<1x1024x7x7xf32>, tensor<f32>) -> tensor<1x1024x7x7xf32>
    %256 = "tosa.mul"(%13, %255) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %257 = "tosa.mul"(%85, %256) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %258 = "tosa.transpose"(%257, %4) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %259 = "tosa.transpose"(%10, %5) : (tensor<1024x3x3x1024xf32>, tensor<4xi64>) -> tensor<1024x3x3x1024xf32>
    %260 = "tosa.transpose_conv2d"(%258, %259, %251) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 1024>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<1024x3x3x1024xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %261 = "tosa.transpose"(%260, %2) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %262 = "tosa.equal"(%233, %234) : (tensor<1x1024x7x7xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xi1>
    %263 = "tosa.select"(%262, %261, %3) : (tensor<1x1024x7x7xi1>, tensor<1x1024x7x7xf32>, tensor<f32>) -> tensor<1x1024x7x7xf32>
    %264 = "tosa.mul"(%13, %263) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %265 = "tosa.mul"(%85, %264) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %266 = "tosa.transpose"(%265, %4) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %267 = "tosa.transpose"(%7, %5) : (tensor<1024x1x1x2048xf32>, tensor<4xi64>) -> tensor<2048x1x1x1024xf32>
    %268 = tensor.empty() : tensor<2048xf32>
    %269 = "tosa.transpose_conv2d"(%266, %267, %268) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 2048>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %270 = "tosa.transpose"(%269, %2) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %271 = "tosa.add"(%246, %270) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %272 = "tosa.equal"(%231, %232) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xi1>
    %273 = "tosa.select"(%272, %271, %3) : (tensor<1x2048x7x7xi1>, tensor<1x2048x7x7xf32>, tensor<f32>) -> tensor<1x2048x7x7xf32>
    %274 = "tosa.mul"(%8, %273) {shift = 0 : i8} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %275 = "tosa.mul"(%224, %274) {shift = 0 : i8} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %276 = "tosa.transpose"(%275, %4) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %277 = "tosa.transpose_conv2d"(%276, %250, %251) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 1024>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<1024x1x1x2048xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %278 = "tosa.transpose"(%277, %2) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %279 = "tosa.equal"(%229, %230) : (tensor<1x1024x7x7xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xi1>
    %280 = "tosa.select"(%279, %278, %3) : (tensor<1x1024x7x7xi1>, tensor<1x1024x7x7xf32>, tensor<f32>) -> tensor<1x1024x7x7xf32>
    %281 = "tosa.mul"(%13, %280) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %282 = "tosa.mul"(%85, %281) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %283 = "tosa.transpose"(%282, %4) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %284 = "tosa.transpose_conv2d"(%283, %259, %251) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 1024>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<1024x3x3x1024xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %285 = "tosa.transpose"(%284, %2) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %286 = "tosa.equal"(%227, %228) : (tensor<1x1024x7x7xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xi1>
    %287 = "tosa.select"(%286, %285, %3) : (tensor<1x1024x7x7xi1>, tensor<1x1024x7x7xf32>, tensor<f32>) -> tensor<1x1024x7x7xf32>
    %288 = "tosa.mul"(%13, %287) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %289 = "tosa.mul"(%85, %288) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %290 = "tosa.transpose"(%289, %4) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %291 = "tosa.transpose_conv2d"(%290, %267, %268) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 2048>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %292 = "tosa.transpose"(%291, %2) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %293 = "tosa.add"(%273, %292) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %294 = "tosa.equal"(%225, %226) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xi1>
    %295 = "tosa.select"(%294, %293, %3) : (tensor<1x2048x7x7xi1>, tensor<1x2048x7x7xf32>, tensor<f32>) -> tensor<1x2048x7x7xf32>
    %296 = "tosa.mul"(%8, %295) {shift = 0 : i8} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %297 = "tosa.mul"(%224, %296) {shift = 0 : i8} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %298 = "tosa.transpose"(%297, %4) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %299 = "tosa.transpose_conv2d"(%298, %250, %251) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 2, 2>} : (tensor<1x7x7x2048xf32>, tensor<1024x1x1x2048xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %300 = "tosa.transpose_conv2d"(%298, %250, %251) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 1024>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<1024x1x1x2048xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %301 = "tosa.transpose"(%300, %2) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %302 = "tosa.equal"(%222, %223) : (tensor<1x1024x7x7xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xi1>
    %303 = "tosa.select"(%302, %301, %3) : (tensor<1x1024x7x7xi1>, tensor<1x1024x7x7xf32>, tensor<f32>) -> tensor<1x1024x7x7xf32>
    %304 = "tosa.mul"(%13, %303) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %305 = "tosa.mul"(%85, %304) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %306 = "tosa.transpose"(%305, %4) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %307 = "tosa.transpose_conv2d"(%306, %259, %251) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 2, 2>} : (tensor<1x7x7x1024xf32>, tensor<1024x3x3x1024xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %308 = "tosa.transpose"(%307, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %309 = "tosa.equal"(%220, %221) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %310 = "tosa.select"(%309, %308, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %311 = "tosa.mul"(%13, %310) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %312 = "tosa.mul"(%85, %311) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %313 = "tosa.transpose"(%312, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %314 = "tosa.transpose"(%11, %5) : (tensor<1024x1x1x1024xf32>, tensor<4xi64>) -> tensor<1024x1x1x1024xf32>
    %315 = "tosa.transpose_conv2d"(%313, %314, %251) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<1024x1x1x1024xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %316 = "tosa.add"(%299, %315) : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %317 = "tosa.transpose"(%316, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %318 = "tosa.equal"(%218, %219) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %319 = "tosa.select"(%318, %317, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %320 = "tosa.mul"(%13, %319) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %321 = "tosa.mul"(%85, %320) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %322 = "tosa.transpose"(%321, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %323 = "tosa.transpose"(%14, %5) : (tensor<1024x1x1x512xf32>, tensor<4xi64>) -> tensor<512x1x1x1024xf32>
    %324 = tensor.empty() : tensor<512xf32>
    %325 = "tosa.transpose_conv2d"(%322, %323, %324) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %326 = "tosa.transpose"(%325, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %327 = "tosa.equal"(%216, %217) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %328 = "tosa.select"(%327, %326, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %329 = "tosa.mul"(%18, %328) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %330 = "tosa.mul"(%60, %329) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %331 = "tosa.transpose"(%330, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %332 = "tosa.transpose"(%15, %5) : (tensor<512x3x3x512xf32>, tensor<4xi64>) -> tensor<512x3x3x512xf32>
    %333 = "tosa.transpose_conv2d"(%331, %332, %324) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %334 = "tosa.transpose"(%333, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %335 = "tosa.equal"(%214, %215) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %336 = "tosa.select"(%335, %334, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %337 = "tosa.mul"(%18, %336) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %338 = "tosa.mul"(%60, %337) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %339 = "tosa.transpose"(%338, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %340 = "tosa.transpose"(%12, %5) : (tensor<512x1x1x1024xf32>, tensor<4xi64>) -> tensor<1024x1x1x512xf32>
    %341 = "tosa.transpose_conv2d"(%339, %340, %251) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %342 = "tosa.transpose"(%341, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %343 = "tosa.add"(%319, %342) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %344 = "tosa.equal"(%212, %213) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %345 = "tosa.select"(%344, %343, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %346 = "tosa.mul"(%13, %345) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %347 = "tosa.mul"(%85, %346) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %348 = "tosa.transpose"(%347, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %349 = "tosa.transpose_conv2d"(%348, %323, %324) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %350 = "tosa.transpose"(%349, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %351 = "tosa.equal"(%210, %211) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %352 = "tosa.select"(%351, %350, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %353 = "tosa.mul"(%18, %352) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %354 = "tosa.mul"(%60, %353) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %355 = "tosa.transpose"(%354, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %356 = "tosa.transpose_conv2d"(%355, %332, %324) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %357 = "tosa.transpose"(%356, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %358 = "tosa.equal"(%208, %209) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %359 = "tosa.select"(%358, %357, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %360 = "tosa.mul"(%18, %359) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %361 = "tosa.mul"(%60, %360) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %362 = "tosa.transpose"(%361, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %363 = "tosa.transpose_conv2d"(%362, %340, %251) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %364 = "tosa.transpose"(%363, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %365 = "tosa.add"(%345, %364) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %366 = "tosa.equal"(%206, %207) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %367 = "tosa.select"(%366, %365, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %368 = "tosa.mul"(%13, %367) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %369 = "tosa.mul"(%85, %368) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %370 = "tosa.transpose"(%369, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %371 = "tosa.transpose_conv2d"(%370, %323, %324) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %372 = "tosa.transpose"(%371, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %373 = "tosa.equal"(%204, %205) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %374 = "tosa.select"(%373, %372, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %375 = "tosa.mul"(%18, %374) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %376 = "tosa.mul"(%60, %375) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %377 = "tosa.transpose"(%376, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %378 = "tosa.transpose_conv2d"(%377, %332, %324) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %379 = "tosa.transpose"(%378, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %380 = "tosa.equal"(%202, %203) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %381 = "tosa.select"(%380, %379, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %382 = "tosa.mul"(%18, %381) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %383 = "tosa.mul"(%60, %382) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %384 = "tosa.transpose"(%383, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %385 = "tosa.transpose_conv2d"(%384, %340, %251) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %386 = "tosa.transpose"(%385, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %387 = "tosa.add"(%367, %386) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %388 = "tosa.equal"(%200, %201) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %389 = "tosa.select"(%388, %387, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %390 = "tosa.mul"(%13, %389) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %391 = "tosa.mul"(%85, %390) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %392 = "tosa.transpose"(%391, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %393 = "tosa.transpose_conv2d"(%392, %323, %324) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %394 = "tosa.transpose"(%393, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %395 = "tosa.equal"(%198, %199) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %396 = "tosa.select"(%395, %394, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %397 = "tosa.mul"(%18, %396) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %398 = "tosa.mul"(%60, %397) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %399 = "tosa.transpose"(%398, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %400 = "tosa.transpose_conv2d"(%399, %332, %324) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %401 = "tosa.transpose"(%400, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %402 = "tosa.equal"(%196, %197) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %403 = "tosa.select"(%402, %401, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %404 = "tosa.mul"(%18, %403) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %405 = "tosa.mul"(%60, %404) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %406 = "tosa.transpose"(%405, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %407 = "tosa.transpose_conv2d"(%406, %340, %251) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %408 = "tosa.transpose"(%407, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %409 = "tosa.add"(%389, %408) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %410 = "tosa.equal"(%194, %195) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %411 = "tosa.select"(%410, %409, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %412 = "tosa.mul"(%13, %411) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %413 = "tosa.mul"(%85, %412) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %414 = "tosa.transpose"(%413, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %415 = "tosa.transpose_conv2d"(%414, %323, %324) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %416 = "tosa.transpose"(%415, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %417 = "tosa.equal"(%192, %193) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %418 = "tosa.select"(%417, %416, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %419 = "tosa.mul"(%18, %418) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %420 = "tosa.mul"(%60, %419) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %421 = "tosa.transpose"(%420, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %422 = "tosa.transpose_conv2d"(%421, %332, %324) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %423 = "tosa.transpose"(%422, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %424 = "tosa.equal"(%190, %191) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %425 = "tosa.select"(%424, %423, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %426 = "tosa.mul"(%18, %425) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %427 = "tosa.mul"(%60, %426) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %428 = "tosa.transpose"(%427, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %429 = "tosa.transpose_conv2d"(%428, %340, %251) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %430 = "tosa.transpose"(%429, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %431 = "tosa.add"(%411, %430) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %432 = "tosa.equal"(%188, %189) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %433 = "tosa.select"(%432, %431, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %434 = "tosa.mul"(%13, %433) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %435 = "tosa.mul"(%85, %434) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %436 = "tosa.transpose"(%435, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %437 = "tosa.transpose_conv2d"(%436, %323, %324) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %438 = "tosa.transpose"(%437, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %439 = "tosa.equal"(%186, %187) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %440 = "tosa.select"(%439, %438, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %441 = "tosa.mul"(%18, %440) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %442 = "tosa.mul"(%60, %441) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %443 = "tosa.transpose"(%442, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %444 = "tosa.transpose_conv2d"(%443, %332, %324) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %445 = "tosa.transpose"(%444, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %446 = "tosa.equal"(%184, %185) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %447 = "tosa.select"(%446, %445, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %448 = "tosa.mul"(%18, %447) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %449 = "tosa.mul"(%60, %448) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %450 = "tosa.transpose"(%449, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %451 = "tosa.transpose_conv2d"(%450, %340, %251) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %452 = "tosa.transpose"(%451, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %453 = "tosa.add"(%433, %452) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %454 = "tosa.equal"(%182, %183) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %455 = "tosa.select"(%454, %453, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %456 = "tosa.mul"(%13, %455) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %457 = "tosa.mul"(%85, %456) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %458 = "tosa.transpose"(%457, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %459 = "tosa.transpose_conv2d"(%458, %323, %324) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %460 = "tosa.transpose"(%459, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %461 = "tosa.equal"(%180, %181) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %462 = "tosa.select"(%461, %460, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %463 = "tosa.mul"(%18, %462) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %464 = "tosa.mul"(%60, %463) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %465 = "tosa.transpose"(%464, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %466 = "tosa.transpose_conv2d"(%465, %332, %324) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %467 = "tosa.transpose"(%466, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %468 = "tosa.equal"(%178, %179) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %469 = "tosa.select"(%468, %467, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %470 = "tosa.mul"(%18, %469) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %471 = "tosa.mul"(%60, %470) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %472 = "tosa.transpose"(%471, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %473 = "tosa.transpose_conv2d"(%472, %340, %251) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %474 = "tosa.transpose"(%473, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %475 = "tosa.add"(%455, %474) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %476 = "tosa.equal"(%176, %177) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %477 = "tosa.select"(%476, %475, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %478 = "tosa.mul"(%13, %477) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %479 = "tosa.mul"(%85, %478) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %480 = "tosa.transpose"(%479, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %481 = "tosa.transpose_conv2d"(%480, %323, %324) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %482 = "tosa.transpose"(%481, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %483 = "tosa.equal"(%174, %175) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %484 = "tosa.select"(%483, %482, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %485 = "tosa.mul"(%18, %484) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %486 = "tosa.mul"(%60, %485) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %487 = "tosa.transpose"(%486, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %488 = "tosa.transpose_conv2d"(%487, %332, %324) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %489 = "tosa.transpose"(%488, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %490 = "tosa.equal"(%172, %173) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %491 = "tosa.select"(%490, %489, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %492 = "tosa.mul"(%18, %491) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %493 = "tosa.mul"(%60, %492) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %494 = "tosa.transpose"(%493, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %495 = "tosa.transpose_conv2d"(%494, %340, %251) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %496 = "tosa.transpose"(%495, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %497 = "tosa.add"(%477, %496) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %498 = "tosa.equal"(%170, %171) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %499 = "tosa.select"(%498, %497, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %500 = "tosa.mul"(%13, %499) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %501 = "tosa.mul"(%85, %500) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %502 = "tosa.transpose"(%501, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %503 = "tosa.transpose_conv2d"(%502, %323, %324) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %504 = "tosa.transpose"(%503, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %505 = "tosa.equal"(%168, %169) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %506 = "tosa.select"(%505, %504, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %507 = "tosa.mul"(%18, %506) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %508 = "tosa.mul"(%60, %507) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %509 = "tosa.transpose"(%508, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %510 = "tosa.transpose_conv2d"(%509, %332, %324) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %511 = "tosa.transpose"(%510, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %512 = "tosa.equal"(%166, %167) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %513 = "tosa.select"(%512, %511, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %514 = "tosa.mul"(%18, %513) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %515 = "tosa.mul"(%60, %514) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %516 = "tosa.transpose"(%515, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %517 = "tosa.transpose_conv2d"(%516, %340, %251) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %518 = "tosa.transpose"(%517, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %519 = "tosa.add"(%499, %518) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %520 = "tosa.equal"(%164, %165) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %521 = "tosa.select"(%520, %519, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %522 = "tosa.mul"(%13, %521) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %523 = "tosa.mul"(%85, %522) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %524 = "tosa.transpose"(%523, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %525 = "tosa.transpose_conv2d"(%524, %323, %324) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %526 = "tosa.transpose"(%525, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %527 = "tosa.equal"(%162, %163) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %528 = "tosa.select"(%527, %526, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %529 = "tosa.mul"(%18, %528) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %530 = "tosa.mul"(%60, %529) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %531 = "tosa.transpose"(%530, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %532 = "tosa.transpose_conv2d"(%531, %332, %324) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %533 = "tosa.transpose"(%532, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %534 = "tosa.equal"(%160, %161) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %535 = "tosa.select"(%534, %533, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %536 = "tosa.mul"(%18, %535) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %537 = "tosa.mul"(%60, %536) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %538 = "tosa.transpose"(%537, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %539 = "tosa.transpose_conv2d"(%538, %340, %251) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %540 = "tosa.transpose"(%539, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %541 = "tosa.add"(%521, %540) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %542 = "tosa.equal"(%158, %159) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %543 = "tosa.select"(%542, %541, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %544 = "tosa.mul"(%13, %543) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %545 = "tosa.mul"(%85, %544) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %546 = "tosa.transpose"(%545, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %547 = "tosa.transpose_conv2d"(%546, %323, %324) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %548 = "tosa.transpose"(%547, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %549 = "tosa.equal"(%156, %157) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %550 = "tosa.select"(%549, %548, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %551 = "tosa.mul"(%18, %550) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %552 = "tosa.mul"(%60, %551) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %553 = "tosa.transpose"(%552, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %554 = "tosa.transpose_conv2d"(%553, %332, %324) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %555 = "tosa.transpose"(%554, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %556 = "tosa.equal"(%154, %155) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %557 = "tosa.select"(%556, %555, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %558 = "tosa.mul"(%18, %557) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %559 = "tosa.mul"(%60, %558) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %560 = "tosa.transpose"(%559, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %561 = "tosa.transpose_conv2d"(%560, %340, %251) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %562 = "tosa.transpose"(%561, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %563 = "tosa.add"(%543, %562) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %564 = "tosa.equal"(%152, %153) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %565 = "tosa.select"(%564, %563, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %566 = "tosa.mul"(%13, %565) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %567 = "tosa.mul"(%85, %566) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %568 = "tosa.transpose"(%567, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %569 = "tosa.transpose_conv2d"(%568, %323, %324) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %570 = "tosa.transpose"(%569, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %571 = "tosa.equal"(%150, %151) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %572 = "tosa.select"(%571, %570, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %573 = "tosa.mul"(%18, %572) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %574 = "tosa.mul"(%60, %573) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %575 = "tosa.transpose"(%574, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %576 = "tosa.transpose_conv2d"(%575, %332, %324) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %577 = "tosa.transpose"(%576, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %578 = "tosa.equal"(%148, %149) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %579 = "tosa.select"(%578, %577, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %580 = "tosa.mul"(%18, %579) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %581 = "tosa.mul"(%60, %580) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %582 = "tosa.transpose"(%581, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %583 = "tosa.transpose_conv2d"(%582, %340, %251) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %584 = "tosa.transpose"(%583, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %585 = "tosa.add"(%565, %584) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %586 = "tosa.equal"(%146, %147) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %587 = "tosa.select"(%586, %585, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %588 = "tosa.mul"(%13, %587) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %589 = "tosa.mul"(%85, %588) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %590 = "tosa.transpose"(%589, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %591 = "tosa.transpose_conv2d"(%590, %323, %324) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %592 = "tosa.transpose"(%591, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %593 = "tosa.equal"(%144, %145) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %594 = "tosa.select"(%593, %592, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %595 = "tosa.mul"(%18, %594) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %596 = "tosa.mul"(%60, %595) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %597 = "tosa.transpose"(%596, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %598 = "tosa.transpose_conv2d"(%597, %332, %324) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %599 = "tosa.transpose"(%598, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %600 = "tosa.equal"(%142, %143) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %601 = "tosa.select"(%600, %599, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %602 = "tosa.mul"(%18, %601) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %603 = "tosa.mul"(%60, %602) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %604 = "tosa.transpose"(%603, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %605 = "tosa.transpose_conv2d"(%604, %340, %251) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %606 = "tosa.transpose"(%605, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %607 = "tosa.add"(%587, %606) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %608 = "tosa.equal"(%140, %141) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %609 = "tosa.select"(%608, %607, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %610 = "tosa.mul"(%13, %609) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %611 = "tosa.mul"(%85, %610) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %612 = "tosa.transpose"(%611, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %613 = "tosa.transpose_conv2d"(%612, %323, %324) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %614 = "tosa.transpose"(%613, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %615 = "tosa.equal"(%138, %139) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %616 = "tosa.select"(%615, %614, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %617 = "tosa.mul"(%18, %616) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %618 = "tosa.mul"(%60, %617) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %619 = "tosa.transpose"(%618, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %620 = "tosa.transpose_conv2d"(%619, %332, %324) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %621 = "tosa.transpose"(%620, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %622 = "tosa.equal"(%136, %137) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %623 = "tosa.select"(%622, %621, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %624 = "tosa.mul"(%18, %623) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %625 = "tosa.mul"(%60, %624) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %626 = "tosa.transpose"(%625, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %627 = "tosa.transpose_conv2d"(%626, %340, %251) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %628 = "tosa.transpose"(%627, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %629 = "tosa.add"(%609, %628) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %630 = "tosa.equal"(%134, %135) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %631 = "tosa.select"(%630, %629, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %632 = "tosa.mul"(%13, %631) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %633 = "tosa.mul"(%85, %632) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %634 = "tosa.transpose"(%633, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %635 = "tosa.transpose_conv2d"(%634, %323, %324) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %636 = "tosa.transpose"(%635, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %637 = "tosa.equal"(%132, %133) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %638 = "tosa.select"(%637, %636, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %639 = "tosa.mul"(%18, %638) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %640 = "tosa.mul"(%60, %639) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %641 = "tosa.transpose"(%640, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %642 = "tosa.transpose_conv2d"(%641, %332, %324) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %643 = "tosa.transpose"(%642, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %644 = "tosa.equal"(%130, %131) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %645 = "tosa.select"(%644, %643, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %646 = "tosa.mul"(%18, %645) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %647 = "tosa.mul"(%60, %646) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %648 = "tosa.transpose"(%647, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %649 = "tosa.transpose_conv2d"(%648, %340, %251) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %650 = "tosa.transpose"(%649, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %651 = "tosa.add"(%631, %650) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %652 = "tosa.equal"(%128, %129) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %653 = "tosa.select"(%652, %651, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %654 = "tosa.mul"(%13, %653) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %655 = "tosa.mul"(%85, %654) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %656 = "tosa.transpose"(%655, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %657 = "tosa.transpose_conv2d"(%656, %323, %324) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %658 = "tosa.transpose"(%657, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %659 = "tosa.equal"(%126, %127) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %660 = "tosa.select"(%659, %658, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %661 = "tosa.mul"(%18, %660) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %662 = "tosa.mul"(%60, %661) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %663 = "tosa.transpose"(%662, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %664 = "tosa.transpose_conv2d"(%663, %332, %324) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %665 = "tosa.transpose"(%664, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %666 = "tosa.equal"(%124, %125) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %667 = "tosa.select"(%666, %665, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %668 = "tosa.mul"(%18, %667) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %669 = "tosa.mul"(%60, %668) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %670 = "tosa.transpose"(%669, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %671 = "tosa.transpose_conv2d"(%670, %340, %251) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %672 = "tosa.transpose"(%671, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %673 = "tosa.add"(%653, %672) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %674 = "tosa.equal"(%122, %123) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %675 = "tosa.select"(%674, %673, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %676 = "tosa.mul"(%13, %675) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %677 = "tosa.mul"(%85, %676) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %678 = "tosa.transpose"(%677, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %679 = "tosa.transpose_conv2d"(%678, %323, %324) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %680 = "tosa.transpose"(%679, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %681 = "tosa.equal"(%120, %121) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %682 = "tosa.select"(%681, %680, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %683 = "tosa.mul"(%18, %682) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %684 = "tosa.mul"(%60, %683) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %685 = "tosa.transpose"(%684, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %686 = "tosa.transpose_conv2d"(%685, %332, %324) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %687 = "tosa.transpose"(%686, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %688 = "tosa.equal"(%118, %119) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %689 = "tosa.select"(%688, %687, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %690 = "tosa.mul"(%18, %689) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %691 = "tosa.mul"(%60, %690) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %692 = "tosa.transpose"(%691, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %693 = "tosa.transpose_conv2d"(%692, %340, %251) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %694 = "tosa.transpose"(%693, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %695 = "tosa.add"(%675, %694) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %696 = "tosa.equal"(%116, %117) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %697 = "tosa.select"(%696, %695, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %698 = "tosa.mul"(%13, %697) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %699 = "tosa.mul"(%85, %698) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %700 = "tosa.transpose"(%699, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %701 = "tosa.transpose_conv2d"(%700, %323, %324) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %702 = "tosa.transpose"(%701, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %703 = "tosa.equal"(%114, %115) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %704 = "tosa.select"(%703, %702, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %705 = "tosa.mul"(%18, %704) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %706 = "tosa.mul"(%60, %705) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %707 = "tosa.transpose"(%706, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %708 = "tosa.transpose_conv2d"(%707, %332, %324) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %709 = "tosa.transpose"(%708, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %710 = "tosa.equal"(%112, %113) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %711 = "tosa.select"(%710, %709, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %712 = "tosa.mul"(%18, %711) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %713 = "tosa.mul"(%60, %712) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %714 = "tosa.transpose"(%713, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %715 = "tosa.transpose_conv2d"(%714, %340, %251) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %716 = "tosa.transpose"(%715, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %717 = "tosa.add"(%697, %716) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %718 = "tosa.equal"(%110, %111) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %719 = "tosa.select"(%718, %717, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %720 = "tosa.mul"(%13, %719) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %721 = "tosa.mul"(%85, %720) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %722 = "tosa.transpose"(%721, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %723 = "tosa.transpose_conv2d"(%722, %323, %324) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %724 = "tosa.transpose"(%723, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %725 = "tosa.equal"(%108, %109) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %726 = "tosa.select"(%725, %724, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %727 = "tosa.mul"(%18, %726) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %728 = "tosa.mul"(%60, %727) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %729 = "tosa.transpose"(%728, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %730 = "tosa.transpose_conv2d"(%729, %332, %324) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %731 = "tosa.transpose"(%730, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %732 = "tosa.equal"(%106, %107) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %733 = "tosa.select"(%732, %731, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %734 = "tosa.mul"(%18, %733) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %735 = "tosa.mul"(%60, %734) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %736 = "tosa.transpose"(%735, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %737 = "tosa.transpose_conv2d"(%736, %340, %251) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %738 = "tosa.transpose"(%737, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %739 = "tosa.add"(%719, %738) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %740 = "tosa.equal"(%104, %105) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %741 = "tosa.select"(%740, %739, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %742 = "tosa.mul"(%13, %741) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %743 = "tosa.mul"(%85, %742) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %744 = "tosa.transpose"(%743, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %745 = "tosa.transpose_conv2d"(%744, %323, %324) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %746 = "tosa.transpose"(%745, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %747 = "tosa.equal"(%102, %103) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %748 = "tosa.select"(%747, %746, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %749 = "tosa.mul"(%18, %748) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %750 = "tosa.mul"(%60, %749) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %751 = "tosa.transpose"(%750, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %752 = "tosa.transpose_conv2d"(%751, %332, %324) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %753 = "tosa.transpose"(%752, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %754 = "tosa.equal"(%100, %101) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %755 = "tosa.select"(%754, %753, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %756 = "tosa.mul"(%18, %755) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %757 = "tosa.mul"(%60, %756) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %758 = "tosa.transpose"(%757, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %759 = "tosa.transpose_conv2d"(%758, %340, %251) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %760 = "tosa.transpose"(%759, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %761 = "tosa.add"(%741, %760) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %762 = "tosa.equal"(%98, %99) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %763 = "tosa.select"(%762, %761, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %764 = "tosa.mul"(%13, %763) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %765 = "tosa.mul"(%85, %764) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %766 = "tosa.transpose"(%765, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %767 = "tosa.transpose_conv2d"(%766, %323, %324) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %768 = "tosa.transpose"(%767, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %769 = "tosa.equal"(%96, %97) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %770 = "tosa.select"(%769, %768, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %771 = "tosa.mul"(%18, %770) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %772 = "tosa.mul"(%60, %771) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %773 = "tosa.transpose"(%772, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %774 = "tosa.transpose_conv2d"(%773, %332, %324) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %775 = "tosa.transpose"(%774, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %776 = "tosa.equal"(%94, %95) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %777 = "tosa.select"(%776, %775, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %778 = "tosa.mul"(%18, %777) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %779 = "tosa.mul"(%60, %778) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %780 = "tosa.transpose"(%779, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %781 = "tosa.transpose_conv2d"(%780, %340, %251) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %782 = "tosa.transpose"(%781, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %783 = "tosa.add"(%763, %782) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %784 = "tosa.equal"(%92, %93) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %785 = "tosa.select"(%784, %783, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %786 = "tosa.mul"(%13, %785) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %787 = "tosa.mul"(%85, %786) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %788 = "tosa.transpose"(%787, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %789 = "tosa.transpose_conv2d"(%788, %323, %324) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %790 = "tosa.transpose"(%789, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %791 = "tosa.equal"(%90, %91) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %792 = "tosa.select"(%791, %790, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %793 = "tosa.mul"(%18, %792) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %794 = "tosa.mul"(%60, %793) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %795 = "tosa.transpose"(%794, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %796 = "tosa.transpose_conv2d"(%795, %332, %324) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %797 = "tosa.transpose"(%796, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %798 = "tosa.equal"(%88, %89) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %799 = "tosa.select"(%798, %797, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %800 = "tosa.mul"(%18, %799) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %801 = "tosa.mul"(%60, %800) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %802 = "tosa.transpose"(%801, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %803 = "tosa.transpose_conv2d"(%802, %340, %251) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %804 = "tosa.transpose"(%803, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %805 = "tosa.add"(%785, %804) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %806 = "tosa.equal"(%86, %87) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %807 = "tosa.select"(%806, %805, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %808 = "tosa.mul"(%13, %807) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %809 = "tosa.mul"(%85, %808) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %810 = "tosa.transpose"(%809, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %811 = "tosa.transpose_conv2d"(%810, %323, %324) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 2, 2>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %812 = "tosa.transpose_conv2d"(%810, %323, %324) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %813 = "tosa.transpose"(%812, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %814 = "tosa.equal"(%83, %84) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %815 = "tosa.select"(%814, %813, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %816 = "tosa.mul"(%18, %815) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %817 = "tosa.mul"(%60, %816) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %818 = "tosa.transpose"(%817, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %819 = "tosa.transpose_conv2d"(%818, %332, %324) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 2, 2>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %820 = "tosa.transpose"(%819, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %821 = "tosa.equal"(%81, %82) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %822 = "tosa.select"(%821, %820, %3) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %823 = "tosa.mul"(%18, %822) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %824 = "tosa.mul"(%60, %823) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %825 = "tosa.transpose"(%824, %4) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %826 = "tosa.transpose"(%16, %5) : (tensor<512x1x1x512xf32>, tensor<4xi64>) -> tensor<512x1x1x512xf32>
    %827 = "tosa.transpose_conv2d"(%825, %826, %324) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x1x1x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %828 = "tosa.add"(%811, %827) : (tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %829 = "tosa.transpose"(%828, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %830 = "tosa.equal"(%79, %80) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %831 = "tosa.select"(%830, %829, %3) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %832 = "tosa.mul"(%18, %831) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %833 = "tosa.mul"(%60, %832) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %834 = "tosa.transpose"(%833, %4) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %835 = "tosa.transpose"(%19, %5) : (tensor<512x1x1x256xf32>, tensor<4xi64>) -> tensor<256x1x1x512xf32>
    %836 = tensor.empty() : tensor<256xf32>
    %837 = "tosa.transpose_conv2d"(%834, %835, %836) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %838 = "tosa.transpose"(%837, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %839 = "tosa.equal"(%77, %78) : (tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xi1>
    %840 = "tosa.select"(%839, %838, %3) : (tensor<1x256x28x28xi1>, tensor<1x256x28x28xf32>, tensor<f32>) -> tensor<1x256x28x28xf32>
    %841 = "tosa.mul"(%24, %840) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %842 = "tosa.mul"(%41, %841) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %843 = "tosa.transpose"(%842, %4) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %844 = "tosa.transpose"(%20, %5) : (tensor<256x3x3x256xf32>, tensor<4xi64>) -> tensor<256x3x3x256xf32>
    %845 = "tosa.transpose_conv2d"(%843, %844, %836) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %846 = "tosa.transpose"(%845, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %847 = "tosa.equal"(%75, %76) : (tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xi1>
    %848 = "tosa.select"(%847, %846, %3) : (tensor<1x256x28x28xi1>, tensor<1x256x28x28xf32>, tensor<f32>) -> tensor<1x256x28x28xf32>
    %849 = "tosa.mul"(%24, %848) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %850 = "tosa.mul"(%41, %849) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %851 = "tosa.transpose"(%850, %4) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %852 = "tosa.transpose"(%17, %5) : (tensor<256x1x1x512xf32>, tensor<4xi64>) -> tensor<512x1x1x256xf32>
    %853 = "tosa.transpose_conv2d"(%851, %852, %324) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %854 = "tosa.transpose"(%853, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %855 = "tosa.add"(%831, %854) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %856 = "tosa.equal"(%73, %74) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %857 = "tosa.select"(%856, %855, %3) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %858 = "tosa.mul"(%18, %857) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %859 = "tosa.mul"(%60, %858) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %860 = "tosa.transpose"(%859, %4) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %861 = "tosa.transpose_conv2d"(%860, %835, %836) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %862 = "tosa.transpose"(%861, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %863 = "tosa.equal"(%71, %72) : (tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xi1>
    %864 = "tosa.select"(%863, %862, %3) : (tensor<1x256x28x28xi1>, tensor<1x256x28x28xf32>, tensor<f32>) -> tensor<1x256x28x28xf32>
    %865 = "tosa.mul"(%24, %864) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %866 = "tosa.mul"(%41, %865) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %867 = "tosa.transpose"(%866, %4) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %868 = "tosa.transpose_conv2d"(%867, %844, %836) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %869 = "tosa.transpose"(%868, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %870 = "tosa.equal"(%69, %70) : (tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xi1>
    %871 = "tosa.select"(%870, %869, %3) : (tensor<1x256x28x28xi1>, tensor<1x256x28x28xf32>, tensor<f32>) -> tensor<1x256x28x28xf32>
    %872 = "tosa.mul"(%24, %871) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %873 = "tosa.mul"(%41, %872) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %874 = "tosa.transpose"(%873, %4) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %875 = "tosa.transpose_conv2d"(%874, %852, %324) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %876 = "tosa.transpose"(%875, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %877 = "tosa.add"(%857, %876) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %878 = "tosa.equal"(%67, %68) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %879 = "tosa.select"(%878, %877, %3) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %880 = "tosa.mul"(%18, %879) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %881 = "tosa.mul"(%60, %880) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %882 = "tosa.transpose"(%881, %4) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %883 = "tosa.transpose_conv2d"(%882, %835, %836) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %884 = "tosa.transpose"(%883, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %885 = "tosa.equal"(%65, %66) : (tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xi1>
    %886 = "tosa.select"(%885, %884, %3) : (tensor<1x256x28x28xi1>, tensor<1x256x28x28xf32>, tensor<f32>) -> tensor<1x256x28x28xf32>
    %887 = "tosa.mul"(%24, %886) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %888 = "tosa.mul"(%41, %887) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %889 = "tosa.transpose"(%888, %4) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %890 = "tosa.transpose_conv2d"(%889, %844, %836) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %891 = "tosa.transpose"(%890, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %892 = "tosa.equal"(%63, %64) : (tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xi1>
    %893 = "tosa.select"(%892, %891, %3) : (tensor<1x256x28x28xi1>, tensor<1x256x28x28xf32>, tensor<f32>) -> tensor<1x256x28x28xf32>
    %894 = "tosa.mul"(%24, %893) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %895 = "tosa.mul"(%41, %894) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %896 = "tosa.transpose"(%895, %4) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %897 = "tosa.transpose_conv2d"(%896, %852, %324) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %898 = "tosa.transpose"(%897, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %899 = "tosa.add"(%879, %898) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %900 = "tosa.equal"(%61, %62) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %901 = "tosa.select"(%900, %899, %3) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %902 = "tosa.mul"(%18, %901) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %903 = "tosa.mul"(%60, %902) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %904 = "tosa.transpose"(%903, %4) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %905 = "tosa.transpose_conv2d"(%904, %835, %836) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %906 = "tosa.transpose_conv2d"(%904, %835, %836) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %907 = "tosa.transpose"(%906, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %908 = "tosa.equal"(%58, %59) : (tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xi1>
    %909 = "tosa.select"(%908, %907, %3) : (tensor<1x256x28x28xi1>, tensor<1x256x28x28xf32>, tensor<f32>) -> tensor<1x256x28x28xf32>
    %910 = "tosa.mul"(%24, %909) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %911 = "tosa.mul"(%41, %910) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %912 = "tosa.transpose"(%911, %4) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %913 = "tosa.transpose_conv2d"(%912, %844, %836) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 2, 2>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %914 = "tosa.transpose"(%913, %2) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %915 = "tosa.equal"(%56, %57) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %916 = "tosa.select"(%915, %914, %3) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %917 = "tosa.mul"(%24, %916) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %918 = "tosa.mul"(%41, %917) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %919 = "tosa.transpose"(%918, %4) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %920 = "tosa.transpose"(%21, %5) : (tensor<256x1x1x256xf32>, tensor<4xi64>) -> tensor<256x1x1x256xf32>
    %921 = "tosa.transpose_conv2d"(%919, %920, %836) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x1x1x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %922 = "tosa.add"(%905, %921) : (tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) -> tensor<1x56x56x256xf32>
    %923 = "tosa.transpose"(%922, %2) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %924 = "tosa.equal"(%54, %55) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %925 = "tosa.select"(%924, %923, %3) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %926 = "tosa.mul"(%24, %925) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %927 = "tosa.mul"(%41, %926) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %928 = "tosa.transpose"(%927, %4) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %929 = "tosa.transpose"(%25, %5) : (tensor<256x1x1x128xf32>, tensor<4xi64>) -> tensor<128x1x1x256xf32>
    %930 = tensor.empty() : tensor<128xf32>
    %931 = "tosa.transpose_conv2d"(%928, %929, %930) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %932 = "tosa.transpose"(%931, %2) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %933 = "tosa.equal"(%52, %53) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %934 = "tosa.select"(%933, %932, %3) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %935 = "tosa.mul"(%27, %934) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %936 = "tosa.mul"(%36, %935) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %937 = "tosa.transpose"(%936, %4) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %938 = "tosa.transpose"(%26, %5) : (tensor<128x3x3x128xf32>, tensor<4xi64>) -> tensor<128x3x3x128xf32>
    %939 = "tosa.transpose_conv2d"(%937, %938, %930) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %940 = "tosa.transpose"(%939, %2) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %941 = "tosa.equal"(%50, %51) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %942 = "tosa.select"(%941, %940, %3) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %943 = "tosa.mul"(%27, %942) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %944 = "tosa.mul"(%36, %943) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %945 = "tosa.transpose"(%944, %4) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %946 = "tosa.transpose"(%22, %5) : (tensor<128x1x1x256xf32>, tensor<4xi64>) -> tensor<256x1x1x128xf32>
    %947 = "tosa.transpose_conv2d"(%945, %946, %836) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %948 = "tosa.transpose"(%947, %2) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %949 = "tosa.add"(%925, %948) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %950 = "tosa.equal"(%48, %49) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %951 = "tosa.select"(%950, %949, %3) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %952 = "tosa.mul"(%24, %951) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %953 = "tosa.mul"(%41, %952) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %954 = "tosa.transpose"(%953, %4) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %955 = "tosa.transpose_conv2d"(%954, %929, %930) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %956 = "tosa.transpose"(%955, %2) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %957 = "tosa.equal"(%46, %47) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %958 = "tosa.select"(%957, %956, %3) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %959 = "tosa.mul"(%27, %958) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %960 = "tosa.mul"(%36, %959) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %961 = "tosa.transpose"(%960, %4) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %962 = "tosa.transpose_conv2d"(%961, %938, %930) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %963 = "tosa.transpose"(%962, %2) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %964 = "tosa.equal"(%44, %45) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %965 = "tosa.select"(%964, %963, %3) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %966 = "tosa.mul"(%27, %965) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %967 = "tosa.mul"(%36, %966) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %968 = "tosa.transpose"(%967, %4) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %969 = "tosa.transpose_conv2d"(%968, %946, %836) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %970 = "tosa.transpose"(%969, %2) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %971 = "tosa.add"(%951, %970) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %972 = "tosa.equal"(%42, %43) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %973 = "tosa.select"(%972, %971, %3) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %974 = "tosa.mul"(%24, %973) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %975 = "tosa.mul"(%41, %974) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %976 = "tosa.transpose"(%975, %4) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %977 = "tosa.transpose"(%23, %5) : (tensor<256x1x1x64xf32>, tensor<4xi64>) -> tensor<64x1x1x256xf32>
    %978 = tensor.empty() : tensor<64xf32>
    %979 = "tosa.transpose_conv2d"(%976, %977, %978) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %980 = "tosa.transpose_conv2d"(%976, %929, %930) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %981 = "tosa.transpose"(%980, %2) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %982 = "tosa.equal"(%39, %40) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %983 = "tosa.select"(%982, %981, %3) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %984 = "tosa.mul"(%27, %983) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %985 = "tosa.mul"(%36, %984) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %986 = "tosa.transpose"(%985, %4) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %987 = "tosa.transpose_conv2d"(%986, %938, %930) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %988 = "tosa.transpose"(%987, %2) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %989 = "tosa.equal"(%37, %38) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %990 = "tosa.select"(%989, %988, %3) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %991 = "tosa.mul"(%27, %990) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %992 = "tosa.mul"(%36, %991) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %993 = "tosa.transpose"(%992, %4) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %994 = "tosa.transpose"(%28, %5) : (tensor<128x1x1x64xf32>, tensor<4xi64>) -> tensor<64x1x1x128xf32>
    %995 = "tosa.transpose_conv2d"(%993, %994, %978) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<64x1x1x128xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %996 = "tosa.add"(%979, %995) : (tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %padded = tensor.pad %34 low[0, 1, 1, 0] high[0, 0, 0, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x112x112x64xf32> to tensor<1x113x113x64xf32>
    %997 = tensor.empty() : tensor<1x113x113x64xf32>
    %998 = tensor.empty() : tensor<3x3xf32>
    %999 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%padded, %998, %35, %996 : tensor<1x113x113x64xf32>, tensor<3x3xf32>, tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%997 : tensor<1x113x113x64xf32>) {
    ^bb0(%in: f32, %in_1: f32, %in_2: f32, %in_3: f32, %out: f32):
      %1010 = arith.cmpf oge, %in, %in_2 : f32
      %1011 = arith.select %1010, %in_3, %cst_0 : f32
      %1012 = arith.addf %out, %1011 : f32
      linalg.yield %1012 : f32
    } -> tensor<1x113x113x64xf32>
    %extracted_slice = tensor.extract_slice %999[0, 1, 1, 0] [1, 112, 112, 64] [1, 1, 1, 1] : tensor<1x113x113x64xf32> to tensor<1x112x112x64xf32>
    %1000 = "tosa.transpose"(%extracted_slice, %2) : (tensor<1x112x112x64xf32>, tensor<4xi32>) -> tensor<1x64x112x112xf32>
    %1001 = "tosa.equal"(%32, %33) : (tensor<1x64x112x112xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xi1>
    %1002 = "tosa.select"(%1001, %1000, %3) : (tensor<1x64x112x112xi1>, tensor<1x64x112x112xf32>, tensor<f32>) -> tensor<1x64x112x112xf32>
    %1003 = "tosa.mul"(%29, %1002) {shift = 0 : i8} : (tensor<1x64x1x1xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %1004 = "tosa.mul"(%31, %1003) {shift = 0 : i8} : (tensor<1x64x1x1xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %1005 = "tosa.transpose"(%1004, %4) : (tensor<1x64x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x64xf32>
    %1006 = "tosa.transpose"(%30, %5) : (tensor<64x7x7x3xf32>, tensor<4xi64>) -> tensor<3x7x7x64xf32>
    %1007 = tensor.empty() : tensor<3xf32>
    %1008 = "tosa.transpose_conv2d"(%1005, %1006, %1007) {out_pad = array<i64: -3, -3, -3, -3>, out_shape = array<i64: 1, 224, 224, 3>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>, tensor<3x7x7x64xf32>, tensor<3xf32>) -> tensor<1x224x224x3xf32>
    %1009 = "tosa.transpose"(%1008, %2) : (tensor<1x224x224x3xf32>, tensor<4xi32>) -> tensor<1x3x224x224xf32>
    return %1009 : tensor<1x3x224x224xf32>
  }
}

