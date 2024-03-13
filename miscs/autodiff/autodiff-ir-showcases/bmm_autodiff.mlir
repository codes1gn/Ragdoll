
module {
  func.func @matmul(%arg0: tensor<8x512x1024xf32>, %arg1: tensor<8x1024x512xf32>) -> tensor<8x512x512xf32> {
    %0 = ragdoll.matmul %arg0, %arg1 : (tensor<8x512x1024xf32>, tensor<8x1024x512xf32>) -> tensor<8x512x512xf32>
    return %0 : tensor<8x512x512xf32>
  }
  func.func @autodiff_matmul(%arg0 : tensor<8x512x512xf32>, %arg1: tensor<8x512x1024xf32>, %arg2: tensor<8x1024x512xf32>) -> (tensor<8x512x1024xf32>, tensor<8x1024x512xf32>) {
    %0, %1 = autodiff.vjp %arg0, %arg1, %arg2 {forward = @matmul} : -> (tensor<8x512x512xf32>, tensor<8x512x1024xf32>, tensor<8x1024x512xf32>) -> (tensor<8x512x1024xf32>, tensor<8x1024x512xf32>)
    return %0, %1 : (tensor<8x512x1024xf32>, tensor<8x1024x512xf32>)
  }
}

{
  func.func @autodiff_matmul(%arg0: tensor<8x512x512xf32>) -> (tensor<8x512x1024xf32>, tensor<8x1024x512xf32>) {
    %0:2 = call @matmul_vjp(%arg0) : (tensor<8x512x512xf32>) -> (tensor<8x512x1024xf32>, tensor<8x1024x512xf32>)
    return %0#0, %0#1 : tensor<8x512x1024xf32>, tensor<8x1024x512xf32>
  }
  func.func private @matmul_vjp(%arg0: tensor<8x512x512xf32>) -> (tensor<8x512x1024xf32>, tensor<8x1024x512xf32>) {
    %global1 = ml_program.global_load @global1 : tensor<8x1024x512xf32>
    %global0 = ml_program.global_load @global0 : tensor<8x512x1024xf32>
    %0 = tensor.empty() : tensor<8x512x1024xf32>
    %1 = linalg.generic {indexing_maps = [#map2, #map3, #map4, #map2], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%global0, %global1, %arg0 : tensor<8x512x1024xf32>, tensor<8x1024x512xf32>, tensor<8x512x512xf32>) outs(%0 : tensor<8x512x1024xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %out: f32):
      %4 = arith.mulf %in_1, %in_0 : f32
      %5 = arith.addf %4, %out : f32
      linalg.yield %5 : f32
    } -> tensor<8x512x1024xf32>
    %2 = tensor.empty() : tensor<8x1024x512xf32>
    %3 = linalg.generic {indexing_maps = [#map2, #map3, #map4, #map3], iterator_types = ["parallel", "reduction", "parallel", "parallel"]} ins(%global0, %global1, %arg0 : tensor<8x512x1024xf32>, tensor<8x1024x512xf32>, tensor<8x512x512xf32>) outs(%2 : tensor<8x1024x512xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %out: f32):
      %4 = arith.mulf %in_1, %in : f32
      %5 = arith.addf %4, %out : f32
      linalg.yield %5 : f32
    } -> tensor<8x1024x512xf32>
    return %1, %3 : tensor<8x512x1024xf32>, tensor<8x1024x512xf32>
  }
}

module {
  func.func @matmul_dispatch_0_batch_matmul_8x512x512x1024_f32() {
    %cst = arith.constant dense<0.000000e+00> : vector<1x4x4xf32>
    %c0 = arith.constant 0 : index
    %c32 = arith.constant 32 : index
    %c1024 = arith.constant 1024 : index
    %cst_0 = arith.constant 0.000000e+00 : f32
    %0 = hal.interface.binding.subspan set(0) binding(0) type(storage_buffer) alignment(64) offset(%c0) flags(ReadOnly) : memref<8x512x1024xf32, #hal.descriptor_type<storage_buffer>>
    memref.assume_alignment %0, 64 : memref<8x512x1024xf32, #hal.descriptor_type<storage_buffer>>
    %1 = hal.interface.binding.subspan set(0) binding(1) type(storage_buffer) alignment(64) offset(%c0) flags(ReadOnly) : memref<8x1024x512xf32, #hal.descriptor_type<storage_buffer>>
    memref.assume_alignment %1, 64 : memref<8x1024x512xf32, #hal.descriptor_type<storage_buffer>>
    %2 = hal.interface.binding.subspan set(0) binding(2) type(storage_buffer) alignment(64) offset(%c0) : memref<8x512x512xf32, #hal.descriptor_type<storage_buffer>>
    memref.assume_alignment %2, 64 : memref<8x512x512xf32, #hal.descriptor_type<storage_buffer>>
    %workgroup_id_x = hal.interface.workgroup.id[0] : index
    %3 = affine.apply affine_map<()[s0] -> ((s0 floordiv 4) floordiv 16)>()[%workgroup_id_x]
    %4 = affine.apply affine_map<()[s0] -> ((s0 floordiv 4) * 32 - ((s0 floordiv 4) floordiv 16) * 512)>()[%workgroup_id_x]
    %5 = affine.apply affine_map<()[s0] -> (s0 * 128 - (s0 floordiv 4) * 512)>()[%workgroup_id_x]
    %subview = memref.subview %2[%3, %4, %5] [1, 32, 128] [1, 1, 1] : memref<8x512x512xf32, #hal.descriptor_type<storage_buffer>> to memref<1x32x128xf32, strided<[262144, 512, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
    %subview_1 = memref.subview %0[%3, %4, 0] [1, 32, 1024] [1, 1, 1] : memref<8x512x1024xf32, #hal.descriptor_type<storage_buffer>> to memref<1x32x1024xf32, strided<[524288, 1024, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
    %subview_2 = memref.subview %1[%3, 0, %5] [1, 1024, 128] [1, 1, 1] : memref<8x1024x512xf32, #hal.descriptor_type<storage_buffer>> to memref<1x1024x128xf32, strided<[524288, 512, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
    scf.forall (%arg0, %arg1) in (8, 32) {
      %7 = affine.apply affine_map<(d0) -> (d0 * 4)>(%arg0)
      %8 = affine.apply affine_map<(d0) -> (d0 * 4)>(%arg1)
      %subview_4 = memref.subview %subview[0, %7, %8] [1, 4, 4] [1, 1, 1] : memref<1x32x128xf32, strided<[262144, 512, 1], offset: ?>, #hal.descriptor_type<storage_buffer>> to memref<1x4x4xf32, strided<[262144, 512, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
      vector.transfer_write %cst, %subview_4[%c0, %c0, %c0] {in_bounds = [true, true, true]} : vector<1x4x4xf32>, memref<1x4x4xf32, strided<[262144, 512, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
      %subview_5 = memref.subview %subview[0, %7, %8] [1, 4, 4] [1, 1, 1] : memref<1x32x128xf32, strided<[262144, 512, 1], offset: ?>, #hal.descriptor_type<storage_buffer>> to memref<1x4x4xf32, strided<[262144, 512, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
      memref.copy %subview_4, %subview_5 : memref<1x4x4xf32, strided<[262144, 512, 1], offset: ?>, #hal.descriptor_type<storage_buffer>> to memref<1x4x4xf32, strided<[262144, 512, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
    } {mapping = [#gpu.thread<y>, #gpu.thread<x>]}
    %6 = scf.for %arg0 = %c0 to %c1024 step %c32 iter_args(%arg1 = %subview) -> (memref<1x32x128xf32, strided<[262144, 512, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>) {
      %subview_4 = memref.subview %subview_1[0, 0, %arg0] [1, 32, 32] [1, 1, 1] : memref<1x32x1024xf32, strided<[524288, 1024, 1], offset: ?>, #hal.descriptor_type<storage_buffer>> to memref<1x32x32xf32, strided<[524288, 1024, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
      %subview_5 = memref.subview %subview_2[0, %arg0, 0] [1, 32, 128] [1, 1, 1] : memref<1x1024x128xf32, strided<[524288, 512, 1], offset: ?>, #hal.descriptor_type<storage_buffer>> to memref<1x32x128xf32, strided<[524288, 512, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
      %alloc = memref.alloc() : memref<1x32x32xf32, #gpu.address_space<workgroup>>
      gpu.barrier
      memref.copy %subview_4, %alloc {__internal_linalg_transform__ = "copy_to_workgroup_memory"} : memref<1x32x32xf32, strided<[524288, 1024, 1], offset: ?>, #hal.descriptor_type<storage_buffer>> to memref<1x32x32xf32, #gpu.address_space<workgroup>>
      gpu.barrier
      %alloc_6 = memref.alloc() : memref<1x32x128xf32, #gpu.address_space<workgroup>>
      gpu.barrier
      memref.copy %subview_5, %alloc_6 {__internal_linalg_transform__ = "copy_to_workgroup_memory"} : memref<1x32x128xf32, strided<[524288, 512, 1], offset: ?>, #hal.descriptor_type<storage_buffer>> to memref<1x32x128xf32, #gpu.address_space<workgroup>>
      gpu.barrier
      scf.forall (%arg2, %arg3) in (8, 32) {
        %7 = affine.apply affine_map<(d0) -> (d0 * 4)>(%arg2)
        %8 = affine.apply affine_map<(d0) -> (d0 * 4)>(%arg3)
        %subview_7 = memref.subview %alloc[0, %7, 0] [1, 4, 32] [1, 1, 1] : memref<1x32x32xf32, #gpu.address_space<workgroup>> to memref<1x4x32xf32, strided<[1024, 32, 1], offset: ?>, #gpu.address_space<workgroup>>
        %subview_8 = memref.subview %alloc_6[0, 0, %8] [1, 32, 4] [1, 1, 1] : memref<1x32x128xf32, #gpu.address_space<workgroup>> to memref<1x32x4xf32, strided<[4096, 128, 1], offset: ?>, #gpu.address_space<workgroup>>
        %subview_9 = memref.subview %arg1[0, %7, %8] [1, 4, 4] [1, 1, 1] : memref<1x32x128xf32, strided<[262144, 512, 1], offset: ?>, #hal.descriptor_type<storage_buffer>> to memref<1x4x4xf32, strided<[262144, 512, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
        %9 = vector.transfer_read %subview_7[%c0, %c0, %c0], %cst_0 {in_bounds = [true, true, true]} : memref<1x4x32xf32, strided<[1024, 32, 1], offset: ?>, #gpu.address_space<workgroup>>, vector<1x4x32xf32>
        %10 = vector.transfer_read %subview_8[%c0, %c0, %c0], %cst_0 {in_bounds = [true, true, true]} : memref<1x32x4xf32, strided<[4096, 128, 1], offset: ?>, #gpu.address_space<workgroup>>, vector<1x32x4xf32>
        %11 = vector.transfer_read %subview_9[%c0, %c0, %c0], %cst_0 {in_bounds = [true, true, true]} : memref<1x4x4xf32, strided<[262144, 512, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>, vector<1x4x4xf32>
        %12 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %9, %10, %11 : vector<1x4x32xf32>, vector<1x32x4xf32> into vector<1x4x4xf32>
        vector.transfer_write %12, %subview_9[%c0, %c0, %c0] {in_bounds = [true, true, true]} : vector<1x4x4xf32>, memref<1x4x4xf32, strided<[262144, 512, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
        %subview_10 = memref.subview %arg1[0, %7, %8] [1, 4, 4] [1, 1, 1] : memref<1x32x128xf32, strided<[262144, 512, 1], offset: ?>, #hal.descriptor_type<storage_buffer>> to memref<1x4x4xf32, strided<[262144, 512, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
        memref.copy %subview_9, %subview_10 : memref<1x4x4xf32, strided<[262144, 512, 1], offset: ?>, #hal.descriptor_type<storage_buffer>> to memref<1x4x4xf32, strided<[262144, 512, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
      } {mapping = [#gpu.thread<y>, #gpu.thread<x>]}
      scf.yield %arg1 : memref<1x32x128xf32, strided<[262144, 512, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
    }
    %subview_3 = memref.subview %2[%3, %4, %5] [1, 32, 128] [1, 1, 1] : memref<8x512x512xf32, #hal.descriptor_type<storage_buffer>> to memref<1x32x128xf32, strided<[262144, 512, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
    memref.copy %6, %subview_3 : memref<1x32x128xf32, strided<[262144, 512, 1], offset: ?>, #hal.descriptor_type<storage_buffer>> to memref<1x32x128xf32, strided<[262144, 512, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
    return
  }
}

