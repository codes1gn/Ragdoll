// RUN: ragdoll-opt %s --ragdoll-merge-multiple-results | FileCheck %s

// CHECK-LABEL: @multi
func.func @multi() -> (f32, f32) {
  // CHECK: %[[RES0:.*]] = call @multi_0{{.*}}
  // CHECK: %[[RES1:.*]] = call @multi_1{{.*}}
  // CHECK: return %[[RES0]], %[[RES1]]
  %x = arith.constant 0.0 : f32
  %y = arith.constant 1.0 : f32
  return %x, %y : f32, f32
}

// CHECK-LABEL @multi_0
// CHECK: %[[VAL:.*]] = arith.constant 0.0
// CHECK: return %[[VAL]]

// CHECK-LABEL @multi_1
// CHECK: %[[VAL:.*]] = arith.constant 1.0
// CHECK: return %[[VAL]]
