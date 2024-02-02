#ifndef RAGDOLL_DIALECT_AUTODIFF_BACKWARDINTERFACE_GRADIENTMAP_H
#define RAGDOLL_DIALECT_AUTODIFF_BACKWARDINTERFACE_GRADIENTMAP_H

#include "Dialect/Autodiff/AutodiffOps.h"

namespace mlir {
namespace ragdoll {
namespace autodiff {

// TODO: rename to Gradient SymTable
class GradientMap {
private:
  DenseMap<Value, Value> map;

public:
  GradientMap() = default;

  /**
   * @brief 查找给定 value 的梯度
   *
   * @param value
   * @return std::optional<Value>
   */
  std::optional<Value> operator[](Value value) const;

  /**
   * @brief 更新给定 value 的梯度
   *
   * @param value
   * @param grad
   * @param builder
   */
  void update(Value value, Value grad, OpBuilder& builder);
};

/**
 * @brief 进行梯度的反向传播
 *
 * @param ops
 * @param grads
 * @param builder
 */
void backprop(SmallVector<Operation*> ops, GradientMap& grads,
              OpBuilder& builder);

} // namespace autodiff
} // namespace ragdoll
} // namespace mlir

#endif // RAGDOLL_DIALECT_AUTODIFF_BACKWARDINTERFACE_GRADIENTMAP_H
