// RUN: ragdoll-opt %s --backward --ragdoll-inline | FileCheck %s

func.func @select(%cond : i1, %on_true : f32, %on_false : f32) -> f32 {
  %res = arith.select %cond, %on_true, %on_false : f32
  return %res : f32
}

// CHECK: @dselect(%[[cond:.*]]: i1, %[[on_true:.*]]: f32, %[[on_false:.*]]: f32, %[[dtarget:.*]]: f32)
// CHECK: %[[zero:.*]] = arith.constant 0.0
// CHECK: %[[don_true:.*]] = arith.select %[[flag:.*]], %[[dtarget]], %[[zero]]
// CHECK: %[[don_false:.*]] = arith.select %[[flag:.*]], %[[zero]], %[[dtarget]]
// CHECK: return %[[dcond:.*]], %[[don_true]], %[[don_false]]
