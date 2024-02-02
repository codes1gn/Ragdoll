#ifndef RAGDOLL_PIPELINE_PIPELINES_H_
#define RAGDOLL_PIPELINE_PIPELINES_H_

#include "mlir/Pass/Pass.h"
#include "mlir/Pass/PassManager.h"

namespace mlir {
namespace ragdoll {

// Bootstrap utility for entire system
void bootstrapRagdollCompiler(mlir::DialectRegistry& registry);

} // namespace ragdoll
} // namespace mlir

#endif // RAGDOLL_PIPELINE_PIPELINES_H_
