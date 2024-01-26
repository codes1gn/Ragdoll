#include "mlir/Dialect/Linalg/IR/Linalg.h"
#include "Dialect/Autodiff/AutodiffInterface.h"
#include "mlir/IR/DialectRegistry.h"

namespace mlir::autodiff::backward_source {

using mlir::linalg::Conv2DNhwcHwcfOp;
using mlir::linalg::FillOp;
using mlir::linalg::GenericOp;
using mlir::linalg::LinalgDialect;
using mlir::linalg::PoolingNhwcMaxOp;

namespace linalg {
class PoolingNhwcMaxSource;

template <typename T>
concept has_get_inputs = requires(T t) {
  { t.getInputs() } -> std::same_as<OperandRange>;
};
} // namespace linalg

template <typename OpTy, unsigned size>
  requires linalg::has_get_inputs<OpTy>
class LinalgSourceOfSize : public BackwardSourceInterface::ExternalModel<
                               LinalgSourceOfSize<OpTy, size>, OpTy> {
public:
  static auto getSources(Operation* op) -> MutableArrayRef<OpOperand> {
    return op->getOpOperands().take_front(size);
  }
};

template <typename OpTy>
  requires linalg::has_get_inputs<OpTy>
class LinalgSource
    : public BackwardSourceInterface::ExternalModel<LinalgSource<OpTy>, OpTy> {
public:
  static auto getSources(Operation* op) -> MutableArrayRef<OpOperand> {
    return op->getOpOperands().take_front(cast<OpTy>(op).getInputs().size());
  }
};

void registerLinalg(DialectRegistry& registry) {
  registry.addExtension(+[](MLIRContext* context, LinalgDialect*) {
    GenericOp::attachInterface<LinalgSource<GenericOp>>(*context);
    Conv2DNhwcHwcfOp::attachInterface<LinalgSource<Conv2DNhwcHwcfOp>>(*context);
    PoolingNhwcMaxOp::attachInterface<LinalgSourceOfSize<PoolingNhwcMaxOp, 1>>(
        *context);
    FillOp::attachInterface<LinalgSourceOfSize<FillOp, 0>>(*context);
  });
}

} // namespace mlir::autodiff::backward_source
