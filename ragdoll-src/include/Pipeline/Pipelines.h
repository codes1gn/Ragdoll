#include "mlir/Pass/Pass.h"
#include "mlir/Pass/PassManager.h"

namespace mlir {
namespace ragdoll {

// Bootstrap utility for entire system
void bootstrapRagdollCompiler(mlir::DialectRegistry &registry);

} // namespace ragdoll
} // namespace mlir

