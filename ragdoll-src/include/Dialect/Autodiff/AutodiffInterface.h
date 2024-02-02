//===- AutodiffOps.h - Autodiff dialect ops -----------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef RAGDOLL_DIALECT_AUTODIFF_AUTODIFFINTERFACES_H
#define RAGDOLL_DIALECT_AUTODIFF_AUTODIFFINTERFACES_H

// clang-format off
#include "mlir/IR/OpDefinition.h"
#include "Dialect/Autodiff/AutodiffInterfaces.h.inc"
// clang-format on

namespace mlir {
namespace ragdoll {
namespace autodiff {

void registerAdjointInterface(DialectRegistry& registry);
void registerBackwardInterface(DialectRegistry& registry);
void registerBackwardSourceInterface(DialectRegistry& registry);

// TODO: remove this namespace
namespace backward {

template <typename T>
concept is_operand_role =
    std::is_enum_v<T> && std::is_unsigned_v<std::underlying_type_t<T>>;

// TODO: rename Role with more intuitve concept
template <typename T, typename Role>
requires is_operand_role<Role>
class BackwardTemplate
    : public BackwardInterface::ExternalModel<BackwardTemplate<T, Role>, T> {
public:
  static auto backward(Operation* op, Value dtarget, OpOperand& operand,
                       OpBuilder& builder) -> Value {
    auto it = cast<T>(op);
    auto role = static_cast<Role>(operand.getOperandNumber());
    return fn(role)(it, dtarget, builder);
  }

private:
  using Fn = function_ref<Value(T, Value, OpBuilder&)>;
  template <Role>
  static auto backward(T, Value, OpBuilder&) -> Value;
  static auto fn(Role role) -> Fn;
};

} // namespace backward

} // namespace autodiff
} // namespace ragdoll
} // namespace mlir

#endif // RAGDOLL_DIALECT_AUTODIFF_AUTODIFFINTERFACES_H
