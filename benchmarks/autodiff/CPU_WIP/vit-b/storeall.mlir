#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
module {
  ml_program.global private mutable @global831 : tensor<1x197x768xf32>
  ml_program.global private mutable @global830 : tensor<1x197x768xf32>
  ml_program.global private mutable @global826 : tensor<1x197x768xf32>
  ml_program.global private mutable @global819 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global818 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global813 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global812 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global811 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global806 : tensor<1x197x768xf32>
  ml_program.global private mutable @global805 : tensor<1x197x768xf32>
  ml_program.global private mutable @global801 : tensor<1x197x768xf32>
  ml_program.global private mutable @global791 : tensor<12x197x197xf32>
  ml_program.global private mutable @global790 : tensor<12x197x1xf32>
  ml_program.global private mutable @global789 : tensor<12x197x1xf32>
  ml_program.global private mutable @global788 : tensor<12x197x197xf32>
  ml_program.global private mutable @global786 : tensor<f32>
  ml_program.global private mutable @global784 : tensor<12x64x197xf32>
  ml_program.global private mutable @global783 : tensor<12x197x64xf32>
  ml_program.global private mutable @global773 : tensor<12x197x64xf32>
  ml_program.global private mutable @global765 : tensor<1x197x768xf32>
  ml_program.global private mutable @global764 : tensor<1x197x768xf32>
  ml_program.global private mutable @global760 : tensor<1x197x768xf32>
  ml_program.global private mutable @global753 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global752 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global747 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global746 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global745 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global740 : tensor<1x197x768xf32>
  ml_program.global private mutable @global739 : tensor<1x197x768xf32>
  ml_program.global private mutable @global735 : tensor<1x197x768xf32>
  ml_program.global private mutable @global725 : tensor<12x197x197xf32>
  ml_program.global private mutable @global724 : tensor<12x197x1xf32>
  ml_program.global private mutable @global723 : tensor<12x197x1xf32>
  ml_program.global private mutable @global722 : tensor<12x197x197xf32>
  ml_program.global private mutable @global720 : tensor<f32>
  ml_program.global private mutable @global718 : tensor<12x64x197xf32>
  ml_program.global private mutable @global717 : tensor<12x197x64xf32>
  ml_program.global private mutable @global707 : tensor<12x197x64xf32>
  ml_program.global private mutable @global699 : tensor<1x197x768xf32>
  ml_program.global private mutable @global698 : tensor<1x197x768xf32>
  ml_program.global private mutable @global694 : tensor<1x197x768xf32>
  ml_program.global private mutable @global687 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global686 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global681 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global680 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global679 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global674 : tensor<1x197x768xf32>
  ml_program.global private mutable @global673 : tensor<1x197x768xf32>
  ml_program.global private mutable @global669 : tensor<1x197x768xf32>
  ml_program.global private mutable @global659 : tensor<12x197x197xf32>
  ml_program.global private mutable @global658 : tensor<12x197x1xf32>
  ml_program.global private mutable @global657 : tensor<12x197x1xf32>
  ml_program.global private mutable @global656 : tensor<12x197x197xf32>
  ml_program.global private mutable @global654 : tensor<f32>
  ml_program.global private mutable @global652 : tensor<12x64x197xf32>
  ml_program.global private mutable @global651 : tensor<12x197x64xf32>
  ml_program.global private mutable @global641 : tensor<12x197x64xf32>
  ml_program.global private mutable @global633 : tensor<1x197x768xf32>
  ml_program.global private mutable @global632 : tensor<1x197x768xf32>
  ml_program.global private mutable @global628 : tensor<1x197x768xf32>
  ml_program.global private mutable @global621 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global620 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global615 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global614 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global613 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global608 : tensor<1x197x768xf32>
  ml_program.global private mutable @global607 : tensor<1x197x768xf32>
  ml_program.global private mutable @global603 : tensor<1x197x768xf32>
  ml_program.global private mutable @global593 : tensor<12x197x197xf32>
  ml_program.global private mutable @global592 : tensor<12x197x1xf32>
  ml_program.global private mutable @global591 : tensor<12x197x1xf32>
  ml_program.global private mutable @global590 : tensor<12x197x197xf32>
  ml_program.global private mutable @global588 : tensor<f32>
  ml_program.global private mutable @global586 : tensor<12x64x197xf32>
  ml_program.global private mutable @global585 : tensor<12x197x64xf32>
  ml_program.global private mutable @global575 : tensor<12x197x64xf32>
  ml_program.global private mutable @global567 : tensor<1x197x768xf32>
  ml_program.global private mutable @global566 : tensor<1x197x768xf32>
  ml_program.global private mutable @global562 : tensor<1x197x768xf32>
  ml_program.global private mutable @global555 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global554 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global549 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global548 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global547 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global542 : tensor<1x197x768xf32>
  ml_program.global private mutable @global541 : tensor<1x197x768xf32>
  ml_program.global private mutable @global537 : tensor<1x197x768xf32>
  ml_program.global private mutable @global527 : tensor<12x197x197xf32>
  ml_program.global private mutable @global526 : tensor<12x197x1xf32>
  ml_program.global private mutable @global525 : tensor<12x197x1xf32>
  ml_program.global private mutable @global524 : tensor<12x197x197xf32>
  ml_program.global private mutable @global522 : tensor<f32>
  ml_program.global private mutable @global520 : tensor<12x64x197xf32>
  ml_program.global private mutable @global519 : tensor<12x197x64xf32>
  ml_program.global private mutable @global509 : tensor<12x197x64xf32>
  ml_program.global private mutable @global501 : tensor<1x197x768xf32>
  ml_program.global private mutable @global500 : tensor<1x197x768xf32>
  ml_program.global private mutable @global496 : tensor<1x197x768xf32>
  ml_program.global private mutable @global489 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global488 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global483 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global482 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global481 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global476 : tensor<1x197x768xf32>
  ml_program.global private mutable @global475 : tensor<1x197x768xf32>
  ml_program.global private mutable @global471 : tensor<1x197x768xf32>
  ml_program.global private mutable @global461 : tensor<12x197x197xf32>
  ml_program.global private mutable @global460 : tensor<12x197x1xf32>
  ml_program.global private mutable @global459 : tensor<12x197x1xf32>
  ml_program.global private mutable @global458 : tensor<12x197x197xf32>
  ml_program.global private mutable @global456 : tensor<f32>
  ml_program.global private mutable @global454 : tensor<12x64x197xf32>
  ml_program.global private mutable @global453 : tensor<12x197x64xf32>
  ml_program.global private mutable @global443 : tensor<12x197x64xf32>
  ml_program.global private mutable @global435 : tensor<1x197x768xf32>
  ml_program.global private mutable @global434 : tensor<1x197x768xf32>
  ml_program.global private mutable @global430 : tensor<1x197x768xf32>
  ml_program.global private mutable @global423 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global422 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global417 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global416 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global415 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global410 : tensor<1x197x768xf32>
  ml_program.global private mutable @global409 : tensor<1x197x768xf32>
  ml_program.global private mutable @global405 : tensor<1x197x768xf32>
  ml_program.global private mutable @global395 : tensor<12x197x197xf32>
  ml_program.global private mutable @global394 : tensor<12x197x1xf32>
  ml_program.global private mutable @global393 : tensor<12x197x1xf32>
  ml_program.global private mutable @global392 : tensor<12x197x197xf32>
  ml_program.global private mutable @global390 : tensor<f32>
  ml_program.global private mutable @global388 : tensor<12x64x197xf32>
  ml_program.global private mutable @global387 : tensor<12x197x64xf32>
  ml_program.global private mutable @global377 : tensor<12x197x64xf32>
  ml_program.global private mutable @global369 : tensor<1x197x768xf32>
  ml_program.global private mutable @global368 : tensor<1x197x768xf32>
  ml_program.global private mutable @global364 : tensor<1x197x768xf32>
  ml_program.global private mutable @global357 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global356 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global351 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global350 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global349 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global344 : tensor<1x197x768xf32>
  ml_program.global private mutable @global343 : tensor<1x197x768xf32>
  ml_program.global private mutable @global339 : tensor<1x197x768xf32>
  ml_program.global private mutable @global329 : tensor<12x197x197xf32>
  ml_program.global private mutable @global328 : tensor<12x197x1xf32>
  ml_program.global private mutable @global327 : tensor<12x197x1xf32>
  ml_program.global private mutable @global326 : tensor<12x197x197xf32>
  ml_program.global private mutable @global324 : tensor<f32>
  ml_program.global private mutable @global322 : tensor<12x64x197xf32>
  ml_program.global private mutable @global321 : tensor<12x197x64xf32>
  ml_program.global private mutable @global311 : tensor<12x197x64xf32>
  ml_program.global private mutable @global303 : tensor<1x197x768xf32>
  ml_program.global private mutable @global302 : tensor<1x197x768xf32>
  ml_program.global private mutable @global298 : tensor<1x197x768xf32>
  ml_program.global private mutable @global291 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global290 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global285 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global284 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global283 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global278 : tensor<1x197x768xf32>
  ml_program.global private mutable @global277 : tensor<1x197x768xf32>
  ml_program.global private mutable @global273 : tensor<1x197x768xf32>
  ml_program.global private mutable @global263 : tensor<12x197x197xf32>
  ml_program.global private mutable @global262 : tensor<12x197x1xf32>
  ml_program.global private mutable @global261 : tensor<12x197x1xf32>
  ml_program.global private mutable @global260 : tensor<12x197x197xf32>
  ml_program.global private mutable @global258 : tensor<f32>
  ml_program.global private mutable @global256 : tensor<12x64x197xf32>
  ml_program.global private mutable @global255 : tensor<12x197x64xf32>
  ml_program.global private mutable @global245 : tensor<12x197x64xf32>
  ml_program.global private mutable @global237 : tensor<1x197x768xf32>
  ml_program.global private mutable @global236 : tensor<1x197x768xf32>
  ml_program.global private mutable @global232 : tensor<1x197x768xf32>
  ml_program.global private mutable @global225 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global224 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global219 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global218 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global217 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global212 : tensor<1x197x768xf32>
  ml_program.global private mutable @global211 : tensor<1x197x768xf32>
  ml_program.global private mutable @global207 : tensor<1x197x768xf32>
  ml_program.global private mutable @global197 : tensor<12x197x197xf32>
  ml_program.global private mutable @global196 : tensor<12x197x1xf32>
  ml_program.global private mutable @global195 : tensor<12x197x1xf32>
  ml_program.global private mutable @global194 : tensor<12x197x197xf32>
  ml_program.global private mutable @global192 : tensor<f32>
  ml_program.global private mutable @global190 : tensor<12x64x197xf32>
  ml_program.global private mutable @global189 : tensor<12x197x64xf32>
  ml_program.global private mutable @global179 : tensor<12x197x64xf32>
  ml_program.global private mutable @global171 : tensor<1x197x768xf32>
  ml_program.global private mutable @global170 : tensor<1x197x768xf32>
  ml_program.global private mutable @global166 : tensor<1x197x768xf32>
  ml_program.global private mutable @global159 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global158 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global153 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global152 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global151 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global146 : tensor<1x197x768xf32>
  ml_program.global private mutable @global145 : tensor<1x197x768xf32>
  ml_program.global private mutable @global141 : tensor<1x197x768xf32>
  ml_program.global private mutable @global131 : tensor<12x197x197xf32>
  ml_program.global private mutable @global130 : tensor<12x197x1xf32>
  ml_program.global private mutable @global129 : tensor<12x197x1xf32>
  ml_program.global private mutable @global128 : tensor<12x197x197xf32>
  ml_program.global private mutable @global126 : tensor<f32>
  ml_program.global private mutable @global124 : tensor<12x64x197xf32>
  ml_program.global private mutable @global123 : tensor<12x197x64xf32>
  ml_program.global private mutable @global113 : tensor<12x197x64xf32>
  ml_program.global private mutable @global105 : tensor<1x197x768xf32>
  ml_program.global private mutable @global104 : tensor<1x197x768xf32>
  ml_program.global private mutable @global100 : tensor<1x197x768xf32>
  ml_program.global private mutable @global93 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global92 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global87 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global86 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global85 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global80 : tensor<1x197x768xf32>
  ml_program.global private mutable @global79 : tensor<1x197x768xf32>
  ml_program.global private mutable @global75 : tensor<1x197x768xf32>
  ml_program.global private mutable @global65 : tensor<12x197x197xf32>
  ml_program.global private mutable @global64 : tensor<12x197x1xf32>
  ml_program.global private mutable @global63 : tensor<12x197x1xf32>
  ml_program.global private mutable @global62 : tensor<12x197x197xf32>
  ml_program.global private mutable @global60 : tensor<f32>
  ml_program.global private mutable @global58 : tensor<12x64x197xf32>
  ml_program.global private mutable @global57 : tensor<12x197x64xf32>
  ml_program.global private mutable @global47 : tensor<12x197x64xf32>
  ml_program.global private mutable @global39 : tensor<1x197x768xf32>
  ml_program.global private mutable @global38 : tensor<1x197x768xf32>
  ml_program.global private mutable @global34 : tensor<1x197x768xf32>
  ml_program.global private mutable @global21 : tensor<1x768x1000xf32>
  ml_program.global private mutable @global20 : tensor<1x3072x768xf32>
  ml_program.global private mutable @global19 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global16 : tensor<1x197x3072xf32>
  ml_program.global private mutable @global13 : tensor<1x768x3072xf32>
  ml_program.global private mutable @global10 : tensor<1x768x768xf32>
  ml_program.global private mutable @global8 : tensor<f32>
  ml_program.global private mutable @global2 : tensor<768xf32>
  ml_program.global private mutable @global1 : tensor<768x16x16x3xf32>
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %0 = "tosa.const"() {value = dense<7.777000e-02> : tensor<768x16x16x3xf32>} : () -> tensor<768x16x16x3xf32>
    %1 = "tosa.const"() {value = dense<7.777000e-02> : tensor<768xf32>} : () -> tensor<768xf32>
    %2 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi64>} : () -> tensor<4xi64>
    %3 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi64>} : () -> tensor<4xi64>
    %4 = "tosa.const"() {value = dense<[0, 2, 1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %5 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1x768xf32>} : () -> tensor<1x1x768xf32>
    %6 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x197x768xf32>} : () -> tensor<1x197x768xf32>
    %7 = "tosa.const"() {value = dense<0.00130208337> : tensor<f32>} : () -> tensor<f32>
    %8 = "tosa.const"() {value = dense<9.99999997E-7> : tensor<f32>} : () -> tensor<f32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x768x768xf32>} : () -> tensor<1x768x768xf32>
    %10 = "tosa.const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi64>} : () -> tensor<4xi64>
    %11 = "tosa.const"() {value = dense<6.400000e+01> : tensor<f32>} : () -> tensor<f32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x768x3072xf32>} : () -> tensor<1x768x3072xf32>
    %13 = "tosa.const"() {value = dense<7.777000e-02> : tensor<3072xf32>} : () -> tensor<3072xf32>
    %14 = "tosa.const"() {value = dense<1.000000e+00> : tensor<1x197x3072xf32>} : () -> tensor<1x197x3072xf32>
    %15 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x197x3072xf32>} : () -> tensor<1x197x3072xf32>
    %16 = "tosa.const"() {value = dense<1.57079637> : tensor<1x197x3072xf32>} : () -> tensor<1x197x3072xf32>
    %17 = "tosa.const"() {value = dense<4.471500e-02> : tensor<1x197x3072xf32>} : () -> tensor<1x197x3072xf32>
    %18 = "tosa.const"() {value = dense<3.000000e+00> : tensor<1x197x3072xf32>} : () -> tensor<1x197x3072xf32>
    %19 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x3072x768xf32>} : () -> tensor<1x3072x768xf32>
    %20 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x768x1000xf32>} : () -> tensor<1x768x1000xf32>
    %21 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1000xf32>} : () -> tensor<1000xf32>
    ml_program.global_store @global1 = %0 : tensor<768x16x16x3xf32>
    ml_program.global_store @global2 = %1 : tensor<768xf32>
    ml_program.global_store @global8 = %7 : tensor<f32>
    ml_program.global_store @global10 = %9 : tensor<1x768x768xf32>
    ml_program.global_store @global13 = %12 : tensor<1x768x3072xf32>
    ml_program.global_store @global16 = %15 : tensor<1x197x3072xf32>
    ml_program.global_store @global19 = %18 : tensor<1x197x3072xf32>
    ml_program.global_store @global20 = %19 : tensor<1x3072x768xf32>
    ml_program.global_store @global21 = %20 : tensor<1x768x1000xf32>
    %22 = "tosa.transpose"(%arg0, %2) : (tensor<1x3x224x224xf32>, tensor<4xi64>) -> tensor<1x224x224x3xf32>
    %23 = "tosa.conv2d"(%22, %0, %1) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 16, 16>} : (tensor<1x224x224x3xf32>, tensor<768x16x16x3xf32>, tensor<768xf32>) -> tensor<1x14x14x768xf32>
    %24 = "tosa.transpose"(%23, %3) : (tensor<1x14x14x768xf32>, tensor<4xi64>) -> tensor<1x768x14x14xf32>
    %25 = "tosa.reshape"(%24) {new_shape = array<i64: 1, 768, 196>} : (tensor<1x768x14x14xf32>) -> tensor<1x768x196xf32>
    %26 = "tosa.transpose"(%25, %4) : (tensor<1x768x196xf32>, tensor<3xi64>) -> tensor<1x196x768xf32>
    %27 = tensor.empty() : tensor<1x197x768xf32>
    %inserted_slice = tensor.insert_slice %5 into %27[0, 0, 0] [1, 1, 768] [1, 1, 1] : tensor<1x1x768xf32> into tensor<1x197x768xf32>
    %inserted_slice_0 = tensor.insert_slice %26 into %inserted_slice[0, 1, 0] [1, 196, 768] [1, 1, 1] : tensor<1x196x768xf32> into tensor<1x197x768xf32>
    %28 = "tosa.add"(%inserted_slice_0, %6) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %29 = "tosa.reduce_sum"(%28) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %30 = "tosa.mul"(%29, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %31 = "tosa.sub"(%28, %30) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global34 = %31 : tensor<1x197x768xf32>
    %32 = "tosa.mul"(%31, %31) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %33 = "tosa.reduce_sum"(%32) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %34 = "tosa.mul"(%33, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %35 = "tosa.add"(%34, %8) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global38 = %35 : tensor<1x197x768xf32>
    %36 = "tosa.rsqrt"(%35) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global39 = %36 : tensor<1x197x768xf32>
    %37 = "tosa.mul"(%31, %36) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %38 = "tosa.mul"(%37, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %39 = "tosa.add"(%38, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %40 = "tosa.matmul"(%39, %9) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %41 = "tosa.add"(%40, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %42 = "tosa.reshape"(%41) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %43 = "tosa.transpose"(%42, %10) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %44 = "tosa.reshape"(%43) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    ml_program.global_store @global47 = %44 : tensor<12x197x64xf32>
    ml_program.global_store @global57 = %44 : tensor<12x197x64xf32>
    %45 = "tosa.transpose"(%44, %4) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    ml_program.global_store @global58 = %45 : tensor<12x64x197xf32>
    %46 = "tosa.matmul"(%44, %45) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %47 = "tosa.rsqrt"(%11) : (tensor<f32>) -> tensor<f32>
    ml_program.global_store @global60 = %47 : tensor<f32>
    %48 = "tosa.mul"(%46, %47) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %49 = "tosa.exp"(%48) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global62 = %49 : tensor<12x197x197xf32>
    %50 = "tosa.reduce_sum"(%49) {axis = 2 : i32} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    ml_program.global_store @global63 = %50 : tensor<12x197x1xf32>
    %51 = "tosa.reciprocal"(%50) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    ml_program.global_store @global64 = %51 : tensor<12x197x1xf32>
    %52 = "tosa.mul"(%49, %51) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global65 = %52 : tensor<12x197x197xf32>
    %53 = "tosa.matmul"(%52, %44) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %54 = "tosa.reshape"(%53) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %55 = "tosa.transpose"(%54, %10) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %56 = "tosa.reshape"(%55) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %57 = "tosa.matmul"(%56, %9) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %58 = "tosa.add"(%57, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %59 = "tosa.add"(%58, %28) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %60 = "tosa.reduce_sum"(%59) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %61 = "tosa.mul"(%60, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %62 = "tosa.sub"(%59, %61) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global75 = %62 : tensor<1x197x768xf32>
    %63 = "tosa.mul"(%62, %62) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %64 = "tosa.reduce_sum"(%63) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %65 = "tosa.mul"(%64, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %66 = "tosa.add"(%65, %8) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global79 = %66 : tensor<1x197x768xf32>
    %67 = "tosa.rsqrt"(%66) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global80 = %67 : tensor<1x197x768xf32>
    %68 = "tosa.mul"(%62, %67) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %69 = "tosa.mul"(%68, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %70 = "tosa.add"(%69, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %71 = "tosa.matmul"(%70, %12) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %72 = "tosa.add"(%71, %13) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global85 = %72 : tensor<1x197x3072xf32>
    %73 = "tosa.mul"(%72, %15) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global86 = %73 : tensor<1x197x3072xf32>
    %74 = "tosa.rsqrt"(%16) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global87 = %74 : tensor<1x197x3072xf32>
    %75 = "tosa.pow"(%72, %18) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %76 = "tosa.mul"(%75, %17) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %77 = "tosa.add"(%72, %76) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %78 = "tosa.mul"(%74, %77) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %79 = "tosa.tanh"(%78) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global92 = %79 : tensor<1x197x3072xf32>
    %80 = "tosa.add"(%79, %14) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global93 = %80 : tensor<1x197x3072xf32>
    %81 = "tosa.mul"(%73, %80) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %82 = "tosa.matmul"(%81, %19) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %83 = "tosa.add"(%82, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %84 = "tosa.add"(%59, %83) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %85 = "tosa.reduce_sum"(%84) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %86 = "tosa.mul"(%85, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %87 = "tosa.sub"(%84, %86) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global100 = %87 : tensor<1x197x768xf32>
    %88 = "tosa.mul"(%87, %87) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %89 = "tosa.reduce_sum"(%88) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %90 = "tosa.mul"(%89, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %91 = "tosa.add"(%90, %8) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global104 = %91 : tensor<1x197x768xf32>
    %92 = "tosa.rsqrt"(%91) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global105 = %92 : tensor<1x197x768xf32>
    %93 = "tosa.mul"(%87, %92) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %94 = "tosa.mul"(%93, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %95 = "tosa.add"(%94, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %96 = "tosa.matmul"(%95, %9) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %97 = "tosa.add"(%96, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %98 = "tosa.reshape"(%97) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %99 = "tosa.transpose"(%98, %10) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %100 = "tosa.reshape"(%99) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    ml_program.global_store @global113 = %100 : tensor<12x197x64xf32>
    ml_program.global_store @global123 = %100 : tensor<12x197x64xf32>
    %101 = "tosa.transpose"(%100, %4) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    ml_program.global_store @global124 = %101 : tensor<12x64x197xf32>
    %102 = "tosa.matmul"(%100, %101) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global126 = %47 : tensor<f32>
    %103 = "tosa.mul"(%102, %47) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %104 = "tosa.exp"(%103) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global128 = %104 : tensor<12x197x197xf32>
    %105 = "tosa.reduce_sum"(%104) {axis = 2 : i32} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    ml_program.global_store @global129 = %105 : tensor<12x197x1xf32>
    %106 = "tosa.reciprocal"(%105) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    ml_program.global_store @global130 = %106 : tensor<12x197x1xf32>
    %107 = "tosa.mul"(%104, %106) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global131 = %107 : tensor<12x197x197xf32>
    %108 = "tosa.matmul"(%107, %100) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %109 = "tosa.reshape"(%108) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %110 = "tosa.transpose"(%109, %10) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %111 = "tosa.reshape"(%110) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %112 = "tosa.matmul"(%111, %9) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %113 = "tosa.add"(%112, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %114 = "tosa.add"(%113, %84) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %115 = "tosa.reduce_sum"(%114) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %116 = "tosa.mul"(%115, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %117 = "tosa.sub"(%114, %116) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global141 = %117 : tensor<1x197x768xf32>
    %118 = "tosa.mul"(%117, %117) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %119 = "tosa.reduce_sum"(%118) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %120 = "tosa.mul"(%119, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %121 = "tosa.add"(%120, %8) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global145 = %121 : tensor<1x197x768xf32>
    %122 = "tosa.rsqrt"(%121) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global146 = %122 : tensor<1x197x768xf32>
    %123 = "tosa.mul"(%117, %122) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %124 = "tosa.mul"(%123, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %125 = "tosa.add"(%124, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %126 = "tosa.matmul"(%125, %12) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %127 = "tosa.add"(%126, %13) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global151 = %127 : tensor<1x197x3072xf32>
    %128 = "tosa.mul"(%127, %15) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global152 = %128 : tensor<1x197x3072xf32>
    ml_program.global_store @global153 = %74 : tensor<1x197x3072xf32>
    %129 = "tosa.pow"(%127, %18) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %130 = "tosa.mul"(%129, %17) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %131 = "tosa.add"(%127, %130) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %132 = "tosa.mul"(%74, %131) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %133 = "tosa.tanh"(%132) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global158 = %133 : tensor<1x197x3072xf32>
    %134 = "tosa.add"(%133, %14) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global159 = %134 : tensor<1x197x3072xf32>
    %135 = "tosa.mul"(%128, %134) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %136 = "tosa.matmul"(%135, %19) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %137 = "tosa.add"(%136, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %138 = "tosa.add"(%114, %137) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %139 = "tosa.reduce_sum"(%138) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %140 = "tosa.mul"(%139, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %141 = "tosa.sub"(%138, %140) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global166 = %141 : tensor<1x197x768xf32>
    %142 = "tosa.mul"(%141, %141) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %143 = "tosa.reduce_sum"(%142) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %144 = "tosa.mul"(%143, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %145 = "tosa.add"(%144, %8) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global170 = %145 : tensor<1x197x768xf32>
    %146 = "tosa.rsqrt"(%145) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global171 = %146 : tensor<1x197x768xf32>
    %147 = "tosa.mul"(%141, %146) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %148 = "tosa.mul"(%147, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %149 = "tosa.add"(%148, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %150 = "tosa.matmul"(%149, %9) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %151 = "tosa.add"(%150, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %152 = "tosa.reshape"(%151) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %153 = "tosa.transpose"(%152, %10) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %154 = "tosa.reshape"(%153) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    ml_program.global_store @global179 = %154 : tensor<12x197x64xf32>
    ml_program.global_store @global189 = %154 : tensor<12x197x64xf32>
    %155 = "tosa.transpose"(%154, %4) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    ml_program.global_store @global190 = %155 : tensor<12x64x197xf32>
    %156 = "tosa.matmul"(%154, %155) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global192 = %47 : tensor<f32>
    %157 = "tosa.mul"(%156, %47) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %158 = "tosa.exp"(%157) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global194 = %158 : tensor<12x197x197xf32>
    %159 = "tosa.reduce_sum"(%158) {axis = 2 : i32} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    ml_program.global_store @global195 = %159 : tensor<12x197x1xf32>
    %160 = "tosa.reciprocal"(%159) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    ml_program.global_store @global196 = %160 : tensor<12x197x1xf32>
    %161 = "tosa.mul"(%158, %160) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global197 = %161 : tensor<12x197x197xf32>
    %162 = "tosa.matmul"(%161, %154) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %163 = "tosa.reshape"(%162) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %164 = "tosa.transpose"(%163, %10) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %165 = "tosa.reshape"(%164) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %166 = "tosa.matmul"(%165, %9) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %167 = "tosa.add"(%166, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %168 = "tosa.add"(%167, %138) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %169 = "tosa.reduce_sum"(%168) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %170 = "tosa.mul"(%169, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %171 = "tosa.sub"(%168, %170) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global207 = %171 : tensor<1x197x768xf32>
    %172 = "tosa.mul"(%171, %171) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %173 = "tosa.reduce_sum"(%172) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %174 = "tosa.mul"(%173, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %175 = "tosa.add"(%174, %8) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global211 = %175 : tensor<1x197x768xf32>
    %176 = "tosa.rsqrt"(%175) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global212 = %176 : tensor<1x197x768xf32>
    %177 = "tosa.mul"(%171, %176) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %178 = "tosa.mul"(%177, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %179 = "tosa.add"(%178, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %180 = "tosa.matmul"(%179, %12) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %181 = "tosa.add"(%180, %13) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global217 = %181 : tensor<1x197x3072xf32>
    %182 = "tosa.mul"(%181, %15) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global218 = %182 : tensor<1x197x3072xf32>
    ml_program.global_store @global219 = %74 : tensor<1x197x3072xf32>
    %183 = "tosa.pow"(%181, %18) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %184 = "tosa.mul"(%183, %17) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %185 = "tosa.add"(%181, %184) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %186 = "tosa.mul"(%74, %185) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %187 = "tosa.tanh"(%186) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global224 = %187 : tensor<1x197x3072xf32>
    %188 = "tosa.add"(%187, %14) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global225 = %188 : tensor<1x197x3072xf32>
    %189 = "tosa.mul"(%182, %188) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %190 = "tosa.matmul"(%189, %19) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %191 = "tosa.add"(%190, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %192 = "tosa.add"(%168, %191) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %193 = "tosa.reduce_sum"(%192) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %194 = "tosa.mul"(%193, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %195 = "tosa.sub"(%192, %194) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global232 = %195 : tensor<1x197x768xf32>
    %196 = "tosa.mul"(%195, %195) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %197 = "tosa.reduce_sum"(%196) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %198 = "tosa.mul"(%197, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %199 = "tosa.add"(%198, %8) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global236 = %199 : tensor<1x197x768xf32>
    %200 = "tosa.rsqrt"(%199) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global237 = %200 : tensor<1x197x768xf32>
    %201 = "tosa.mul"(%195, %200) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %202 = "tosa.mul"(%201, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %203 = "tosa.add"(%202, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %204 = "tosa.matmul"(%203, %9) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %205 = "tosa.add"(%204, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %206 = "tosa.reshape"(%205) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %207 = "tosa.transpose"(%206, %10) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %208 = "tosa.reshape"(%207) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    ml_program.global_store @global245 = %208 : tensor<12x197x64xf32>
    ml_program.global_store @global255 = %208 : tensor<12x197x64xf32>
    %209 = "tosa.transpose"(%208, %4) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    ml_program.global_store @global256 = %209 : tensor<12x64x197xf32>
    %210 = "tosa.matmul"(%208, %209) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global258 = %47 : tensor<f32>
    %211 = "tosa.mul"(%210, %47) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %212 = "tosa.exp"(%211) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global260 = %212 : tensor<12x197x197xf32>
    %213 = "tosa.reduce_sum"(%212) {axis = 2 : i32} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    ml_program.global_store @global261 = %213 : tensor<12x197x1xf32>
    %214 = "tosa.reciprocal"(%213) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    ml_program.global_store @global262 = %214 : tensor<12x197x1xf32>
    %215 = "tosa.mul"(%212, %214) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global263 = %215 : tensor<12x197x197xf32>
    %216 = "tosa.matmul"(%215, %208) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %217 = "tosa.reshape"(%216) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %218 = "tosa.transpose"(%217, %10) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %219 = "tosa.reshape"(%218) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %220 = "tosa.matmul"(%219, %9) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %221 = "tosa.add"(%220, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %222 = "tosa.add"(%221, %192) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %223 = "tosa.reduce_sum"(%222) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %224 = "tosa.mul"(%223, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %225 = "tosa.sub"(%222, %224) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global273 = %225 : tensor<1x197x768xf32>
    %226 = "tosa.mul"(%225, %225) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %227 = "tosa.reduce_sum"(%226) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %228 = "tosa.mul"(%227, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %229 = "tosa.add"(%228, %8) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global277 = %229 : tensor<1x197x768xf32>
    %230 = "tosa.rsqrt"(%229) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global278 = %230 : tensor<1x197x768xf32>
    %231 = "tosa.mul"(%225, %230) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %232 = "tosa.mul"(%231, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %233 = "tosa.add"(%232, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %234 = "tosa.matmul"(%233, %12) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %235 = "tosa.add"(%234, %13) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global283 = %235 : tensor<1x197x3072xf32>
    %236 = "tosa.mul"(%235, %15) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global284 = %236 : tensor<1x197x3072xf32>
    ml_program.global_store @global285 = %74 : tensor<1x197x3072xf32>
    %237 = "tosa.pow"(%235, %18) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %238 = "tosa.mul"(%237, %17) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %239 = "tosa.add"(%235, %238) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %240 = "tosa.mul"(%74, %239) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %241 = "tosa.tanh"(%240) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global290 = %241 : tensor<1x197x3072xf32>
    %242 = "tosa.add"(%241, %14) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global291 = %242 : tensor<1x197x3072xf32>
    %243 = "tosa.mul"(%236, %242) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %244 = "tosa.matmul"(%243, %19) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %245 = "tosa.add"(%244, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %246 = "tosa.add"(%222, %245) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %247 = "tosa.reduce_sum"(%246) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %248 = "tosa.mul"(%247, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %249 = "tosa.sub"(%246, %248) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global298 = %249 : tensor<1x197x768xf32>
    %250 = "tosa.mul"(%249, %249) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %251 = "tosa.reduce_sum"(%250) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %252 = "tosa.mul"(%251, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %253 = "tosa.add"(%252, %8) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global302 = %253 : tensor<1x197x768xf32>
    %254 = "tosa.rsqrt"(%253) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global303 = %254 : tensor<1x197x768xf32>
    %255 = "tosa.mul"(%249, %254) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %256 = "tosa.mul"(%255, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %257 = "tosa.add"(%256, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %258 = "tosa.matmul"(%257, %9) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %259 = "tosa.add"(%258, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %260 = "tosa.reshape"(%259) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %261 = "tosa.transpose"(%260, %10) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %262 = "tosa.reshape"(%261) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    ml_program.global_store @global311 = %262 : tensor<12x197x64xf32>
    ml_program.global_store @global321 = %262 : tensor<12x197x64xf32>
    %263 = "tosa.transpose"(%262, %4) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    ml_program.global_store @global322 = %263 : tensor<12x64x197xf32>
    %264 = "tosa.matmul"(%262, %263) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global324 = %47 : tensor<f32>
    %265 = "tosa.mul"(%264, %47) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %266 = "tosa.exp"(%265) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global326 = %266 : tensor<12x197x197xf32>
    %267 = "tosa.reduce_sum"(%266) {axis = 2 : i32} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    ml_program.global_store @global327 = %267 : tensor<12x197x1xf32>
    %268 = "tosa.reciprocal"(%267) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    ml_program.global_store @global328 = %268 : tensor<12x197x1xf32>
    %269 = "tosa.mul"(%266, %268) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global329 = %269 : tensor<12x197x197xf32>
    %270 = "tosa.matmul"(%269, %262) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %271 = "tosa.reshape"(%270) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %272 = "tosa.transpose"(%271, %10) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %273 = "tosa.reshape"(%272) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %274 = "tosa.matmul"(%273, %9) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %275 = "tosa.add"(%274, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %276 = "tosa.add"(%275, %246) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %277 = "tosa.reduce_sum"(%276) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %278 = "tosa.mul"(%277, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %279 = "tosa.sub"(%276, %278) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global339 = %279 : tensor<1x197x768xf32>
    %280 = "tosa.mul"(%279, %279) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %281 = "tosa.reduce_sum"(%280) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %282 = "tosa.mul"(%281, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %283 = "tosa.add"(%282, %8) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global343 = %283 : tensor<1x197x768xf32>
    %284 = "tosa.rsqrt"(%283) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global344 = %284 : tensor<1x197x768xf32>
    %285 = "tosa.mul"(%279, %284) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %286 = "tosa.mul"(%285, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %287 = "tosa.add"(%286, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %288 = "tosa.matmul"(%287, %12) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %289 = "tosa.add"(%288, %13) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global349 = %289 : tensor<1x197x3072xf32>
    %290 = "tosa.mul"(%289, %15) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global350 = %290 : tensor<1x197x3072xf32>
    ml_program.global_store @global351 = %74 : tensor<1x197x3072xf32>
    %291 = "tosa.pow"(%289, %18) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %292 = "tosa.mul"(%291, %17) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %293 = "tosa.add"(%289, %292) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %294 = "tosa.mul"(%74, %293) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %295 = "tosa.tanh"(%294) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global356 = %295 : tensor<1x197x3072xf32>
    %296 = "tosa.add"(%295, %14) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global357 = %296 : tensor<1x197x3072xf32>
    %297 = "tosa.mul"(%290, %296) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %298 = "tosa.matmul"(%297, %19) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %299 = "tosa.add"(%298, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %300 = "tosa.add"(%276, %299) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %301 = "tosa.reduce_sum"(%300) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %302 = "tosa.mul"(%301, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %303 = "tosa.sub"(%300, %302) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global364 = %303 : tensor<1x197x768xf32>
    %304 = "tosa.mul"(%303, %303) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %305 = "tosa.reduce_sum"(%304) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %306 = "tosa.mul"(%305, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %307 = "tosa.add"(%306, %8) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global368 = %307 : tensor<1x197x768xf32>
    %308 = "tosa.rsqrt"(%307) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global369 = %308 : tensor<1x197x768xf32>
    %309 = "tosa.mul"(%303, %308) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %310 = "tosa.mul"(%309, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %311 = "tosa.add"(%310, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %312 = "tosa.matmul"(%311, %9) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %313 = "tosa.add"(%312, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %314 = "tosa.reshape"(%313) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %315 = "tosa.transpose"(%314, %10) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %316 = "tosa.reshape"(%315) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    ml_program.global_store @global377 = %316 : tensor<12x197x64xf32>
    ml_program.global_store @global387 = %316 : tensor<12x197x64xf32>
    %317 = "tosa.transpose"(%316, %4) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    ml_program.global_store @global388 = %317 : tensor<12x64x197xf32>
    %318 = "tosa.matmul"(%316, %317) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global390 = %47 : tensor<f32>
    %319 = "tosa.mul"(%318, %47) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %320 = "tosa.exp"(%319) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global392 = %320 : tensor<12x197x197xf32>
    %321 = "tosa.reduce_sum"(%320) {axis = 2 : i32} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    ml_program.global_store @global393 = %321 : tensor<12x197x1xf32>
    %322 = "tosa.reciprocal"(%321) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    ml_program.global_store @global394 = %322 : tensor<12x197x1xf32>
    %323 = "tosa.mul"(%320, %322) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global395 = %323 : tensor<12x197x197xf32>
    %324 = "tosa.matmul"(%323, %316) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %325 = "tosa.reshape"(%324) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %326 = "tosa.transpose"(%325, %10) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %327 = "tosa.reshape"(%326) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %328 = "tosa.matmul"(%327, %9) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %329 = "tosa.add"(%328, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %330 = "tosa.add"(%329, %300) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %331 = "tosa.reduce_sum"(%330) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %332 = "tosa.mul"(%331, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %333 = "tosa.sub"(%330, %332) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global405 = %333 : tensor<1x197x768xf32>
    %334 = "tosa.mul"(%333, %333) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %335 = "tosa.reduce_sum"(%334) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %336 = "tosa.mul"(%335, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %337 = "tosa.add"(%336, %8) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global409 = %337 : tensor<1x197x768xf32>
    %338 = "tosa.rsqrt"(%337) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global410 = %338 : tensor<1x197x768xf32>
    %339 = "tosa.mul"(%333, %338) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %340 = "tosa.mul"(%339, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %341 = "tosa.add"(%340, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %342 = "tosa.matmul"(%341, %12) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %343 = "tosa.add"(%342, %13) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global415 = %343 : tensor<1x197x3072xf32>
    %344 = "tosa.mul"(%343, %15) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global416 = %344 : tensor<1x197x3072xf32>
    ml_program.global_store @global417 = %74 : tensor<1x197x3072xf32>
    %345 = "tosa.pow"(%343, %18) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %346 = "tosa.mul"(%345, %17) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %347 = "tosa.add"(%343, %346) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %348 = "tosa.mul"(%74, %347) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %349 = "tosa.tanh"(%348) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global422 = %349 : tensor<1x197x3072xf32>
    %350 = "tosa.add"(%349, %14) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global423 = %350 : tensor<1x197x3072xf32>
    %351 = "tosa.mul"(%344, %350) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %352 = "tosa.matmul"(%351, %19) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %353 = "tosa.add"(%352, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %354 = "tosa.add"(%330, %353) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %355 = "tosa.reduce_sum"(%354) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %356 = "tosa.mul"(%355, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %357 = "tosa.sub"(%354, %356) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global430 = %357 : tensor<1x197x768xf32>
    %358 = "tosa.mul"(%357, %357) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %359 = "tosa.reduce_sum"(%358) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %360 = "tosa.mul"(%359, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %361 = "tosa.add"(%360, %8) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global434 = %361 : tensor<1x197x768xf32>
    %362 = "tosa.rsqrt"(%361) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global435 = %362 : tensor<1x197x768xf32>
    %363 = "tosa.mul"(%357, %362) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %364 = "tosa.mul"(%363, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %365 = "tosa.add"(%364, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %366 = "tosa.matmul"(%365, %9) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %367 = "tosa.add"(%366, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %368 = "tosa.reshape"(%367) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %369 = "tosa.transpose"(%368, %10) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %370 = "tosa.reshape"(%369) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    ml_program.global_store @global443 = %370 : tensor<12x197x64xf32>
    ml_program.global_store @global453 = %370 : tensor<12x197x64xf32>
    %371 = "tosa.transpose"(%370, %4) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    ml_program.global_store @global454 = %371 : tensor<12x64x197xf32>
    %372 = "tosa.matmul"(%370, %371) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global456 = %47 : tensor<f32>
    %373 = "tosa.mul"(%372, %47) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %374 = "tosa.exp"(%373) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global458 = %374 : tensor<12x197x197xf32>
    %375 = "tosa.reduce_sum"(%374) {axis = 2 : i32} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    ml_program.global_store @global459 = %375 : tensor<12x197x1xf32>
    %376 = "tosa.reciprocal"(%375) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    ml_program.global_store @global460 = %376 : tensor<12x197x1xf32>
    %377 = "tosa.mul"(%374, %376) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global461 = %377 : tensor<12x197x197xf32>
    %378 = "tosa.matmul"(%377, %370) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %379 = "tosa.reshape"(%378) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %380 = "tosa.transpose"(%379, %10) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %381 = "tosa.reshape"(%380) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %382 = "tosa.matmul"(%381, %9) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %383 = "tosa.add"(%382, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %384 = "tosa.add"(%383, %354) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %385 = "tosa.reduce_sum"(%384) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %386 = "tosa.mul"(%385, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %387 = "tosa.sub"(%384, %386) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global471 = %387 : tensor<1x197x768xf32>
    %388 = "tosa.mul"(%387, %387) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %389 = "tosa.reduce_sum"(%388) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %390 = "tosa.mul"(%389, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %391 = "tosa.add"(%390, %8) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global475 = %391 : tensor<1x197x768xf32>
    %392 = "tosa.rsqrt"(%391) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global476 = %392 : tensor<1x197x768xf32>
    %393 = "tosa.mul"(%387, %392) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %394 = "tosa.mul"(%393, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %395 = "tosa.add"(%394, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %396 = "tosa.matmul"(%395, %12) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %397 = "tosa.add"(%396, %13) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global481 = %397 : tensor<1x197x3072xf32>
    %398 = "tosa.mul"(%397, %15) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global482 = %398 : tensor<1x197x3072xf32>
    ml_program.global_store @global483 = %74 : tensor<1x197x3072xf32>
    %399 = "tosa.pow"(%397, %18) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %400 = "tosa.mul"(%399, %17) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %401 = "tosa.add"(%397, %400) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %402 = "tosa.mul"(%74, %401) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %403 = "tosa.tanh"(%402) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global488 = %403 : tensor<1x197x3072xf32>
    %404 = "tosa.add"(%403, %14) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global489 = %404 : tensor<1x197x3072xf32>
    %405 = "tosa.mul"(%398, %404) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %406 = "tosa.matmul"(%405, %19) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %407 = "tosa.add"(%406, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %408 = "tosa.add"(%384, %407) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %409 = "tosa.reduce_sum"(%408) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %410 = "tosa.mul"(%409, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %411 = "tosa.sub"(%408, %410) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global496 = %411 : tensor<1x197x768xf32>
    %412 = "tosa.mul"(%411, %411) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %413 = "tosa.reduce_sum"(%412) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %414 = "tosa.mul"(%413, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %415 = "tosa.add"(%414, %8) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global500 = %415 : tensor<1x197x768xf32>
    %416 = "tosa.rsqrt"(%415) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global501 = %416 : tensor<1x197x768xf32>
    %417 = "tosa.mul"(%411, %416) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %418 = "tosa.mul"(%417, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %419 = "tosa.add"(%418, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %420 = "tosa.matmul"(%419, %9) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %421 = "tosa.add"(%420, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %422 = "tosa.reshape"(%421) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %423 = "tosa.transpose"(%422, %10) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %424 = "tosa.reshape"(%423) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    ml_program.global_store @global509 = %424 : tensor<12x197x64xf32>
    ml_program.global_store @global519 = %424 : tensor<12x197x64xf32>
    %425 = "tosa.transpose"(%424, %4) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    ml_program.global_store @global520 = %425 : tensor<12x64x197xf32>
    %426 = "tosa.matmul"(%424, %425) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global522 = %47 : tensor<f32>
    %427 = "tosa.mul"(%426, %47) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %428 = "tosa.exp"(%427) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global524 = %428 : tensor<12x197x197xf32>
    %429 = "tosa.reduce_sum"(%428) {axis = 2 : i32} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    ml_program.global_store @global525 = %429 : tensor<12x197x1xf32>
    %430 = "tosa.reciprocal"(%429) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    ml_program.global_store @global526 = %430 : tensor<12x197x1xf32>
    %431 = "tosa.mul"(%428, %430) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global527 = %431 : tensor<12x197x197xf32>
    %432 = "tosa.matmul"(%431, %424) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %433 = "tosa.reshape"(%432) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %434 = "tosa.transpose"(%433, %10) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %435 = "tosa.reshape"(%434) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %436 = "tosa.matmul"(%435, %9) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %437 = "tosa.add"(%436, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %438 = "tosa.add"(%437, %408) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %439 = "tosa.reduce_sum"(%438) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %440 = "tosa.mul"(%439, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %441 = "tosa.sub"(%438, %440) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global537 = %441 : tensor<1x197x768xf32>
    %442 = "tosa.mul"(%441, %441) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %443 = "tosa.reduce_sum"(%442) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %444 = "tosa.mul"(%443, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %445 = "tosa.add"(%444, %8) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global541 = %445 : tensor<1x197x768xf32>
    %446 = "tosa.rsqrt"(%445) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global542 = %446 : tensor<1x197x768xf32>
    %447 = "tosa.mul"(%441, %446) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %448 = "tosa.mul"(%447, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %449 = "tosa.add"(%448, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %450 = "tosa.matmul"(%449, %12) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %451 = "tosa.add"(%450, %13) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global547 = %451 : tensor<1x197x3072xf32>
    %452 = "tosa.mul"(%451, %15) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global548 = %452 : tensor<1x197x3072xf32>
    ml_program.global_store @global549 = %74 : tensor<1x197x3072xf32>
    %453 = "tosa.pow"(%451, %18) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %454 = "tosa.mul"(%453, %17) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %455 = "tosa.add"(%451, %454) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %456 = "tosa.mul"(%74, %455) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %457 = "tosa.tanh"(%456) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global554 = %457 : tensor<1x197x3072xf32>
    %458 = "tosa.add"(%457, %14) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global555 = %458 : tensor<1x197x3072xf32>
    %459 = "tosa.mul"(%452, %458) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %460 = "tosa.matmul"(%459, %19) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %461 = "tosa.add"(%460, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %462 = "tosa.add"(%438, %461) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %463 = "tosa.reduce_sum"(%462) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %464 = "tosa.mul"(%463, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %465 = "tosa.sub"(%462, %464) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global562 = %465 : tensor<1x197x768xf32>
    %466 = "tosa.mul"(%465, %465) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %467 = "tosa.reduce_sum"(%466) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %468 = "tosa.mul"(%467, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %469 = "tosa.add"(%468, %8) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global566 = %469 : tensor<1x197x768xf32>
    %470 = "tosa.rsqrt"(%469) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global567 = %470 : tensor<1x197x768xf32>
    %471 = "tosa.mul"(%465, %470) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %472 = "tosa.mul"(%471, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %473 = "tosa.add"(%472, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %474 = "tosa.matmul"(%473, %9) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %475 = "tosa.add"(%474, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %476 = "tosa.reshape"(%475) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %477 = "tosa.transpose"(%476, %10) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %478 = "tosa.reshape"(%477) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    ml_program.global_store @global575 = %478 : tensor<12x197x64xf32>
    ml_program.global_store @global585 = %478 : tensor<12x197x64xf32>
    %479 = "tosa.transpose"(%478, %4) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    ml_program.global_store @global586 = %479 : tensor<12x64x197xf32>
    %480 = "tosa.matmul"(%478, %479) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global588 = %47 : tensor<f32>
    %481 = "tosa.mul"(%480, %47) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %482 = "tosa.exp"(%481) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global590 = %482 : tensor<12x197x197xf32>
    %483 = "tosa.reduce_sum"(%482) {axis = 2 : i32} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    ml_program.global_store @global591 = %483 : tensor<12x197x1xf32>
    %484 = "tosa.reciprocal"(%483) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    ml_program.global_store @global592 = %484 : tensor<12x197x1xf32>
    %485 = "tosa.mul"(%482, %484) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global593 = %485 : tensor<12x197x197xf32>
    %486 = "tosa.matmul"(%485, %478) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %487 = "tosa.reshape"(%486) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %488 = "tosa.transpose"(%487, %10) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %489 = "tosa.reshape"(%488) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %490 = "tosa.matmul"(%489, %9) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %491 = "tosa.add"(%490, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %492 = "tosa.add"(%491, %462) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %493 = "tosa.reduce_sum"(%492) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %494 = "tosa.mul"(%493, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %495 = "tosa.sub"(%492, %494) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global603 = %495 : tensor<1x197x768xf32>
    %496 = "tosa.mul"(%495, %495) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %497 = "tosa.reduce_sum"(%496) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %498 = "tosa.mul"(%497, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %499 = "tosa.add"(%498, %8) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global607 = %499 : tensor<1x197x768xf32>
    %500 = "tosa.rsqrt"(%499) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global608 = %500 : tensor<1x197x768xf32>
    %501 = "tosa.mul"(%495, %500) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %502 = "tosa.mul"(%501, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %503 = "tosa.add"(%502, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %504 = "tosa.matmul"(%503, %12) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %505 = "tosa.add"(%504, %13) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global613 = %505 : tensor<1x197x3072xf32>
    %506 = "tosa.mul"(%505, %15) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global614 = %506 : tensor<1x197x3072xf32>
    ml_program.global_store @global615 = %74 : tensor<1x197x3072xf32>
    %507 = "tosa.pow"(%505, %18) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %508 = "tosa.mul"(%507, %17) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %509 = "tosa.add"(%505, %508) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %510 = "tosa.mul"(%74, %509) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %511 = "tosa.tanh"(%510) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global620 = %511 : tensor<1x197x3072xf32>
    %512 = "tosa.add"(%511, %14) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global621 = %512 : tensor<1x197x3072xf32>
    %513 = "tosa.mul"(%506, %512) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %514 = "tosa.matmul"(%513, %19) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %515 = "tosa.add"(%514, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %516 = "tosa.add"(%492, %515) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %517 = "tosa.reduce_sum"(%516) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %518 = "tosa.mul"(%517, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %519 = "tosa.sub"(%516, %518) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global628 = %519 : tensor<1x197x768xf32>
    %520 = "tosa.mul"(%519, %519) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %521 = "tosa.reduce_sum"(%520) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %522 = "tosa.mul"(%521, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %523 = "tosa.add"(%522, %8) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global632 = %523 : tensor<1x197x768xf32>
    %524 = "tosa.rsqrt"(%523) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global633 = %524 : tensor<1x197x768xf32>
    %525 = "tosa.mul"(%519, %524) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %526 = "tosa.mul"(%525, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %527 = "tosa.add"(%526, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %528 = "tosa.matmul"(%527, %9) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %529 = "tosa.add"(%528, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %530 = "tosa.reshape"(%529) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %531 = "tosa.transpose"(%530, %10) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %532 = "tosa.reshape"(%531) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    ml_program.global_store @global641 = %532 : tensor<12x197x64xf32>
    ml_program.global_store @global651 = %532 : tensor<12x197x64xf32>
    %533 = "tosa.transpose"(%532, %4) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    ml_program.global_store @global652 = %533 : tensor<12x64x197xf32>
    %534 = "tosa.matmul"(%532, %533) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global654 = %47 : tensor<f32>
    %535 = "tosa.mul"(%534, %47) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %536 = "tosa.exp"(%535) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global656 = %536 : tensor<12x197x197xf32>
    %537 = "tosa.reduce_sum"(%536) {axis = 2 : i32} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    ml_program.global_store @global657 = %537 : tensor<12x197x1xf32>
    %538 = "tosa.reciprocal"(%537) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    ml_program.global_store @global658 = %538 : tensor<12x197x1xf32>
    %539 = "tosa.mul"(%536, %538) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global659 = %539 : tensor<12x197x197xf32>
    %540 = "tosa.matmul"(%539, %532) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %541 = "tosa.reshape"(%540) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %542 = "tosa.transpose"(%541, %10) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %543 = "tosa.reshape"(%542) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %544 = "tosa.matmul"(%543, %9) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %545 = "tosa.add"(%544, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %546 = "tosa.add"(%545, %516) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %547 = "tosa.reduce_sum"(%546) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %548 = "tosa.mul"(%547, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %549 = "tosa.sub"(%546, %548) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global669 = %549 : tensor<1x197x768xf32>
    %550 = "tosa.mul"(%549, %549) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %551 = "tosa.reduce_sum"(%550) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %552 = "tosa.mul"(%551, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %553 = "tosa.add"(%552, %8) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global673 = %553 : tensor<1x197x768xf32>
    %554 = "tosa.rsqrt"(%553) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global674 = %554 : tensor<1x197x768xf32>
    %555 = "tosa.mul"(%549, %554) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %556 = "tosa.mul"(%555, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %557 = "tosa.add"(%556, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %558 = "tosa.matmul"(%557, %12) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %559 = "tosa.add"(%558, %13) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global679 = %559 : tensor<1x197x3072xf32>
    %560 = "tosa.mul"(%559, %15) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global680 = %560 : tensor<1x197x3072xf32>
    ml_program.global_store @global681 = %74 : tensor<1x197x3072xf32>
    %561 = "tosa.pow"(%559, %18) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %562 = "tosa.mul"(%561, %17) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %563 = "tosa.add"(%559, %562) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %564 = "tosa.mul"(%74, %563) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %565 = "tosa.tanh"(%564) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global686 = %565 : tensor<1x197x3072xf32>
    %566 = "tosa.add"(%565, %14) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global687 = %566 : tensor<1x197x3072xf32>
    %567 = "tosa.mul"(%560, %566) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %568 = "tosa.matmul"(%567, %19) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %569 = "tosa.add"(%568, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %570 = "tosa.add"(%546, %569) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %571 = "tosa.reduce_sum"(%570) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %572 = "tosa.mul"(%571, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %573 = "tosa.sub"(%570, %572) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global694 = %573 : tensor<1x197x768xf32>
    %574 = "tosa.mul"(%573, %573) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %575 = "tosa.reduce_sum"(%574) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %576 = "tosa.mul"(%575, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %577 = "tosa.add"(%576, %8) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global698 = %577 : tensor<1x197x768xf32>
    %578 = "tosa.rsqrt"(%577) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global699 = %578 : tensor<1x197x768xf32>
    %579 = "tosa.mul"(%573, %578) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %580 = "tosa.mul"(%579, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %581 = "tosa.add"(%580, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %582 = "tosa.matmul"(%581, %9) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %583 = "tosa.add"(%582, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %584 = "tosa.reshape"(%583) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %585 = "tosa.transpose"(%584, %10) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %586 = "tosa.reshape"(%585) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    ml_program.global_store @global707 = %586 : tensor<12x197x64xf32>
    ml_program.global_store @global717 = %586 : tensor<12x197x64xf32>
    %587 = "tosa.transpose"(%586, %4) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    ml_program.global_store @global718 = %587 : tensor<12x64x197xf32>
    %588 = "tosa.matmul"(%586, %587) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global720 = %47 : tensor<f32>
    %589 = "tosa.mul"(%588, %47) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %590 = "tosa.exp"(%589) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global722 = %590 : tensor<12x197x197xf32>
    %591 = "tosa.reduce_sum"(%590) {axis = 2 : i32} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    ml_program.global_store @global723 = %591 : tensor<12x197x1xf32>
    %592 = "tosa.reciprocal"(%591) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    ml_program.global_store @global724 = %592 : tensor<12x197x1xf32>
    %593 = "tosa.mul"(%590, %592) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global725 = %593 : tensor<12x197x197xf32>
    %594 = "tosa.matmul"(%593, %586) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %595 = "tosa.reshape"(%594) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %596 = "tosa.transpose"(%595, %10) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %597 = "tosa.reshape"(%596) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %598 = "tosa.matmul"(%597, %9) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %599 = "tosa.add"(%598, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %600 = "tosa.add"(%599, %570) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %601 = "tosa.reduce_sum"(%600) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %602 = "tosa.mul"(%601, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %603 = "tosa.sub"(%600, %602) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global735 = %603 : tensor<1x197x768xf32>
    %604 = "tosa.mul"(%603, %603) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %605 = "tosa.reduce_sum"(%604) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %606 = "tosa.mul"(%605, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %607 = "tosa.add"(%606, %8) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global739 = %607 : tensor<1x197x768xf32>
    %608 = "tosa.rsqrt"(%607) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global740 = %608 : tensor<1x197x768xf32>
    %609 = "tosa.mul"(%603, %608) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %610 = "tosa.mul"(%609, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %611 = "tosa.add"(%610, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %612 = "tosa.matmul"(%611, %12) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %613 = "tosa.add"(%612, %13) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global745 = %613 : tensor<1x197x3072xf32>
    %614 = "tosa.mul"(%613, %15) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global746 = %614 : tensor<1x197x3072xf32>
    ml_program.global_store @global747 = %74 : tensor<1x197x3072xf32>
    %615 = "tosa.pow"(%613, %18) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %616 = "tosa.mul"(%615, %17) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %617 = "tosa.add"(%613, %616) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %618 = "tosa.mul"(%74, %617) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %619 = "tosa.tanh"(%618) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global752 = %619 : tensor<1x197x3072xf32>
    %620 = "tosa.add"(%619, %14) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global753 = %620 : tensor<1x197x3072xf32>
    %621 = "tosa.mul"(%614, %620) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %622 = "tosa.matmul"(%621, %19) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %623 = "tosa.add"(%622, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %624 = "tosa.add"(%600, %623) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %625 = "tosa.reduce_sum"(%624) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %626 = "tosa.mul"(%625, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %627 = "tosa.sub"(%624, %626) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global760 = %627 : tensor<1x197x768xf32>
    %628 = "tosa.mul"(%627, %627) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %629 = "tosa.reduce_sum"(%628) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %630 = "tosa.mul"(%629, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %631 = "tosa.add"(%630, %8) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global764 = %631 : tensor<1x197x768xf32>
    %632 = "tosa.rsqrt"(%631) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global765 = %632 : tensor<1x197x768xf32>
    %633 = "tosa.mul"(%627, %632) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %634 = "tosa.mul"(%633, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %635 = "tosa.add"(%634, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %636 = "tosa.matmul"(%635, %9) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %637 = "tosa.add"(%636, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %638 = "tosa.reshape"(%637) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %639 = "tosa.transpose"(%638, %10) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %640 = "tosa.reshape"(%639) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    ml_program.global_store @global773 = %640 : tensor<12x197x64xf32>
    ml_program.global_store @global783 = %640 : tensor<12x197x64xf32>
    %641 = "tosa.transpose"(%640, %4) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    ml_program.global_store @global784 = %641 : tensor<12x64x197xf32>
    %642 = "tosa.matmul"(%640, %641) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global786 = %47 : tensor<f32>
    %643 = "tosa.mul"(%642, %47) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %644 = "tosa.exp"(%643) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global788 = %644 : tensor<12x197x197xf32>
    %645 = "tosa.reduce_sum"(%644) {axis = 2 : i32} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    ml_program.global_store @global789 = %645 : tensor<12x197x1xf32>
    %646 = "tosa.reciprocal"(%645) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    ml_program.global_store @global790 = %646 : tensor<12x197x1xf32>
    %647 = "tosa.mul"(%644, %646) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    ml_program.global_store @global791 = %647 : tensor<12x197x197xf32>
    %648 = "tosa.matmul"(%647, %640) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %649 = "tosa.reshape"(%648) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %650 = "tosa.transpose"(%649, %10) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %651 = "tosa.reshape"(%650) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %652 = "tosa.matmul"(%651, %9) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %653 = "tosa.add"(%652, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %654 = "tosa.add"(%653, %624) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %655 = "tosa.reduce_sum"(%654) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %656 = "tosa.mul"(%655, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %657 = "tosa.sub"(%654, %656) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global801 = %657 : tensor<1x197x768xf32>
    %658 = "tosa.mul"(%657, %657) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %659 = "tosa.reduce_sum"(%658) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %660 = "tosa.mul"(%659, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %661 = "tosa.add"(%660, %8) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global805 = %661 : tensor<1x197x768xf32>
    %662 = "tosa.rsqrt"(%661) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global806 = %662 : tensor<1x197x768xf32>
    %663 = "tosa.mul"(%657, %662) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %664 = "tosa.mul"(%663, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %665 = "tosa.add"(%664, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %666 = "tosa.matmul"(%665, %12) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %667 = "tosa.add"(%666, %13) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global811 = %667 : tensor<1x197x3072xf32>
    %668 = "tosa.mul"(%667, %15) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global812 = %668 : tensor<1x197x3072xf32>
    ml_program.global_store @global813 = %74 : tensor<1x197x3072xf32>
    %669 = "tosa.pow"(%667, %18) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %670 = "tosa.mul"(%669, %17) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %671 = "tosa.add"(%667, %670) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %672 = "tosa.mul"(%74, %671) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %673 = "tosa.tanh"(%672) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global818 = %673 : tensor<1x197x3072xf32>
    %674 = "tosa.add"(%673, %14) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    ml_program.global_store @global819 = %674 : tensor<1x197x3072xf32>
    %675 = "tosa.mul"(%668, %674) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %676 = "tosa.matmul"(%675, %19) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %677 = "tosa.add"(%676, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %678 = "tosa.add"(%654, %677) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %679 = "tosa.reduce_sum"(%678) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %680 = "tosa.mul"(%679, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %681 = "tosa.sub"(%678, %680) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global826 = %681 : tensor<1x197x768xf32>
    %682 = "tosa.mul"(%681, %681) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %683 = "tosa.reduce_sum"(%682) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %684 = "tosa.mul"(%683, %7) {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %685 = "tosa.add"(%684, %8) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global830 = %685 : tensor<1x197x768xf32>
    %686 = "tosa.rsqrt"(%685) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    ml_program.global_store @global831 = %686 : tensor<1x197x768xf32>
    %687 = "tosa.mul"(%681, %686) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %688 = "tosa.mul"(%687, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %689 = "tosa.add"(%688, %1) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %extracted_slice = tensor.extract_slice %689[0, 0, 0] [1, 1, 768] [1, 1, 1] : tensor<1x197x768xf32> to tensor<1x1x768xf32>
    %690 = "tosa.matmul"(%extracted_slice, %20) : (tensor<1x1x768xf32>, tensor<1x768x1000xf32>) -> tensor<1x1x1000xf32>
    %691 = "tosa.add"(%690, %21) : (tensor<1x1x1000xf32>, tensor<1000xf32>) -> tensor<1x1x1000xf32>
    %692 = "tosa.reshape"(%691) {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    return %692 : tensor<1x1000xf32>
  }
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %0 = "tosa.const"() {value = dense<[0, 2, 1]> : tensor<3xi32>} : () -> tensor<3xi32>
    %cst = arith.constant 0.000000e+00 : f32
    %1 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %2 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %3 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %4 = "tosa.const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi64>} : () -> tensor<4xi64>
    %5 = "tosa.const"() {value = dense<[0, 2, 1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %6 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi64>} : () -> tensor<4xi64>
    %7 = "tosa.const"() {value = dense<[3, 1, 2, 0]> : tensor<4xi64>} : () -> tensor<4xi64>
    %8 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi64>} : () -> tensor<4xi64>
    %9 = ml_program.global_load @global1 : tensor<768x16x16x3xf32>
    %10 = ml_program.global_load @global2 : tensor<768xf32>
    %11 = ml_program.global_load @global8 : tensor<f32>
    %12 = ml_program.global_load @global10 : tensor<1x768x768xf32>
    %13 = ml_program.global_load @global13 : tensor<1x768x3072xf32>
    %14 = ml_program.global_load @global16 : tensor<1x197x3072xf32>
    %15 = ml_program.global_load @global19 : tensor<1x197x3072xf32>
    %16 = ml_program.global_load @global20 : tensor<1x3072x768xf32>
    %17 = ml_program.global_load @global21 : tensor<1x768x1000xf32>
    %18 = ml_program.global_load @global34 : tensor<1x197x768xf32>
    %19 = ml_program.global_load @global38 : tensor<1x197x768xf32>
    %20 = ml_program.global_load @global39 : tensor<1x197x768xf32>
    %21 = ml_program.global_load @global47 : tensor<12x197x64xf32>
    %22 = ml_program.global_load @global57 : tensor<12x197x64xf32>
    %23 = ml_program.global_load @global58 : tensor<12x64x197xf32>
    %24 = ml_program.global_load @global60 : tensor<f32>
    %25 = ml_program.global_load @global62 : tensor<12x197x197xf32>
    %26 = ml_program.global_load @global63 : tensor<12x197x1xf32>
    %27 = ml_program.global_load @global64 : tensor<12x197x1xf32>
    %28 = ml_program.global_load @global65 : tensor<12x197x197xf32>
    %29 = ml_program.global_load @global75 : tensor<1x197x768xf32>
    %30 = ml_program.global_load @global79 : tensor<1x197x768xf32>
    %31 = ml_program.global_load @global80 : tensor<1x197x768xf32>
    %32 = ml_program.global_load @global85 : tensor<1x197x3072xf32>
    %33 = ml_program.global_load @global86 : tensor<1x197x3072xf32>
    %34 = ml_program.global_load @global87 : tensor<1x197x3072xf32>
    %35 = ml_program.global_load @global92 : tensor<1x197x3072xf32>
    %36 = ml_program.global_load @global93 : tensor<1x197x3072xf32>
    %37 = ml_program.global_load @global100 : tensor<1x197x768xf32>
    %38 = ml_program.global_load @global104 : tensor<1x197x768xf32>
    %39 = ml_program.global_load @global105 : tensor<1x197x768xf32>
    %40 = ml_program.global_load @global113 : tensor<12x197x64xf32>
    %41 = ml_program.global_load @global123 : tensor<12x197x64xf32>
    %42 = ml_program.global_load @global124 : tensor<12x64x197xf32>
    %43 = ml_program.global_load @global126 : tensor<f32>
    %44 = ml_program.global_load @global128 : tensor<12x197x197xf32>
    %45 = ml_program.global_load @global129 : tensor<12x197x1xf32>
    %46 = ml_program.global_load @global130 : tensor<12x197x1xf32>
    %47 = ml_program.global_load @global131 : tensor<12x197x197xf32>
    %48 = ml_program.global_load @global141 : tensor<1x197x768xf32>
    %49 = ml_program.global_load @global145 : tensor<1x197x768xf32>
    %50 = ml_program.global_load @global146 : tensor<1x197x768xf32>
    %51 = ml_program.global_load @global151 : tensor<1x197x3072xf32>
    %52 = ml_program.global_load @global152 : tensor<1x197x3072xf32>
    %53 = ml_program.global_load @global153 : tensor<1x197x3072xf32>
    %54 = ml_program.global_load @global158 : tensor<1x197x3072xf32>
    %55 = ml_program.global_load @global159 : tensor<1x197x3072xf32>
    %56 = ml_program.global_load @global166 : tensor<1x197x768xf32>
    %57 = ml_program.global_load @global170 : tensor<1x197x768xf32>
    %58 = ml_program.global_load @global171 : tensor<1x197x768xf32>
    %59 = ml_program.global_load @global179 : tensor<12x197x64xf32>
    %60 = ml_program.global_load @global189 : tensor<12x197x64xf32>
    %61 = ml_program.global_load @global190 : tensor<12x64x197xf32>
    %62 = ml_program.global_load @global192 : tensor<f32>
    %63 = ml_program.global_load @global194 : tensor<12x197x197xf32>
    %64 = ml_program.global_load @global195 : tensor<12x197x1xf32>
    %65 = ml_program.global_load @global196 : tensor<12x197x1xf32>
    %66 = ml_program.global_load @global197 : tensor<12x197x197xf32>
    %67 = ml_program.global_load @global207 : tensor<1x197x768xf32>
    %68 = ml_program.global_load @global211 : tensor<1x197x768xf32>
    %69 = ml_program.global_load @global212 : tensor<1x197x768xf32>
    %70 = ml_program.global_load @global217 : tensor<1x197x3072xf32>
    %71 = ml_program.global_load @global218 : tensor<1x197x3072xf32>
    %72 = ml_program.global_load @global219 : tensor<1x197x3072xf32>
    %73 = ml_program.global_load @global224 : tensor<1x197x3072xf32>
    %74 = ml_program.global_load @global225 : tensor<1x197x3072xf32>
    %75 = ml_program.global_load @global232 : tensor<1x197x768xf32>
    %76 = ml_program.global_load @global236 : tensor<1x197x768xf32>
    %77 = ml_program.global_load @global237 : tensor<1x197x768xf32>
    %78 = ml_program.global_load @global245 : tensor<12x197x64xf32>
    %79 = ml_program.global_load @global255 : tensor<12x197x64xf32>
    %80 = ml_program.global_load @global256 : tensor<12x64x197xf32>
    %81 = ml_program.global_load @global258 : tensor<f32>
    %82 = ml_program.global_load @global260 : tensor<12x197x197xf32>
    %83 = ml_program.global_load @global261 : tensor<12x197x1xf32>
    %84 = ml_program.global_load @global262 : tensor<12x197x1xf32>
    %85 = ml_program.global_load @global263 : tensor<12x197x197xf32>
    %86 = ml_program.global_load @global273 : tensor<1x197x768xf32>
    %87 = ml_program.global_load @global277 : tensor<1x197x768xf32>
    %88 = ml_program.global_load @global278 : tensor<1x197x768xf32>
    %89 = ml_program.global_load @global283 : tensor<1x197x3072xf32>
    %90 = ml_program.global_load @global284 : tensor<1x197x3072xf32>
    %91 = ml_program.global_load @global285 : tensor<1x197x3072xf32>
    %92 = ml_program.global_load @global290 : tensor<1x197x3072xf32>
    %93 = ml_program.global_load @global291 : tensor<1x197x3072xf32>
    %94 = ml_program.global_load @global298 : tensor<1x197x768xf32>
    %95 = ml_program.global_load @global302 : tensor<1x197x768xf32>
    %96 = ml_program.global_load @global303 : tensor<1x197x768xf32>
    %97 = ml_program.global_load @global311 : tensor<12x197x64xf32>
    %98 = ml_program.global_load @global321 : tensor<12x197x64xf32>
    %99 = ml_program.global_load @global322 : tensor<12x64x197xf32>
    %100 = ml_program.global_load @global324 : tensor<f32>
    %101 = ml_program.global_load @global326 : tensor<12x197x197xf32>
    %102 = ml_program.global_load @global327 : tensor<12x197x1xf32>
    %103 = ml_program.global_load @global328 : tensor<12x197x1xf32>
    %104 = ml_program.global_load @global329 : tensor<12x197x197xf32>
    %105 = ml_program.global_load @global339 : tensor<1x197x768xf32>
    %106 = ml_program.global_load @global343 : tensor<1x197x768xf32>
    %107 = ml_program.global_load @global344 : tensor<1x197x768xf32>
    %108 = ml_program.global_load @global349 : tensor<1x197x3072xf32>
    %109 = ml_program.global_load @global350 : tensor<1x197x3072xf32>
    %110 = ml_program.global_load @global351 : tensor<1x197x3072xf32>
    %111 = ml_program.global_load @global356 : tensor<1x197x3072xf32>
    %112 = ml_program.global_load @global357 : tensor<1x197x3072xf32>
    %113 = ml_program.global_load @global364 : tensor<1x197x768xf32>
    %114 = ml_program.global_load @global368 : tensor<1x197x768xf32>
    %115 = ml_program.global_load @global369 : tensor<1x197x768xf32>
    %116 = ml_program.global_load @global377 : tensor<12x197x64xf32>
    %117 = ml_program.global_load @global387 : tensor<12x197x64xf32>
    %118 = ml_program.global_load @global388 : tensor<12x64x197xf32>
    %119 = ml_program.global_load @global390 : tensor<f32>
    %120 = ml_program.global_load @global392 : tensor<12x197x197xf32>
    %121 = ml_program.global_load @global393 : tensor<12x197x1xf32>
    %122 = ml_program.global_load @global394 : tensor<12x197x1xf32>
    %123 = ml_program.global_load @global395 : tensor<12x197x197xf32>
    %124 = ml_program.global_load @global405 : tensor<1x197x768xf32>
    %125 = ml_program.global_load @global409 : tensor<1x197x768xf32>
    %126 = ml_program.global_load @global410 : tensor<1x197x768xf32>
    %127 = ml_program.global_load @global415 : tensor<1x197x3072xf32>
    %128 = ml_program.global_load @global416 : tensor<1x197x3072xf32>
    %129 = ml_program.global_load @global417 : tensor<1x197x3072xf32>
    %130 = ml_program.global_load @global422 : tensor<1x197x3072xf32>
    %131 = ml_program.global_load @global423 : tensor<1x197x3072xf32>
    %132 = ml_program.global_load @global430 : tensor<1x197x768xf32>
    %133 = ml_program.global_load @global434 : tensor<1x197x768xf32>
    %134 = ml_program.global_load @global435 : tensor<1x197x768xf32>
    %135 = ml_program.global_load @global443 : tensor<12x197x64xf32>
    %136 = ml_program.global_load @global453 : tensor<12x197x64xf32>
    %137 = ml_program.global_load @global454 : tensor<12x64x197xf32>
    %138 = ml_program.global_load @global456 : tensor<f32>
    %139 = ml_program.global_load @global458 : tensor<12x197x197xf32>
    %140 = ml_program.global_load @global459 : tensor<12x197x1xf32>
    %141 = ml_program.global_load @global460 : tensor<12x197x1xf32>
    %142 = ml_program.global_load @global461 : tensor<12x197x197xf32>
    %143 = ml_program.global_load @global471 : tensor<1x197x768xf32>
    %144 = ml_program.global_load @global475 : tensor<1x197x768xf32>
    %145 = ml_program.global_load @global476 : tensor<1x197x768xf32>
    %146 = ml_program.global_load @global481 : tensor<1x197x3072xf32>
    %147 = ml_program.global_load @global482 : tensor<1x197x3072xf32>
    %148 = ml_program.global_load @global483 : tensor<1x197x3072xf32>
    %149 = ml_program.global_load @global488 : tensor<1x197x3072xf32>
    %150 = ml_program.global_load @global489 : tensor<1x197x3072xf32>
    %151 = ml_program.global_load @global496 : tensor<1x197x768xf32>
    %152 = ml_program.global_load @global500 : tensor<1x197x768xf32>
    %153 = ml_program.global_load @global501 : tensor<1x197x768xf32>
    %154 = ml_program.global_load @global509 : tensor<12x197x64xf32>
    %155 = ml_program.global_load @global519 : tensor<12x197x64xf32>
    %156 = ml_program.global_load @global520 : tensor<12x64x197xf32>
    %157 = ml_program.global_load @global522 : tensor<f32>
    %158 = ml_program.global_load @global524 : tensor<12x197x197xf32>
    %159 = ml_program.global_load @global525 : tensor<12x197x1xf32>
    %160 = ml_program.global_load @global526 : tensor<12x197x1xf32>
    %161 = ml_program.global_load @global527 : tensor<12x197x197xf32>
    %162 = ml_program.global_load @global537 : tensor<1x197x768xf32>
    %163 = ml_program.global_load @global541 : tensor<1x197x768xf32>
    %164 = ml_program.global_load @global542 : tensor<1x197x768xf32>
    %165 = ml_program.global_load @global547 : tensor<1x197x3072xf32>
    %166 = ml_program.global_load @global548 : tensor<1x197x3072xf32>
    %167 = ml_program.global_load @global549 : tensor<1x197x3072xf32>
    %168 = ml_program.global_load @global554 : tensor<1x197x3072xf32>
    %169 = ml_program.global_load @global555 : tensor<1x197x3072xf32>
    %170 = ml_program.global_load @global562 : tensor<1x197x768xf32>
    %171 = ml_program.global_load @global566 : tensor<1x197x768xf32>
    %172 = ml_program.global_load @global567 : tensor<1x197x768xf32>
    %173 = ml_program.global_load @global575 : tensor<12x197x64xf32>
    %174 = ml_program.global_load @global585 : tensor<12x197x64xf32>
    %175 = ml_program.global_load @global586 : tensor<12x64x197xf32>
    %176 = ml_program.global_load @global588 : tensor<f32>
    %177 = ml_program.global_load @global590 : tensor<12x197x197xf32>
    %178 = ml_program.global_load @global591 : tensor<12x197x1xf32>
    %179 = ml_program.global_load @global592 : tensor<12x197x1xf32>
    %180 = ml_program.global_load @global593 : tensor<12x197x197xf32>
    %181 = ml_program.global_load @global603 : tensor<1x197x768xf32>
    %182 = ml_program.global_load @global607 : tensor<1x197x768xf32>
    %183 = ml_program.global_load @global608 : tensor<1x197x768xf32>
    %184 = ml_program.global_load @global613 : tensor<1x197x3072xf32>
    %185 = ml_program.global_load @global614 : tensor<1x197x3072xf32>
    %186 = ml_program.global_load @global615 : tensor<1x197x3072xf32>
    %187 = ml_program.global_load @global620 : tensor<1x197x3072xf32>
    %188 = ml_program.global_load @global621 : tensor<1x197x3072xf32>
    %189 = ml_program.global_load @global628 : tensor<1x197x768xf32>
    %190 = ml_program.global_load @global632 : tensor<1x197x768xf32>
    %191 = ml_program.global_load @global633 : tensor<1x197x768xf32>
    %192 = ml_program.global_load @global641 : tensor<12x197x64xf32>
    %193 = ml_program.global_load @global651 : tensor<12x197x64xf32>
    %194 = ml_program.global_load @global652 : tensor<12x64x197xf32>
    %195 = ml_program.global_load @global654 : tensor<f32>
    %196 = ml_program.global_load @global656 : tensor<12x197x197xf32>
    %197 = ml_program.global_load @global657 : tensor<12x197x1xf32>
    %198 = ml_program.global_load @global658 : tensor<12x197x1xf32>
    %199 = ml_program.global_load @global659 : tensor<12x197x197xf32>
    %200 = ml_program.global_load @global669 : tensor<1x197x768xf32>
    %201 = ml_program.global_load @global673 : tensor<1x197x768xf32>
    %202 = ml_program.global_load @global674 : tensor<1x197x768xf32>
    %203 = ml_program.global_load @global679 : tensor<1x197x3072xf32>
    %204 = ml_program.global_load @global680 : tensor<1x197x3072xf32>
    %205 = ml_program.global_load @global681 : tensor<1x197x3072xf32>
    %206 = ml_program.global_load @global686 : tensor<1x197x3072xf32>
    %207 = ml_program.global_load @global687 : tensor<1x197x3072xf32>
    %208 = ml_program.global_load @global694 : tensor<1x197x768xf32>
    %209 = ml_program.global_load @global698 : tensor<1x197x768xf32>
    %210 = ml_program.global_load @global699 : tensor<1x197x768xf32>
    %211 = ml_program.global_load @global707 : tensor<12x197x64xf32>
    %212 = ml_program.global_load @global717 : tensor<12x197x64xf32>
    %213 = ml_program.global_load @global718 : tensor<12x64x197xf32>
    %214 = ml_program.global_load @global720 : tensor<f32>
    %215 = ml_program.global_load @global722 : tensor<12x197x197xf32>
    %216 = ml_program.global_load @global723 : tensor<12x197x1xf32>
    %217 = ml_program.global_load @global724 : tensor<12x197x1xf32>
    %218 = ml_program.global_load @global725 : tensor<12x197x197xf32>
    %219 = ml_program.global_load @global735 : tensor<1x197x768xf32>
    %220 = ml_program.global_load @global739 : tensor<1x197x768xf32>
    %221 = ml_program.global_load @global740 : tensor<1x197x768xf32>
    %222 = ml_program.global_load @global745 : tensor<1x197x3072xf32>
    %223 = ml_program.global_load @global746 : tensor<1x197x3072xf32>
    %224 = ml_program.global_load @global747 : tensor<1x197x3072xf32>
    %225 = ml_program.global_load @global752 : tensor<1x197x3072xf32>
    %226 = ml_program.global_load @global753 : tensor<1x197x3072xf32>
    %227 = ml_program.global_load @global760 : tensor<1x197x768xf32>
    %228 = ml_program.global_load @global764 : tensor<1x197x768xf32>
    %229 = ml_program.global_load @global765 : tensor<1x197x768xf32>
    %230 = ml_program.global_load @global773 : tensor<12x197x64xf32>
    %231 = ml_program.global_load @global783 : tensor<12x197x64xf32>
    %232 = ml_program.global_load @global784 : tensor<12x64x197xf32>
    %233 = ml_program.global_load @global786 : tensor<f32>
    %234 = ml_program.global_load @global788 : tensor<12x197x197xf32>
    %235 = ml_program.global_load @global789 : tensor<12x197x1xf32>
    %236 = ml_program.global_load @global790 : tensor<12x197x1xf32>
    %237 = ml_program.global_load @global791 : tensor<12x197x197xf32>
    %238 = ml_program.global_load @global801 : tensor<1x197x768xf32>
    %239 = ml_program.global_load @global805 : tensor<1x197x768xf32>
    %240 = ml_program.global_load @global806 : tensor<1x197x768xf32>
    %241 = ml_program.global_load @global811 : tensor<1x197x3072xf32>
    %242 = ml_program.global_load @global812 : tensor<1x197x3072xf32>
    %243 = ml_program.global_load @global813 : tensor<1x197x3072xf32>
    %244 = ml_program.global_load @global818 : tensor<1x197x3072xf32>
    %245 = ml_program.global_load @global819 : tensor<1x197x3072xf32>
    %246 = ml_program.global_load @global826 : tensor<1x197x768xf32>
    %247 = ml_program.global_load @global830 : tensor<1x197x768xf32>
    %248 = ml_program.global_load @global831 : tensor<1x197x768xf32>
    %249 = "tosa.reshape"(%arg0) {new_shape = array<i64: 1, 1, 1000>} : (tensor<1x1000xf32>) -> tensor<1x1x1000xf32>
    %250 = "tosa.transpose"(%17, %0) : (tensor<1x768x1000xf32>, tensor<3xi32>) -> tensor<1x1000x768xf32>
    %251 = "tosa.matmul"(%249, %250) : (tensor<1x1x1000xf32>, tensor<1x1000x768xf32>) -> tensor<1x1x768xf32>
    %252 = tensor.empty() : tensor<1x197x768xf32>
    %253 = linalg.fill ins(%cst : f32) outs(%252 : tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %inserted_slice = tensor.insert_slice %251 into %253[0, 0, 0] [1, 1, 768] [1, 1, 1] : tensor<1x1x768xf32> into tensor<1x197x768xf32>
    %254 = "tosa.mul"(%10, %inserted_slice) {shift = 0 : i8} : (tensor<768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %255 = "tosa.mul"(%248, %254) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %256 = "tosa.mul"(%246, %254) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %257 = "tosa.pow"(%247, %2) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %258 = "tosa.mul"(%257, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %259 = "tosa.mul"(%258, %256) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %260 = "tosa.reduce_sum"(%259) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %261 = "tosa.mul"(%11, %260) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %262 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%261 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %263 = "tosa.mul"(%246, %262) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %264 = "tosa.add"(%255, %263) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %265 = "tosa.add"(%264, %263) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %266 = "tosa.negate"(%265) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %267 = "tosa.reduce_sum"(%266) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %268 = "tosa.mul"(%11, %267) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %269 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%268 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %270 = "tosa.add"(%265, %269) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %271 = "tosa.transpose"(%16, %0) : (tensor<1x3072x768xf32>, tensor<3xi32>) -> tensor<1x768x3072xf32>
    %272 = "tosa.matmul"(%270, %271) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %273 = "tosa.mul"(%245, %272) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %274 = "tosa.mul"(%242, %272) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %275 = "tosa.mul"(%244, %244) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %276 = "tosa.sub"(%3, %275) : (tensor<f32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %277 = "tosa.mul"(%276, %274) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %278 = "tosa.mul"(%243, %277) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %279 = "tosa.sub"(%15, %3) : (tensor<1x197x3072xf32>, tensor<f32>) -> tensor<1x197x3072xf32>
    %280 = "tosa.pow"(%241, %279) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %281 = "tosa.mul"(%280, %15) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %282 = "tosa.add"(%278, %281) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %283 = "tosa.mul"(%14, %273) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %284 = "tosa.add"(%282, %283) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %285 = "tosa.transpose"(%13, %0) : (tensor<1x768x3072xf32>, tensor<3xi32>) -> tensor<1x3072x768xf32>
    %286 = "tosa.matmul"(%284, %285) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %287 = "tosa.mul"(%10, %286) {shift = 0 : i8} : (tensor<768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %288 = "tosa.mul"(%240, %287) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %289 = "tosa.mul"(%238, %287) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %290 = "tosa.pow"(%239, %2) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %291 = "tosa.mul"(%290, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %292 = "tosa.mul"(%291, %289) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %293 = "tosa.reduce_sum"(%292) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %294 = "tosa.mul"(%11, %293) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %295 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%294 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %296 = "tosa.mul"(%238, %295) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %297 = "tosa.add"(%288, %296) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %298 = "tosa.add"(%297, %296) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %299 = "tosa.add"(%270, %298) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %300 = "tosa.negate"(%298) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %301 = "tosa.reduce_sum"(%300) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %302 = "tosa.mul"(%11, %301) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %303 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%302 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %304 = "tosa.add"(%299, %303) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %305 = "tosa.transpose"(%12, %0) : (tensor<1x768x768xf32>, tensor<3xi32>) -> tensor<1x768x768xf32>
    %306 = "tosa.matmul"(%304, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %307 = "tosa.reshape"(%306) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %308 = "tosa.transpose"(%307, %4) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %309 = "tosa.reshape"(%308) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %310 = "tosa.transpose"(%231, %0) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %311 = "tosa.matmul"(%309, %310) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %312 = "tosa.transpose"(%237, %0) : (tensor<12x197x197xf32>, tensor<3xi32>) -> tensor<12x197x197xf32>
    %313 = "tosa.matmul"(%312, %309) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %314 = "tosa.mul"(%236, %311) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %315 = "tosa.mul"(%234, %311) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %316 = "tosa.reduce_sum"(%315) {axis = 2 : i32} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %317 = "tosa.mul"(%235, %235) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %318 = "tosa.negate"(%317) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %319 = "tosa.reciprocal"(%318) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %320 = "tosa.mul"(%319, %316) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %321 = tensor.empty() : tensor<12x197x197xf32>
    %322 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%320 : tensor<12x197x1xf32>) outs(%321 : tensor<12x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<12x197x197xf32>
    %323 = "tosa.add"(%314, %322) : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %324 = "tosa.mul"(%234, %323) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %325 = "tosa.mul"(%233, %324) {shift = 0 : i8} : (tensor<f32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %326 = "tosa.transpose"(%232, %0) : (tensor<12x64x197xf32>, tensor<3xi32>) -> tensor<12x197x64xf32>
    %327 = "tosa.matmul"(%325, %326) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %328 = "tosa.transpose"(%230, %0) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %329 = "tosa.matmul"(%328, %325) : (tensor<12x64x197xf32>, tensor<12x197x197xf32>) -> tensor<12x64x197xf32>
    %330 = "tosa.transpose"(%329, %5) : (tensor<12x64x197xf32>, tensor<3xi64>) -> tensor<12x197x64xf32>
    %331 = "tosa.reshape"(%313) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %332 = "tosa.transpose"(%331, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %333 = "tosa.reshape"(%332) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %334 = "tosa.matmul"(%333, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %335 = "tosa.reshape"(%330) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %336 = "tosa.transpose"(%335, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %337 = "tosa.reshape"(%336) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %338 = "tosa.matmul"(%337, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %339 = "tosa.add"(%334, %338) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %340 = "tosa.reshape"(%327) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %341 = "tosa.transpose"(%340, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %342 = "tosa.reshape"(%341) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %343 = "tosa.matmul"(%342, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %344 = "tosa.add"(%339, %343) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %345 = "tosa.mul"(%10, %344) {shift = 0 : i8} : (tensor<768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %346 = "tosa.mul"(%229, %345) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %347 = "tosa.mul"(%227, %345) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %348 = "tosa.pow"(%228, %2) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %349 = "tosa.mul"(%348, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %350 = "tosa.mul"(%349, %347) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %351 = "tosa.reduce_sum"(%350) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %352 = "tosa.mul"(%11, %351) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %353 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%352 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %354 = "tosa.mul"(%227, %353) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %355 = "tosa.add"(%346, %354) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %356 = "tosa.add"(%355, %354) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %357 = "tosa.add"(%304, %356) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %358 = "tosa.negate"(%356) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %359 = "tosa.reduce_sum"(%358) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %360 = "tosa.mul"(%11, %359) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %361 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%360 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %362 = "tosa.add"(%357, %361) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %363 = "tosa.matmul"(%362, %271) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %364 = "tosa.mul"(%226, %363) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %365 = "tosa.mul"(%223, %363) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %366 = "tosa.mul"(%225, %225) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %367 = "tosa.sub"(%3, %366) : (tensor<f32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %368 = "tosa.mul"(%367, %365) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %369 = "tosa.mul"(%224, %368) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %370 = "tosa.pow"(%222, %279) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %371 = "tosa.mul"(%370, %15) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %372 = "tosa.add"(%369, %371) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %373 = "tosa.mul"(%14, %364) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %374 = "tosa.add"(%372, %373) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %375 = "tosa.matmul"(%374, %285) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %376 = "tosa.mul"(%10, %375) {shift = 0 : i8} : (tensor<768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %377 = "tosa.mul"(%221, %376) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %378 = "tosa.mul"(%219, %376) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %379 = "tosa.pow"(%220, %2) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %380 = "tosa.mul"(%379, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %381 = "tosa.mul"(%380, %378) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %382 = "tosa.reduce_sum"(%381) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %383 = "tosa.mul"(%11, %382) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %384 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%383 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %385 = "tosa.mul"(%219, %384) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %386 = "tosa.add"(%377, %385) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %387 = "tosa.add"(%386, %385) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %388 = "tosa.add"(%362, %387) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %389 = "tosa.negate"(%387) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %390 = "tosa.reduce_sum"(%389) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %391 = "tosa.mul"(%11, %390) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %392 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%391 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %393 = "tosa.add"(%388, %392) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %394 = "tosa.matmul"(%393, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %395 = "tosa.reshape"(%394) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %396 = "tosa.transpose"(%395, %4) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %397 = "tosa.reshape"(%396) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %398 = "tosa.transpose"(%212, %0) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %399 = "tosa.matmul"(%397, %398) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %400 = "tosa.transpose"(%218, %0) : (tensor<12x197x197xf32>, tensor<3xi32>) -> tensor<12x197x197xf32>
    %401 = "tosa.matmul"(%400, %397) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %402 = "tosa.mul"(%217, %399) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %403 = "tosa.mul"(%215, %399) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %404 = "tosa.reduce_sum"(%403) {axis = 2 : i32} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %405 = "tosa.mul"(%216, %216) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %406 = "tosa.negate"(%405) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %407 = "tosa.reciprocal"(%406) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %408 = "tosa.mul"(%407, %404) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %409 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%408 : tensor<12x197x1xf32>) outs(%321 : tensor<12x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<12x197x197xf32>
    %410 = "tosa.add"(%402, %409) : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %411 = "tosa.mul"(%215, %410) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %412 = "tosa.mul"(%214, %411) {shift = 0 : i8} : (tensor<f32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %413 = "tosa.transpose"(%213, %0) : (tensor<12x64x197xf32>, tensor<3xi32>) -> tensor<12x197x64xf32>
    %414 = "tosa.matmul"(%412, %413) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %415 = "tosa.transpose"(%211, %0) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %416 = "tosa.matmul"(%415, %412) : (tensor<12x64x197xf32>, tensor<12x197x197xf32>) -> tensor<12x64x197xf32>
    %417 = "tosa.transpose"(%416, %5) : (tensor<12x64x197xf32>, tensor<3xi64>) -> tensor<12x197x64xf32>
    %418 = "tosa.reshape"(%401) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %419 = "tosa.transpose"(%418, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %420 = "tosa.reshape"(%419) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %421 = "tosa.matmul"(%420, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %422 = "tosa.reshape"(%417) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %423 = "tosa.transpose"(%422, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %424 = "tosa.reshape"(%423) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %425 = "tosa.matmul"(%424, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %426 = "tosa.add"(%421, %425) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %427 = "tosa.reshape"(%414) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %428 = "tosa.transpose"(%427, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %429 = "tosa.reshape"(%428) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %430 = "tosa.matmul"(%429, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %431 = "tosa.add"(%426, %430) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %432 = "tosa.mul"(%10, %431) {shift = 0 : i8} : (tensor<768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %433 = "tosa.mul"(%210, %432) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %434 = "tosa.mul"(%208, %432) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %435 = "tosa.pow"(%209, %2) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %436 = "tosa.mul"(%435, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %437 = "tosa.mul"(%436, %434) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %438 = "tosa.reduce_sum"(%437) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %439 = "tosa.mul"(%11, %438) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %440 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%439 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %441 = "tosa.mul"(%208, %440) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %442 = "tosa.add"(%433, %441) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %443 = "tosa.add"(%442, %441) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %444 = "tosa.add"(%393, %443) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %445 = "tosa.negate"(%443) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %446 = "tosa.reduce_sum"(%445) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %447 = "tosa.mul"(%11, %446) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %448 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%447 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %449 = "tosa.add"(%444, %448) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %450 = "tosa.matmul"(%449, %271) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %451 = "tosa.mul"(%207, %450) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %452 = "tosa.mul"(%204, %450) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %453 = "tosa.mul"(%206, %206) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %454 = "tosa.sub"(%3, %453) : (tensor<f32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %455 = "tosa.mul"(%454, %452) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %456 = "tosa.mul"(%205, %455) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %457 = "tosa.pow"(%203, %279) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %458 = "tosa.mul"(%457, %15) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %459 = "tosa.add"(%456, %458) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %460 = "tosa.mul"(%14, %451) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %461 = "tosa.add"(%459, %460) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %462 = "tosa.matmul"(%461, %285) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %463 = "tosa.mul"(%10, %462) {shift = 0 : i8} : (tensor<768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %464 = "tosa.mul"(%202, %463) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %465 = "tosa.mul"(%200, %463) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %466 = "tosa.pow"(%201, %2) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %467 = "tosa.mul"(%466, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %468 = "tosa.mul"(%467, %465) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %469 = "tosa.reduce_sum"(%468) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %470 = "tosa.mul"(%11, %469) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %471 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%470 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %472 = "tosa.mul"(%200, %471) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %473 = "tosa.add"(%464, %472) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %474 = "tosa.add"(%473, %472) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %475 = "tosa.add"(%449, %474) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %476 = "tosa.negate"(%474) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %477 = "tosa.reduce_sum"(%476) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %478 = "tosa.mul"(%11, %477) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %479 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%478 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %480 = "tosa.add"(%475, %479) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %481 = "tosa.matmul"(%480, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %482 = "tosa.reshape"(%481) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %483 = "tosa.transpose"(%482, %4) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %484 = "tosa.reshape"(%483) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %485 = "tosa.transpose"(%193, %0) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %486 = "tosa.matmul"(%484, %485) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %487 = "tosa.transpose"(%199, %0) : (tensor<12x197x197xf32>, tensor<3xi32>) -> tensor<12x197x197xf32>
    %488 = "tosa.matmul"(%487, %484) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %489 = "tosa.mul"(%198, %486) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %490 = "tosa.mul"(%196, %486) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %491 = "tosa.reduce_sum"(%490) {axis = 2 : i32} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %492 = "tosa.mul"(%197, %197) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %493 = "tosa.negate"(%492) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %494 = "tosa.reciprocal"(%493) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %495 = "tosa.mul"(%494, %491) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %496 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%495 : tensor<12x197x1xf32>) outs(%321 : tensor<12x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<12x197x197xf32>
    %497 = "tosa.add"(%489, %496) : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %498 = "tosa.mul"(%196, %497) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %499 = "tosa.mul"(%195, %498) {shift = 0 : i8} : (tensor<f32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %500 = "tosa.transpose"(%194, %0) : (tensor<12x64x197xf32>, tensor<3xi32>) -> tensor<12x197x64xf32>
    %501 = "tosa.matmul"(%499, %500) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %502 = "tosa.transpose"(%192, %0) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %503 = "tosa.matmul"(%502, %499) : (tensor<12x64x197xf32>, tensor<12x197x197xf32>) -> tensor<12x64x197xf32>
    %504 = "tosa.transpose"(%503, %5) : (tensor<12x64x197xf32>, tensor<3xi64>) -> tensor<12x197x64xf32>
    %505 = "tosa.reshape"(%488) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %506 = "tosa.transpose"(%505, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %507 = "tosa.reshape"(%506) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %508 = "tosa.matmul"(%507, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %509 = "tosa.reshape"(%504) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %510 = "tosa.transpose"(%509, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %511 = "tosa.reshape"(%510) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %512 = "tosa.matmul"(%511, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %513 = "tosa.add"(%508, %512) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %514 = "tosa.reshape"(%501) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %515 = "tosa.transpose"(%514, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %516 = "tosa.reshape"(%515) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %517 = "tosa.matmul"(%516, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %518 = "tosa.add"(%513, %517) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %519 = "tosa.mul"(%10, %518) {shift = 0 : i8} : (tensor<768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %520 = "tosa.mul"(%191, %519) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %521 = "tosa.mul"(%189, %519) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %522 = "tosa.pow"(%190, %2) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %523 = "tosa.mul"(%522, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %524 = "tosa.mul"(%523, %521) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %525 = "tosa.reduce_sum"(%524) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %526 = "tosa.mul"(%11, %525) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %527 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%526 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %528 = "tosa.mul"(%189, %527) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %529 = "tosa.add"(%520, %528) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %530 = "tosa.add"(%529, %528) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %531 = "tosa.add"(%480, %530) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %532 = "tosa.negate"(%530) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %533 = "tosa.reduce_sum"(%532) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %534 = "tosa.mul"(%11, %533) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %535 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%534 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %536 = "tosa.add"(%531, %535) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %537 = "tosa.matmul"(%536, %271) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %538 = "tosa.mul"(%188, %537) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %539 = "tosa.mul"(%185, %537) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %540 = "tosa.mul"(%187, %187) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %541 = "tosa.sub"(%3, %540) : (tensor<f32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %542 = "tosa.mul"(%541, %539) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %543 = "tosa.mul"(%186, %542) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %544 = "tosa.pow"(%184, %279) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %545 = "tosa.mul"(%544, %15) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %546 = "tosa.add"(%543, %545) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %547 = "tosa.mul"(%14, %538) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %548 = "tosa.add"(%546, %547) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %549 = "tosa.matmul"(%548, %285) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %550 = "tosa.mul"(%10, %549) {shift = 0 : i8} : (tensor<768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %551 = "tosa.mul"(%183, %550) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %552 = "tosa.mul"(%181, %550) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %553 = "tosa.pow"(%182, %2) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %554 = "tosa.mul"(%553, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %555 = "tosa.mul"(%554, %552) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %556 = "tosa.reduce_sum"(%555) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %557 = "tosa.mul"(%11, %556) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %558 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%557 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %559 = "tosa.mul"(%181, %558) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %560 = "tosa.add"(%551, %559) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %561 = "tosa.add"(%560, %559) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %562 = "tosa.add"(%536, %561) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %563 = "tosa.negate"(%561) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %564 = "tosa.reduce_sum"(%563) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %565 = "tosa.mul"(%11, %564) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %566 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%565 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %567 = "tosa.add"(%562, %566) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %568 = "tosa.matmul"(%567, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %569 = "tosa.reshape"(%568) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %570 = "tosa.transpose"(%569, %4) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %571 = "tosa.reshape"(%570) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %572 = "tosa.transpose"(%174, %0) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %573 = "tosa.matmul"(%571, %572) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %574 = "tosa.transpose"(%180, %0) : (tensor<12x197x197xf32>, tensor<3xi32>) -> tensor<12x197x197xf32>
    %575 = "tosa.matmul"(%574, %571) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %576 = "tosa.mul"(%179, %573) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %577 = "tosa.mul"(%177, %573) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %578 = "tosa.reduce_sum"(%577) {axis = 2 : i32} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %579 = "tosa.mul"(%178, %178) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %580 = "tosa.negate"(%579) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %581 = "tosa.reciprocal"(%580) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %582 = "tosa.mul"(%581, %578) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %583 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%582 : tensor<12x197x1xf32>) outs(%321 : tensor<12x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<12x197x197xf32>
    %584 = "tosa.add"(%576, %583) : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %585 = "tosa.mul"(%177, %584) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %586 = "tosa.mul"(%176, %585) {shift = 0 : i8} : (tensor<f32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %587 = "tosa.transpose"(%175, %0) : (tensor<12x64x197xf32>, tensor<3xi32>) -> tensor<12x197x64xf32>
    %588 = "tosa.matmul"(%586, %587) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %589 = "tosa.transpose"(%173, %0) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %590 = "tosa.matmul"(%589, %586) : (tensor<12x64x197xf32>, tensor<12x197x197xf32>) -> tensor<12x64x197xf32>
    %591 = "tosa.transpose"(%590, %5) : (tensor<12x64x197xf32>, tensor<3xi64>) -> tensor<12x197x64xf32>
    %592 = "tosa.reshape"(%575) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %593 = "tosa.transpose"(%592, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %594 = "tosa.reshape"(%593) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %595 = "tosa.matmul"(%594, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %596 = "tosa.reshape"(%591) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %597 = "tosa.transpose"(%596, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %598 = "tosa.reshape"(%597) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %599 = "tosa.matmul"(%598, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %600 = "tosa.add"(%595, %599) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %601 = "tosa.reshape"(%588) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %602 = "tosa.transpose"(%601, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %603 = "tosa.reshape"(%602) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %604 = "tosa.matmul"(%603, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %605 = "tosa.add"(%600, %604) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %606 = "tosa.mul"(%10, %605) {shift = 0 : i8} : (tensor<768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %607 = "tosa.mul"(%172, %606) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %608 = "tosa.mul"(%170, %606) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %609 = "tosa.pow"(%171, %2) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %610 = "tosa.mul"(%609, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %611 = "tosa.mul"(%610, %608) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %612 = "tosa.reduce_sum"(%611) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %613 = "tosa.mul"(%11, %612) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %614 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%613 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %615 = "tosa.mul"(%170, %614) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %616 = "tosa.add"(%607, %615) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %617 = "tosa.add"(%616, %615) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %618 = "tosa.add"(%567, %617) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %619 = "tosa.negate"(%617) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %620 = "tosa.reduce_sum"(%619) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %621 = "tosa.mul"(%11, %620) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %622 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%621 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %623 = "tosa.add"(%618, %622) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %624 = "tosa.matmul"(%623, %271) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %625 = "tosa.mul"(%169, %624) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %626 = "tosa.mul"(%166, %624) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %627 = "tosa.mul"(%168, %168) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %628 = "tosa.sub"(%3, %627) : (tensor<f32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %629 = "tosa.mul"(%628, %626) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %630 = "tosa.mul"(%167, %629) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %631 = "tosa.pow"(%165, %279) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %632 = "tosa.mul"(%631, %15) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %633 = "tosa.add"(%630, %632) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %634 = "tosa.mul"(%14, %625) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %635 = "tosa.add"(%633, %634) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %636 = "tosa.matmul"(%635, %285) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %637 = "tosa.mul"(%10, %636) {shift = 0 : i8} : (tensor<768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %638 = "tosa.mul"(%164, %637) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %639 = "tosa.mul"(%162, %637) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %640 = "tosa.pow"(%163, %2) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %641 = "tosa.mul"(%640, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %642 = "tosa.mul"(%641, %639) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %643 = "tosa.reduce_sum"(%642) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %644 = "tosa.mul"(%11, %643) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %645 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%644 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %646 = "tosa.mul"(%162, %645) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %647 = "tosa.add"(%638, %646) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %648 = "tosa.add"(%647, %646) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %649 = "tosa.add"(%623, %648) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %650 = "tosa.negate"(%648) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %651 = "tosa.reduce_sum"(%650) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %652 = "tosa.mul"(%11, %651) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %653 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%652 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %654 = "tosa.add"(%649, %653) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %655 = "tosa.matmul"(%654, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %656 = "tosa.reshape"(%655) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %657 = "tosa.transpose"(%656, %4) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %658 = "tosa.reshape"(%657) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %659 = "tosa.transpose"(%155, %0) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %660 = "tosa.matmul"(%658, %659) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %661 = "tosa.transpose"(%161, %0) : (tensor<12x197x197xf32>, tensor<3xi32>) -> tensor<12x197x197xf32>
    %662 = "tosa.matmul"(%661, %658) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %663 = "tosa.mul"(%160, %660) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %664 = "tosa.mul"(%158, %660) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %665 = "tosa.reduce_sum"(%664) {axis = 2 : i32} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %666 = "tosa.mul"(%159, %159) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %667 = "tosa.negate"(%666) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %668 = "tosa.reciprocal"(%667) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %669 = "tosa.mul"(%668, %665) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %670 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%669 : tensor<12x197x1xf32>) outs(%321 : tensor<12x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<12x197x197xf32>
    %671 = "tosa.add"(%663, %670) : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %672 = "tosa.mul"(%158, %671) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %673 = "tosa.mul"(%157, %672) {shift = 0 : i8} : (tensor<f32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %674 = "tosa.transpose"(%156, %0) : (tensor<12x64x197xf32>, tensor<3xi32>) -> tensor<12x197x64xf32>
    %675 = "tosa.matmul"(%673, %674) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %676 = "tosa.transpose"(%154, %0) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %677 = "tosa.matmul"(%676, %673) : (tensor<12x64x197xf32>, tensor<12x197x197xf32>) -> tensor<12x64x197xf32>
    %678 = "tosa.transpose"(%677, %5) : (tensor<12x64x197xf32>, tensor<3xi64>) -> tensor<12x197x64xf32>
    %679 = "tosa.reshape"(%662) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %680 = "tosa.transpose"(%679, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %681 = "tosa.reshape"(%680) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %682 = "tosa.matmul"(%681, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %683 = "tosa.reshape"(%678) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %684 = "tosa.transpose"(%683, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %685 = "tosa.reshape"(%684) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %686 = "tosa.matmul"(%685, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %687 = "tosa.add"(%682, %686) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %688 = "tosa.reshape"(%675) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %689 = "tosa.transpose"(%688, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %690 = "tosa.reshape"(%689) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %691 = "tosa.matmul"(%690, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %692 = "tosa.add"(%687, %691) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %693 = "tosa.mul"(%10, %692) {shift = 0 : i8} : (tensor<768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %694 = "tosa.mul"(%153, %693) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %695 = "tosa.mul"(%151, %693) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %696 = "tosa.pow"(%152, %2) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %697 = "tosa.mul"(%696, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %698 = "tosa.mul"(%697, %695) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %699 = "tosa.reduce_sum"(%698) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %700 = "tosa.mul"(%11, %699) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %701 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%700 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %702 = "tosa.mul"(%151, %701) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %703 = "tosa.add"(%694, %702) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %704 = "tosa.add"(%703, %702) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %705 = "tosa.add"(%654, %704) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %706 = "tosa.negate"(%704) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %707 = "tosa.reduce_sum"(%706) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %708 = "tosa.mul"(%11, %707) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %709 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%708 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %710 = "tosa.add"(%705, %709) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %711 = "tosa.matmul"(%710, %271) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %712 = "tosa.mul"(%150, %711) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %713 = "tosa.mul"(%147, %711) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %714 = "tosa.mul"(%149, %149) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %715 = "tosa.sub"(%3, %714) : (tensor<f32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %716 = "tosa.mul"(%715, %713) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %717 = "tosa.mul"(%148, %716) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %718 = "tosa.pow"(%146, %279) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %719 = "tosa.mul"(%718, %15) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %720 = "tosa.add"(%717, %719) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %721 = "tosa.mul"(%14, %712) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %722 = "tosa.add"(%720, %721) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %723 = "tosa.matmul"(%722, %285) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %724 = "tosa.mul"(%10, %723) {shift = 0 : i8} : (tensor<768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %725 = "tosa.mul"(%145, %724) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %726 = "tosa.mul"(%143, %724) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %727 = "tosa.pow"(%144, %2) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %728 = "tosa.mul"(%727, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %729 = "tosa.mul"(%728, %726) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %730 = "tosa.reduce_sum"(%729) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %731 = "tosa.mul"(%11, %730) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %732 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%731 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %733 = "tosa.mul"(%143, %732) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %734 = "tosa.add"(%725, %733) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %735 = "tosa.add"(%734, %733) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %736 = "tosa.add"(%710, %735) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %737 = "tosa.negate"(%735) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %738 = "tosa.reduce_sum"(%737) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %739 = "tosa.mul"(%11, %738) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %740 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%739 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %741 = "tosa.add"(%736, %740) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %742 = "tosa.matmul"(%741, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %743 = "tosa.reshape"(%742) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %744 = "tosa.transpose"(%743, %4) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %745 = "tosa.reshape"(%744) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %746 = "tosa.transpose"(%136, %0) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %747 = "tosa.matmul"(%745, %746) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %748 = "tosa.transpose"(%142, %0) : (tensor<12x197x197xf32>, tensor<3xi32>) -> tensor<12x197x197xf32>
    %749 = "tosa.matmul"(%748, %745) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %750 = "tosa.mul"(%141, %747) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %751 = "tosa.mul"(%139, %747) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %752 = "tosa.reduce_sum"(%751) {axis = 2 : i32} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %753 = "tosa.mul"(%140, %140) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %754 = "tosa.negate"(%753) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %755 = "tosa.reciprocal"(%754) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %756 = "tosa.mul"(%755, %752) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %757 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%756 : tensor<12x197x1xf32>) outs(%321 : tensor<12x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<12x197x197xf32>
    %758 = "tosa.add"(%750, %757) : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %759 = "tosa.mul"(%139, %758) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %760 = "tosa.mul"(%138, %759) {shift = 0 : i8} : (tensor<f32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %761 = "tosa.transpose"(%137, %0) : (tensor<12x64x197xf32>, tensor<3xi32>) -> tensor<12x197x64xf32>
    %762 = "tosa.matmul"(%760, %761) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %763 = "tosa.transpose"(%135, %0) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %764 = "tosa.matmul"(%763, %760) : (tensor<12x64x197xf32>, tensor<12x197x197xf32>) -> tensor<12x64x197xf32>
    %765 = "tosa.transpose"(%764, %5) : (tensor<12x64x197xf32>, tensor<3xi64>) -> tensor<12x197x64xf32>
    %766 = "tosa.reshape"(%749) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %767 = "tosa.transpose"(%766, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %768 = "tosa.reshape"(%767) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %769 = "tosa.matmul"(%768, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %770 = "tosa.reshape"(%765) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %771 = "tosa.transpose"(%770, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %772 = "tosa.reshape"(%771) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %773 = "tosa.matmul"(%772, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %774 = "tosa.add"(%769, %773) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %775 = "tosa.reshape"(%762) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %776 = "tosa.transpose"(%775, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %777 = "tosa.reshape"(%776) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %778 = "tosa.matmul"(%777, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %779 = "tosa.add"(%774, %778) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %780 = "tosa.mul"(%10, %779) {shift = 0 : i8} : (tensor<768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %781 = "tosa.mul"(%134, %780) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %782 = "tosa.mul"(%132, %780) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %783 = "tosa.pow"(%133, %2) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %784 = "tosa.mul"(%783, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %785 = "tosa.mul"(%784, %782) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %786 = "tosa.reduce_sum"(%785) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %787 = "tosa.mul"(%11, %786) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %788 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%787 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %789 = "tosa.mul"(%132, %788) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %790 = "tosa.add"(%781, %789) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %791 = "tosa.add"(%790, %789) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %792 = "tosa.add"(%741, %791) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %793 = "tosa.negate"(%791) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %794 = "tosa.reduce_sum"(%793) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %795 = "tosa.mul"(%11, %794) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %796 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%795 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %797 = "tosa.add"(%792, %796) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %798 = "tosa.matmul"(%797, %271) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %799 = "tosa.mul"(%131, %798) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %800 = "tosa.mul"(%128, %798) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %801 = "tosa.mul"(%130, %130) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %802 = "tosa.sub"(%3, %801) : (tensor<f32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %803 = "tosa.mul"(%802, %800) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %804 = "tosa.mul"(%129, %803) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %805 = "tosa.pow"(%127, %279) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %806 = "tosa.mul"(%805, %15) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %807 = "tosa.add"(%804, %806) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %808 = "tosa.mul"(%14, %799) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %809 = "tosa.add"(%807, %808) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %810 = "tosa.matmul"(%809, %285) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %811 = "tosa.mul"(%10, %810) {shift = 0 : i8} : (tensor<768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %812 = "tosa.mul"(%126, %811) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %813 = "tosa.mul"(%124, %811) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %814 = "tosa.pow"(%125, %2) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %815 = "tosa.mul"(%814, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %816 = "tosa.mul"(%815, %813) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %817 = "tosa.reduce_sum"(%816) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %818 = "tosa.mul"(%11, %817) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %819 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%818 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %820 = "tosa.mul"(%124, %819) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %821 = "tosa.add"(%812, %820) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %822 = "tosa.add"(%821, %820) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %823 = "tosa.add"(%797, %822) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %824 = "tosa.negate"(%822) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %825 = "tosa.reduce_sum"(%824) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %826 = "tosa.mul"(%11, %825) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %827 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%826 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %828 = "tosa.add"(%823, %827) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %829 = "tosa.matmul"(%828, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %830 = "tosa.reshape"(%829) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %831 = "tosa.transpose"(%830, %4) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %832 = "tosa.reshape"(%831) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %833 = "tosa.transpose"(%117, %0) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %834 = "tosa.matmul"(%832, %833) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %835 = "tosa.transpose"(%123, %0) : (tensor<12x197x197xf32>, tensor<3xi32>) -> tensor<12x197x197xf32>
    %836 = "tosa.matmul"(%835, %832) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %837 = "tosa.mul"(%122, %834) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %838 = "tosa.mul"(%120, %834) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %839 = "tosa.reduce_sum"(%838) {axis = 2 : i32} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %840 = "tosa.mul"(%121, %121) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %841 = "tosa.negate"(%840) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %842 = "tosa.reciprocal"(%841) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %843 = "tosa.mul"(%842, %839) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %844 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%843 : tensor<12x197x1xf32>) outs(%321 : tensor<12x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<12x197x197xf32>
    %845 = "tosa.add"(%837, %844) : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %846 = "tosa.mul"(%120, %845) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %847 = "tosa.mul"(%119, %846) {shift = 0 : i8} : (tensor<f32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %848 = "tosa.transpose"(%118, %0) : (tensor<12x64x197xf32>, tensor<3xi32>) -> tensor<12x197x64xf32>
    %849 = "tosa.matmul"(%847, %848) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %850 = "tosa.transpose"(%116, %0) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %851 = "tosa.matmul"(%850, %847) : (tensor<12x64x197xf32>, tensor<12x197x197xf32>) -> tensor<12x64x197xf32>
    %852 = "tosa.transpose"(%851, %5) : (tensor<12x64x197xf32>, tensor<3xi64>) -> tensor<12x197x64xf32>
    %853 = "tosa.reshape"(%836) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %854 = "tosa.transpose"(%853, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %855 = "tosa.reshape"(%854) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %856 = "tosa.matmul"(%855, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %857 = "tosa.reshape"(%852) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %858 = "tosa.transpose"(%857, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %859 = "tosa.reshape"(%858) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %860 = "tosa.matmul"(%859, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %861 = "tosa.add"(%856, %860) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %862 = "tosa.reshape"(%849) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %863 = "tosa.transpose"(%862, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %864 = "tosa.reshape"(%863) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %865 = "tosa.matmul"(%864, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %866 = "tosa.add"(%861, %865) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %867 = "tosa.mul"(%10, %866) {shift = 0 : i8} : (tensor<768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %868 = "tosa.mul"(%115, %867) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %869 = "tosa.mul"(%113, %867) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %870 = "tosa.pow"(%114, %2) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %871 = "tosa.mul"(%870, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %872 = "tosa.mul"(%871, %869) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %873 = "tosa.reduce_sum"(%872) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %874 = "tosa.mul"(%11, %873) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %875 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%874 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %876 = "tosa.mul"(%113, %875) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %877 = "tosa.add"(%868, %876) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %878 = "tosa.add"(%877, %876) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %879 = "tosa.add"(%828, %878) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %880 = "tosa.negate"(%878) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %881 = "tosa.reduce_sum"(%880) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %882 = "tosa.mul"(%11, %881) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %883 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%882 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %884 = "tosa.add"(%879, %883) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %885 = "tosa.matmul"(%884, %271) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %886 = "tosa.mul"(%112, %885) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %887 = "tosa.mul"(%109, %885) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %888 = "tosa.mul"(%111, %111) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %889 = "tosa.sub"(%3, %888) : (tensor<f32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %890 = "tosa.mul"(%889, %887) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %891 = "tosa.mul"(%110, %890) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %892 = "tosa.pow"(%108, %279) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %893 = "tosa.mul"(%892, %15) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %894 = "tosa.add"(%891, %893) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %895 = "tosa.mul"(%14, %886) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %896 = "tosa.add"(%894, %895) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %897 = "tosa.matmul"(%896, %285) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %898 = "tosa.mul"(%10, %897) {shift = 0 : i8} : (tensor<768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %899 = "tosa.mul"(%107, %898) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %900 = "tosa.mul"(%105, %898) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %901 = "tosa.pow"(%106, %2) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %902 = "tosa.mul"(%901, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %903 = "tosa.mul"(%902, %900) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %904 = "tosa.reduce_sum"(%903) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %905 = "tosa.mul"(%11, %904) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %906 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%905 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %907 = "tosa.mul"(%105, %906) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %908 = "tosa.add"(%899, %907) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %909 = "tosa.add"(%908, %907) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %910 = "tosa.add"(%884, %909) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %911 = "tosa.negate"(%909) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %912 = "tosa.reduce_sum"(%911) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %913 = "tosa.mul"(%11, %912) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %914 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%913 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %915 = "tosa.add"(%910, %914) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %916 = "tosa.matmul"(%915, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %917 = "tosa.reshape"(%916) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %918 = "tosa.transpose"(%917, %4) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %919 = "tosa.reshape"(%918) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %920 = "tosa.transpose"(%98, %0) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %921 = "tosa.matmul"(%919, %920) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %922 = "tosa.transpose"(%104, %0) : (tensor<12x197x197xf32>, tensor<3xi32>) -> tensor<12x197x197xf32>
    %923 = "tosa.matmul"(%922, %919) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %924 = "tosa.mul"(%103, %921) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %925 = "tosa.mul"(%101, %921) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %926 = "tosa.reduce_sum"(%925) {axis = 2 : i32} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %927 = "tosa.mul"(%102, %102) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %928 = "tosa.negate"(%927) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %929 = "tosa.reciprocal"(%928) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %930 = "tosa.mul"(%929, %926) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %931 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%930 : tensor<12x197x1xf32>) outs(%321 : tensor<12x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<12x197x197xf32>
    %932 = "tosa.add"(%924, %931) : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %933 = "tosa.mul"(%101, %932) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %934 = "tosa.mul"(%100, %933) {shift = 0 : i8} : (tensor<f32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %935 = "tosa.transpose"(%99, %0) : (tensor<12x64x197xf32>, tensor<3xi32>) -> tensor<12x197x64xf32>
    %936 = "tosa.matmul"(%934, %935) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %937 = "tosa.transpose"(%97, %0) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %938 = "tosa.matmul"(%937, %934) : (tensor<12x64x197xf32>, tensor<12x197x197xf32>) -> tensor<12x64x197xf32>
    %939 = "tosa.transpose"(%938, %5) : (tensor<12x64x197xf32>, tensor<3xi64>) -> tensor<12x197x64xf32>
    %940 = "tosa.reshape"(%923) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %941 = "tosa.transpose"(%940, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %942 = "tosa.reshape"(%941) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %943 = "tosa.matmul"(%942, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %944 = "tosa.reshape"(%939) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %945 = "tosa.transpose"(%944, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %946 = "tosa.reshape"(%945) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %947 = "tosa.matmul"(%946, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %948 = "tosa.add"(%943, %947) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %949 = "tosa.reshape"(%936) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %950 = "tosa.transpose"(%949, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %951 = "tosa.reshape"(%950) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %952 = "tosa.matmul"(%951, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %953 = "tosa.add"(%948, %952) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %954 = "tosa.mul"(%10, %953) {shift = 0 : i8} : (tensor<768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %955 = "tosa.mul"(%96, %954) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %956 = "tosa.mul"(%94, %954) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %957 = "tosa.pow"(%95, %2) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %958 = "tosa.mul"(%957, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %959 = "tosa.mul"(%958, %956) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %960 = "tosa.reduce_sum"(%959) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %961 = "tosa.mul"(%11, %960) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %962 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%961 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %963 = "tosa.mul"(%94, %962) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %964 = "tosa.add"(%955, %963) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %965 = "tosa.add"(%964, %963) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %966 = "tosa.add"(%915, %965) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %967 = "tosa.negate"(%965) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %968 = "tosa.reduce_sum"(%967) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %969 = "tosa.mul"(%11, %968) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %970 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%969 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %971 = "tosa.add"(%966, %970) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %972 = "tosa.matmul"(%971, %271) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %973 = "tosa.mul"(%93, %972) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %974 = "tosa.mul"(%90, %972) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %975 = "tosa.mul"(%92, %92) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %976 = "tosa.sub"(%3, %975) : (tensor<f32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %977 = "tosa.mul"(%976, %974) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %978 = "tosa.mul"(%91, %977) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %979 = "tosa.pow"(%89, %279) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %980 = "tosa.mul"(%979, %15) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %981 = "tosa.add"(%978, %980) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %982 = "tosa.mul"(%14, %973) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %983 = "tosa.add"(%981, %982) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %984 = "tosa.matmul"(%983, %285) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %985 = "tosa.mul"(%10, %984) {shift = 0 : i8} : (tensor<768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %986 = "tosa.mul"(%88, %985) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %987 = "tosa.mul"(%86, %985) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %988 = "tosa.pow"(%87, %2) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %989 = "tosa.mul"(%988, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %990 = "tosa.mul"(%989, %987) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %991 = "tosa.reduce_sum"(%990) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %992 = "tosa.mul"(%11, %991) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %993 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%992 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %994 = "tosa.mul"(%86, %993) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %995 = "tosa.add"(%986, %994) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %996 = "tosa.add"(%995, %994) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %997 = "tosa.add"(%971, %996) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %998 = "tosa.negate"(%996) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %999 = "tosa.reduce_sum"(%998) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1000 = "tosa.mul"(%11, %999) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %1001 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1000 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1002 = "tosa.add"(%997, %1001) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1003 = "tosa.matmul"(%1002, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1004 = "tosa.reshape"(%1003) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %1005 = "tosa.transpose"(%1004, %4) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %1006 = "tosa.reshape"(%1005) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %1007 = "tosa.transpose"(%79, %0) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %1008 = "tosa.matmul"(%1006, %1007) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %1009 = "tosa.transpose"(%85, %0) : (tensor<12x197x197xf32>, tensor<3xi32>) -> tensor<12x197x197xf32>
    %1010 = "tosa.matmul"(%1009, %1006) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %1011 = "tosa.mul"(%84, %1008) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1012 = "tosa.mul"(%82, %1008) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1013 = "tosa.reduce_sum"(%1012) {axis = 2 : i32} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %1014 = "tosa.mul"(%83, %83) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1015 = "tosa.negate"(%1014) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1016 = "tosa.reciprocal"(%1015) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1017 = "tosa.mul"(%1016, %1013) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1018 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1017 : tensor<12x197x1xf32>) outs(%321 : tensor<12x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<12x197x197xf32>
    %1019 = "tosa.add"(%1011, %1018) : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1020 = "tosa.mul"(%82, %1019) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1021 = "tosa.mul"(%81, %1020) {shift = 0 : i8} : (tensor<f32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1022 = "tosa.transpose"(%80, %0) : (tensor<12x64x197xf32>, tensor<3xi32>) -> tensor<12x197x64xf32>
    %1023 = "tosa.matmul"(%1021, %1022) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %1024 = "tosa.transpose"(%78, %0) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %1025 = "tosa.matmul"(%1024, %1021) : (tensor<12x64x197xf32>, tensor<12x197x197xf32>) -> tensor<12x64x197xf32>
    %1026 = "tosa.transpose"(%1025, %5) : (tensor<12x64x197xf32>, tensor<3xi64>) -> tensor<12x197x64xf32>
    %1027 = "tosa.reshape"(%1010) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1028 = "tosa.transpose"(%1027, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1029 = "tosa.reshape"(%1028) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1030 = "tosa.matmul"(%1029, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1031 = "tosa.reshape"(%1026) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1032 = "tosa.transpose"(%1031, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1033 = "tosa.reshape"(%1032) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1034 = "tosa.matmul"(%1033, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1035 = "tosa.add"(%1030, %1034) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1036 = "tosa.reshape"(%1023) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1037 = "tosa.transpose"(%1036, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1038 = "tosa.reshape"(%1037) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1039 = "tosa.matmul"(%1038, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1040 = "tosa.add"(%1035, %1039) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1041 = "tosa.mul"(%10, %1040) {shift = 0 : i8} : (tensor<768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1042 = "tosa.mul"(%77, %1041) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1043 = "tosa.mul"(%75, %1041) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1044 = "tosa.pow"(%76, %2) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1045 = "tosa.mul"(%1044, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1046 = "tosa.mul"(%1045, %1043) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1047 = "tosa.reduce_sum"(%1046) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1048 = "tosa.mul"(%11, %1047) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %1049 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1048 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1050 = "tosa.mul"(%75, %1049) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1051 = "tosa.add"(%1042, %1050) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1052 = "tosa.add"(%1051, %1050) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1053 = "tosa.add"(%1002, %1052) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1054 = "tosa.negate"(%1052) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1055 = "tosa.reduce_sum"(%1054) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1056 = "tosa.mul"(%11, %1055) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %1057 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1056 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1058 = "tosa.add"(%1053, %1057) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1059 = "tosa.matmul"(%1058, %271) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %1060 = "tosa.mul"(%74, %1059) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1061 = "tosa.mul"(%71, %1059) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1062 = "tosa.mul"(%73, %73) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1063 = "tosa.sub"(%3, %1062) : (tensor<f32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1064 = "tosa.mul"(%1063, %1061) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1065 = "tosa.mul"(%72, %1064) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1066 = "tosa.pow"(%70, %279) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1067 = "tosa.mul"(%1066, %15) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1068 = "tosa.add"(%1065, %1067) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1069 = "tosa.mul"(%14, %1060) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1070 = "tosa.add"(%1068, %1069) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1071 = "tosa.matmul"(%1070, %285) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %1072 = "tosa.mul"(%10, %1071) {shift = 0 : i8} : (tensor<768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1073 = "tosa.mul"(%69, %1072) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1074 = "tosa.mul"(%67, %1072) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1075 = "tosa.pow"(%68, %2) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1076 = "tosa.mul"(%1075, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1077 = "tosa.mul"(%1076, %1074) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1078 = "tosa.reduce_sum"(%1077) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1079 = "tosa.mul"(%11, %1078) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %1080 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1079 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1081 = "tosa.mul"(%67, %1080) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1082 = "tosa.add"(%1073, %1081) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1083 = "tosa.add"(%1082, %1081) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1084 = "tosa.add"(%1058, %1083) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1085 = "tosa.negate"(%1083) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1086 = "tosa.reduce_sum"(%1085) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1087 = "tosa.mul"(%11, %1086) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %1088 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1087 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1089 = "tosa.add"(%1084, %1088) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1090 = "tosa.matmul"(%1089, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1091 = "tosa.reshape"(%1090) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %1092 = "tosa.transpose"(%1091, %4) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %1093 = "tosa.reshape"(%1092) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %1094 = "tosa.transpose"(%60, %0) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %1095 = "tosa.matmul"(%1093, %1094) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %1096 = "tosa.transpose"(%66, %0) : (tensor<12x197x197xf32>, tensor<3xi32>) -> tensor<12x197x197xf32>
    %1097 = "tosa.matmul"(%1096, %1093) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %1098 = "tosa.mul"(%65, %1095) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1099 = "tosa.mul"(%63, %1095) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1100 = "tosa.reduce_sum"(%1099) {axis = 2 : i32} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %1101 = "tosa.mul"(%64, %64) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1102 = "tosa.negate"(%1101) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1103 = "tosa.reciprocal"(%1102) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1104 = "tosa.mul"(%1103, %1100) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1105 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1104 : tensor<12x197x1xf32>) outs(%321 : tensor<12x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<12x197x197xf32>
    %1106 = "tosa.add"(%1098, %1105) : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1107 = "tosa.mul"(%63, %1106) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1108 = "tosa.mul"(%62, %1107) {shift = 0 : i8} : (tensor<f32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1109 = "tosa.transpose"(%61, %0) : (tensor<12x64x197xf32>, tensor<3xi32>) -> tensor<12x197x64xf32>
    %1110 = "tosa.matmul"(%1108, %1109) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %1111 = "tosa.transpose"(%59, %0) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %1112 = "tosa.matmul"(%1111, %1108) : (tensor<12x64x197xf32>, tensor<12x197x197xf32>) -> tensor<12x64x197xf32>
    %1113 = "tosa.transpose"(%1112, %5) : (tensor<12x64x197xf32>, tensor<3xi64>) -> tensor<12x197x64xf32>
    %1114 = "tosa.reshape"(%1097) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1115 = "tosa.transpose"(%1114, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1116 = "tosa.reshape"(%1115) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1117 = "tosa.matmul"(%1116, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1118 = "tosa.reshape"(%1113) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1119 = "tosa.transpose"(%1118, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1120 = "tosa.reshape"(%1119) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1121 = "tosa.matmul"(%1120, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1122 = "tosa.add"(%1117, %1121) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1123 = "tosa.reshape"(%1110) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1124 = "tosa.transpose"(%1123, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1125 = "tosa.reshape"(%1124) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1126 = "tosa.matmul"(%1125, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1127 = "tosa.add"(%1122, %1126) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1128 = "tosa.mul"(%10, %1127) {shift = 0 : i8} : (tensor<768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1129 = "tosa.mul"(%58, %1128) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1130 = "tosa.mul"(%56, %1128) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1131 = "tosa.pow"(%57, %2) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1132 = "tosa.mul"(%1131, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1133 = "tosa.mul"(%1132, %1130) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1134 = "tosa.reduce_sum"(%1133) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1135 = "tosa.mul"(%11, %1134) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %1136 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1135 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1137 = "tosa.mul"(%56, %1136) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1138 = "tosa.add"(%1129, %1137) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1139 = "tosa.add"(%1138, %1137) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1140 = "tosa.add"(%1089, %1139) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1141 = "tosa.negate"(%1139) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1142 = "tosa.reduce_sum"(%1141) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1143 = "tosa.mul"(%11, %1142) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %1144 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1143 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1145 = "tosa.add"(%1140, %1144) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1146 = "tosa.matmul"(%1145, %271) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %1147 = "tosa.mul"(%55, %1146) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1148 = "tosa.mul"(%52, %1146) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1149 = "tosa.mul"(%54, %54) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1150 = "tosa.sub"(%3, %1149) : (tensor<f32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1151 = "tosa.mul"(%1150, %1148) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1152 = "tosa.mul"(%53, %1151) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1153 = "tosa.pow"(%51, %279) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1154 = "tosa.mul"(%1153, %15) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1155 = "tosa.add"(%1152, %1154) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1156 = "tosa.mul"(%14, %1147) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1157 = "tosa.add"(%1155, %1156) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1158 = "tosa.matmul"(%1157, %285) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %1159 = "tosa.mul"(%10, %1158) {shift = 0 : i8} : (tensor<768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1160 = "tosa.mul"(%50, %1159) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1161 = "tosa.mul"(%48, %1159) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1162 = "tosa.pow"(%49, %2) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1163 = "tosa.mul"(%1162, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1164 = "tosa.mul"(%1163, %1161) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1165 = "tosa.reduce_sum"(%1164) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1166 = "tosa.mul"(%11, %1165) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %1167 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1166 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1168 = "tosa.mul"(%48, %1167) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1169 = "tosa.add"(%1160, %1168) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1170 = "tosa.add"(%1169, %1168) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1171 = "tosa.add"(%1145, %1170) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1172 = "tosa.negate"(%1170) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1173 = "tosa.reduce_sum"(%1172) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1174 = "tosa.mul"(%11, %1173) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %1175 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1174 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1176 = "tosa.add"(%1171, %1175) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1177 = "tosa.matmul"(%1176, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1178 = "tosa.reshape"(%1177) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %1179 = "tosa.transpose"(%1178, %4) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %1180 = "tosa.reshape"(%1179) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %1181 = "tosa.transpose"(%41, %0) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %1182 = "tosa.matmul"(%1180, %1181) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %1183 = "tosa.transpose"(%47, %0) : (tensor<12x197x197xf32>, tensor<3xi32>) -> tensor<12x197x197xf32>
    %1184 = "tosa.matmul"(%1183, %1180) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %1185 = "tosa.mul"(%46, %1182) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1186 = "tosa.mul"(%44, %1182) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1187 = "tosa.reduce_sum"(%1186) {axis = 2 : i32} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %1188 = "tosa.mul"(%45, %45) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1189 = "tosa.negate"(%1188) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1190 = "tosa.reciprocal"(%1189) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1191 = "tosa.mul"(%1190, %1187) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1192 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1191 : tensor<12x197x1xf32>) outs(%321 : tensor<12x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<12x197x197xf32>
    %1193 = "tosa.add"(%1185, %1192) : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1194 = "tosa.mul"(%44, %1193) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1195 = "tosa.mul"(%43, %1194) {shift = 0 : i8} : (tensor<f32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1196 = "tosa.transpose"(%42, %0) : (tensor<12x64x197xf32>, tensor<3xi32>) -> tensor<12x197x64xf32>
    %1197 = "tosa.matmul"(%1195, %1196) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %1198 = "tosa.transpose"(%40, %0) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %1199 = "tosa.matmul"(%1198, %1195) : (tensor<12x64x197xf32>, tensor<12x197x197xf32>) -> tensor<12x64x197xf32>
    %1200 = "tosa.transpose"(%1199, %5) : (tensor<12x64x197xf32>, tensor<3xi64>) -> tensor<12x197x64xf32>
    %1201 = "tosa.reshape"(%1184) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1202 = "tosa.transpose"(%1201, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1203 = "tosa.reshape"(%1202) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1204 = "tosa.matmul"(%1203, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1205 = "tosa.reshape"(%1200) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1206 = "tosa.transpose"(%1205, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1207 = "tosa.reshape"(%1206) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1208 = "tosa.matmul"(%1207, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1209 = "tosa.add"(%1204, %1208) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1210 = "tosa.reshape"(%1197) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1211 = "tosa.transpose"(%1210, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1212 = "tosa.reshape"(%1211) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1213 = "tosa.matmul"(%1212, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1214 = "tosa.add"(%1209, %1213) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1215 = "tosa.mul"(%10, %1214) {shift = 0 : i8} : (tensor<768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1216 = "tosa.mul"(%39, %1215) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1217 = "tosa.mul"(%37, %1215) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1218 = "tosa.pow"(%38, %2) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1219 = "tosa.mul"(%1218, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1220 = "tosa.mul"(%1219, %1217) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1221 = "tosa.reduce_sum"(%1220) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1222 = "tosa.mul"(%11, %1221) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %1223 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1222 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1224 = "tosa.mul"(%37, %1223) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1225 = "tosa.add"(%1216, %1224) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1226 = "tosa.add"(%1225, %1224) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1227 = "tosa.add"(%1176, %1226) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1228 = "tosa.negate"(%1226) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1229 = "tosa.reduce_sum"(%1228) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1230 = "tosa.mul"(%11, %1229) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %1231 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1230 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1232 = "tosa.add"(%1227, %1231) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1233 = "tosa.matmul"(%1232, %271) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %1234 = "tosa.mul"(%36, %1233) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1235 = "tosa.mul"(%33, %1233) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1236 = "tosa.mul"(%35, %35) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1237 = "tosa.sub"(%3, %1236) : (tensor<f32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1238 = "tosa.mul"(%1237, %1235) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1239 = "tosa.mul"(%34, %1238) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1240 = "tosa.pow"(%32, %279) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1241 = "tosa.mul"(%1240, %15) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1242 = "tosa.add"(%1239, %1241) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1243 = "tosa.mul"(%14, %1234) {shift = 0 : i8} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1244 = "tosa.add"(%1242, %1243) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1245 = "tosa.matmul"(%1244, %285) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %1246 = "tosa.mul"(%10, %1245) {shift = 0 : i8} : (tensor<768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1247 = "tosa.mul"(%31, %1246) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1248 = "tosa.mul"(%29, %1246) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1249 = "tosa.pow"(%30, %2) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1250 = "tosa.mul"(%1249, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1251 = "tosa.mul"(%1250, %1248) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1252 = "tosa.reduce_sum"(%1251) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1253 = "tosa.mul"(%11, %1252) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %1254 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1253 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1255 = "tosa.mul"(%29, %1254) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1256 = "tosa.add"(%1247, %1255) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1257 = "tosa.add"(%1256, %1255) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1258 = "tosa.add"(%1232, %1257) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1259 = "tosa.negate"(%1257) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1260 = "tosa.reduce_sum"(%1259) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1261 = "tosa.mul"(%11, %1260) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %1262 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1261 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1263 = "tosa.add"(%1258, %1262) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1264 = "tosa.matmul"(%1263, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1265 = "tosa.reshape"(%1264) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %1266 = "tosa.transpose"(%1265, %4) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %1267 = "tosa.reshape"(%1266) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %1268 = "tosa.transpose"(%22, %0) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %1269 = "tosa.matmul"(%1267, %1268) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %1270 = "tosa.transpose"(%28, %0) : (tensor<12x197x197xf32>, tensor<3xi32>) -> tensor<12x197x197xf32>
    %1271 = "tosa.matmul"(%1270, %1267) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %1272 = "tosa.mul"(%27, %1269) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1273 = "tosa.mul"(%25, %1269) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1274 = "tosa.reduce_sum"(%1273) {axis = 2 : i32} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %1275 = "tosa.mul"(%26, %26) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1276 = "tosa.negate"(%1275) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1277 = "tosa.reciprocal"(%1276) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1278 = "tosa.mul"(%1277, %1274) {shift = 0 : i8} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1279 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1278 : tensor<12x197x1xf32>) outs(%321 : tensor<12x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<12x197x197xf32>
    %1280 = "tosa.add"(%1272, %1279) : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1281 = "tosa.mul"(%25, %1280) {shift = 0 : i8} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1282 = "tosa.mul"(%24, %1281) {shift = 0 : i8} : (tensor<f32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1283 = "tosa.transpose"(%23, %0) : (tensor<12x64x197xf32>, tensor<3xi32>) -> tensor<12x197x64xf32>
    %1284 = "tosa.matmul"(%1282, %1283) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %1285 = "tosa.transpose"(%21, %0) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %1286 = "tosa.matmul"(%1285, %1282) : (tensor<12x64x197xf32>, tensor<12x197x197xf32>) -> tensor<12x64x197xf32>
    %1287 = "tosa.transpose"(%1286, %5) : (tensor<12x64x197xf32>, tensor<3xi64>) -> tensor<12x197x64xf32>
    %1288 = "tosa.reshape"(%1271) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1289 = "tosa.transpose"(%1288, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1290 = "tosa.reshape"(%1289) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1291 = "tosa.matmul"(%1290, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1292 = "tosa.reshape"(%1287) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1293 = "tosa.transpose"(%1292, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1294 = "tosa.reshape"(%1293) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1295 = "tosa.matmul"(%1294, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1296 = "tosa.add"(%1291, %1295) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1297 = "tosa.reshape"(%1284) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1298 = "tosa.transpose"(%1297, %4) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1299 = "tosa.reshape"(%1298) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1300 = "tosa.matmul"(%1299, %305) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1301 = "tosa.add"(%1296, %1300) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1302 = "tosa.mul"(%10, %1301) {shift = 0 : i8} : (tensor<768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1303 = "tosa.mul"(%20, %1302) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1304 = "tosa.mul"(%18, %1302) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1305 = "tosa.pow"(%19, %2) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1306 = "tosa.mul"(%1305, %1) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1307 = "tosa.mul"(%1306, %1304) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1308 = "tosa.reduce_sum"(%1307) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1309 = "tosa.mul"(%11, %1308) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %1310 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1309 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1311 = "tosa.mul"(%18, %1310) {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1312 = "tosa.add"(%1303, %1311) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1313 = "tosa.add"(%1312, %1311) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1314 = "tosa.add"(%1263, %1313) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1315 = "tosa.negate"(%1313) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1316 = "tosa.reduce_sum"(%1315) {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1317 = "tosa.mul"(%11, %1316) {shift = 0 : i8} : (tensor<f32>, tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %1318 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1317 : tensor<1x197x1xf32>) outs(%252 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1319 = "tosa.add"(%1314, %1318) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %extracted_slice = tensor.extract_slice %1319[0, 1, 0] [1, 196, 768] [1, 1, 1] : tensor<1x197x768xf32> to tensor<1x196x768xf32>
    %1320 = "tosa.transpose"(%extracted_slice, %5) : (tensor<1x196x768xf32>, tensor<3xi64>) -> tensor<1x768x196xf32>
    %1321 = "tosa.reshape"(%1320) {new_shape = array<i64: 1, 768, 14, 14>} : (tensor<1x768x196xf32>) -> tensor<1x768x14x14xf32>
    %1322 = "tosa.transpose"(%1321, %6) : (tensor<1x768x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x768xf32>
    %1323 = "tosa.transpose"(%9, %7) : (tensor<768x16x16x3xf32>, tensor<4xi64>) -> tensor<3x16x16x768xf32>
    %1324 = tensor.empty() : tensor<3xf32>
    %1325 = "tosa.transpose_conv2d"(%1322, %1323, %1324) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 224, 224, 3>, stride = array<i64: 16, 16>} : (tensor<1x14x14x768xf32>, tensor<3x16x16x768xf32>, tensor<3xf32>) -> tensor<1x224x224x3xf32>
    %1326 = "tosa.transpose"(%1325, %8) : (tensor<1x224x224x3xf32>, tensor<4xi64>) -> tensor<1x3x224x224xf32>
    return %1326 : tensor<1x3x224x224xf32>
  }
}

