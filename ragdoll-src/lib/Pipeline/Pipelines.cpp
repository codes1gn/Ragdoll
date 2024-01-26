// HEADER

#include "mlir/Pass/PassManager.h"
#include "mlir/Pass/PassRegistry.h"
#include "mlir/IR/Dialect.h"
#include "mlir/IR/MLIRContext.h"
#include "mlir/InitAllDialects.h"
#include "mlir/InitAllPasses.h"

#include <mlir/Conversion/Passes.h>
#include <mlir/Dialect/Linalg/Passes.h>
#include <mlir/Dialect/Affine/Passes.h>

#include "Dialect/Ragdoll/RagdollDialect.h"
#include "Optimisation/Passes.h"
#include "Pipeline/Pipelines.h"

namespace mlir {
class DialectRegistry;
} // namespace mlir

namespace {

//===----------------------------------------------------------------------===//
// CodeGen-related Pass Pipeline Helpers 
//===----------------------------------------------------------------------===//
//
// helper pass-pipeline to convert linalg -> linalg.generic_op
void buildRagdollDummyPipeline(mlir::OpPassManager &pm) {
  pm.addPass(mlir::createCanonicalizerPass());
  pm.addPass(mlir::createCSEPass());
}

void registerRagdollPipelines () {
  mlir::PassPipelineRegistration<>(
    "ragdoll-dummy-pipeline", 
    "fractal dummy pass pipeline", 
    buildRagdollDummyPipeline
  );
}

/// Add all the MLIR dialects to the provided registry.
/// TODO: AirDialect has issue, cannot find getTypeID impl, fix when needed
inline void registerRagdollDialects(mlir::DialectRegistry &registry) {
  // clang-format off
  registry.insert<mlir::ragdoll::RagdollDialect>();
  // clang-format on
}

/// Append all the MLIR dialects to the registry contained in the given context.
// inline void registerRagdollDialects(mlir::MLIRContext &context) {
//   mlir::DialectRegistry registry;
//   registerRagdollDialects(registry);
//   context.appendDialectRegistry(registry);
// }
}

namespace mlir {
namespace ragdoll {

void bootstrapRagdollCompiler(mlir::DialectRegistry &registry) {

  // register dialect for ChopperRT target
  registerRagdollDialects(registry);

  // prepare codegen
  // mlir::RTI::registerFractalRTIPasses();
  // mlir::registerFractalCodegenPasses();
  // mlir::registerFractalOptimisationPasses();
  // mlir::registerFractalConversionPasses();

  // prepare pipelines
  registerRagdollPipelines();
}

} // namespace ragdoll
} // namespace mlir
