#include "Func.h"

#include "Dialect/Autodiff/AutodiffOps.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/IR/BuiltinOps.h"

namespace mlir {
namespace ragdoll {
namespace autodiff {

namespace func {
class CallBackward;
} // namespace func

using namespace mlir::func;

void registerFuncBackwardInterface(DialectRegistry& registry) {
  using namespace autodiff::func;
  registry.addExtension(+[](MLIRContext* context, FuncDialect*) {
    CallOp::attachInterface<CallBackward>(*context);
  });
}

namespace func {

template <typename T, typename OpTy>
using Backward = BackwardInterface::ExternalModel<T, OpTy>;

class CallBackward : public Backward<CallBackward, CallOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    auto call = cast<CallOp>(op);
    assert(call->getNumResults() == 1 && "Only one result function supported");

    SymbolTable table{call->getParentOfType<ModuleOp>()};
    auto funcName = call.getCallee();
    auto func = cast<FuncOp>(table.lookup(funcName));
    auto funcTy = func.getFunctionType();

    SmallVector<Value> inputs{call->getOperands()};
    inputs.emplace_back(dtarget);

    Value gradient = nullptr;

    // 避免重复构造 vjp
    call->getParentOp()->walk([&](autodiff::VjpOp vjp) {
      if (vjp.getFunc() != funcName) {
        return;
      }

      auto vjpInputs = vjp.getInputs();
      for (auto [in, vin] : llvm::zip(inputs, vjpInputs)) {
        if (in != vin) {
          return;
        }
      }

      gradient = vjp.getResult(operand.getOperandNumber());
    });

    if (!gradient) {
      auto vjp = builder.create<autodiff::VjpOp>(
          dtarget.getLoc(), funcTy.getInputs(), funcName, inputs);
      gradient = vjp.getResult(operand.getOperandNumber());
    }
    return gradient;
  }
};

} // namespace func

} // namespace autodiff
} // namespace ragdoll
} // namespace mlir
