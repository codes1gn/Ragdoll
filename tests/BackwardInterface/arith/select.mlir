// RUN: ragdoll-opt %s --autodiff --autodiff-inline | FileCheck %s

func.func @select(%cond : i1, %on_true : f32, %on_false : f32) -> f32 {
  %res = arith.select %cond, %on_true, %on_false : f32
  return %res : f32
}

// CHECK: @dselect
