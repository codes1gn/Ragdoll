// RUN: ragdoll-opt %s | ragdoll-opt | FileCheck %s

module {
    // CHECK-LABEL: func @bar()
    func.func @bar() {
        %0 = arith.constant 1 : i32
        // CHECK: %{{.*}} = ragdoll.foo %{{.*}} : i32
        %res = ragdoll.foo %0 : i32
        return
    }
}
