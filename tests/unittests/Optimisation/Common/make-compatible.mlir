// RUN: ragdoll-opt %s --ragdoll-legalise-to-iree-compatibility | FileCheck %s

func.func @affinefor() -> tensor<5xf32> attributes {llvm.emit_c_interface} {
  %cst = arith.constant 5 : index
  %emp = tensor.empty() : tensor<5xf32>
  // CHECK: scf.for
  %res = affine.for %i = 0 to 5 step 1 iter_args(%t = %emp) -> tensor<5xf32> {
    %int = arith.index_cast %i : index to i32
    %float = arith.sitofp %int : i32 to f32
    // CHECK: tensor.from_elements
    // CHECK: tensor.insert_slice
    %inserted = tensor.insert %float into %t[%i] : tensor<5xf32>
    affine.yield %inserted : tensor<5xf32>
  }
  return %res : tensor<5xf32>
}
