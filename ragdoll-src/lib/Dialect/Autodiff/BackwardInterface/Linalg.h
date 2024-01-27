#ifndef LIB_AUTODIFF_BACKWARDINTERFACE_LINALG_H
#define LIB_AUTODIFF_BACKWARDINTERFACE_LINALG_H

#include "Dialect/Autodiff/AutodiffInterface.h"
#include "mlir/Dialect/Linalg/IR/Linalg.h"

namespace mlir::autodiff {
void registerLinalgBackwardInterface(DialectRegistry& registry);
namespace backward::linalg {

// linalg.batch_matmul
using mlir::linalg::BatchMatmulOp;
enum class BatchMatmulRole : unsigned { LHS = 0, RHS = 1 };
using BatchMatmulBackward = BackwardTemplate<BatchMatmulOp, BatchMatmulRole>;

// linalg.conv_2d_nhwc_hwcf
using mlir::linalg::Conv2DNhwcHwcfOp;
enum class Conv2DNhwcHwcfRole : unsigned { INPUT = 0, WEIGHT = 1 };
using Conv2DNhwcHwcfBackward =
    BackwardTemplate<Conv2DNhwcHwcfOp, Conv2DNhwcHwcfRole>;

// linalg.pooling_nhwc_max
using mlir::linalg::PoolingNhwcMaxOp;
enum class PoolingNhwcMaxRole : unsigned { INPUT = 0 };
using PoolingNhwcMaxBackward =
    BackwardTemplate<PoolingNhwcMaxOp, PoolingNhwcMaxRole>;

using mlir::linalg::FillOp;
enum class FillRole : unsigned {};
using FillBackward = BackwardTemplate<FillOp, FillRole>;

enum class ElemwiseUnaryRole : unsigned { INPUT = 0 };
using AbsBackward = BackwardTemplate<mlir::linalg::AbsOp, ElemwiseUnaryRole>;
using LogBackward = BackwardTemplate<mlir::linalg::LogOp, ElemwiseUnaryRole>;

enum class ElemwiseBinaryRole : unsigned { LHS = 0, RHS = 1 };
using AddBackward = BackwardTemplate<mlir::linalg::AddOp, ElemwiseBinaryRole>;
using MulBackward = BackwardTemplate<mlir::linalg::MulOp, ElemwiseBinaryRole>;

auto buildMulAddBody(OpBuilder& builder, Location loc, ValueRange args) -> void;

/**
 * @brief 为给定的 op 生成一个 (lhs * rhs) + out 的 linalg.generic
 *
 * @tparam T
 * @param op 要求具有 2 个 inputs 和 1 个 result
 * @param dtarget 作为新的 rhs，要求与 result 类型相同
 * @param index 将 op.inputs[index] 作为新的 lhs
 * @param builder
 * @return Value
 */
template <typename T>
auto getMulAddValue(T op, Value dtarget, unsigned index, OpBuilder& builder)
    -> Value;

/**
 * @brief 根据输出的 affine maps 确定 iterator types
 *
 * @param outMaps 输出的 affine maps
 * @return SmallVector<IteratorType> `linalg.generic` 的 iterator types
 */
SmallVector<utils::IteratorType> getIterTypes(SmallVector<AffineMap> outMaps);

} // namespace backward::linalg
} // namespace mlir::autodiff

#endif // LIB_AUTODIFF_BACKWARDINTERFACE_LINALG_H
