#include "SCF.hpp"

#include "Dialect/Autodiff/AutodiffInterface.h"
#include "mlir/Dialect/SCF/IR/SCF.h"

namespace mlir::autodiff {
namespace scf {
class ForBackward;
} // namespace scf

using mlir::scf::ForOp;
using mlir::scf::SCFDialect;

void registerSCFBackwardInterface(DialectRegistry& registry) {
  registry.addExtension(+[](MLIRContext* context, SCFDialect*) {
    ForOp::attachInterface<scf::ForBackward>(*context);
  });
}

namespace scf {

class ForBackward
    : public BackwardInterface::ExternalModel<ForBackward, ForOp> {
public:
  static auto backward(Operation* op, Value dtarget, OpOperand& operand,
                       OpBuilder& builder) -> Value {
    auto forOp = cast<ForOp>(op);
    auto initArgs = forOp.getInitArgs();
    assert(initArgs.size() == 1 && "not support yet");

    return dtarget;
  }
};

} // namespace scf
} // namespace mlir::autodiff
