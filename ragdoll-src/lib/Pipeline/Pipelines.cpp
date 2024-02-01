// HEADER

#include "mlir/IR/Dialect.h"
#include "mlir/IR/MLIRContext.h"
#include "mlir/InitAllDialects.h"
#include "mlir/InitAllPasses.h"
#include "mlir/Pass/PassManager.h"
#include "mlir/Pass/PassRegistry.h"

#include <mlir/Conversion/Passes.h>
#include <mlir/Dialect/Affine/Passes.h>
#include <mlir/Dialect/Linalg/Passes.h>

#include "Dialect/Autodiff/AutodiffDialect.h"
#include "Dialect/Autodiff/AutodiffInterface.h"
#include "Dialect/Ragdoll/RagdollDialect.h"
#include "Dialect/TosaExt/TosaExtDialect.h"
#include "Conversion/Passes.h"
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
inline void buildRagdollDummyPipeline(mlir::OpPassManager& pm) {
  pm.addPass(mlir::createCanonicalizerPass());
  pm.addPass(mlir::createCSEPass());
}

inline void preprocess_pipeline(mlir::OpPassManager& pm) {
  pm.addPass(mlir::createSymbolDCEPass());
  pm.addPass(mlir::createInlinerPass());
  // TODO: should be change to createLowerTosa
  pm.addPass(mlir::tosaext::createLower());
  pm.addPass(mlir::createCSEPass());
  pm.addPass(mlir::createCanonicalizerPass());
}

inline void postprocess_pipeline(mlir::OpPassManager& pm) {
  pm.addPass(mlir::createCSEPass());
  pm.addPass(mlir::createCanonicalizerPass());
}

inline void buildAutodiffPipeline(mlir::OpPassManager& pm) {
  auto backward = [](mlir::OpPassManager& pm) {
    // TODO: move namespace from mlir::autodiff to mlir::ragdoll
    pm.addPass(mlir::autodiff::createAutodiffVjpPublicFunctionsPass());
    pm.addPass(mlir::autodiff::createAutodiffVjpPass());
    pm.addPass(mlir::createInlinerPass());
  };

  preprocess_pipeline(pm);
  backward(pm);
  postprocess_pipeline(pm);
}

inline void registerRagdollPipelines() {
  mlir::PassPipelineRegistration<>("ragdoll-dummy-pipeline",
                                   "fractal dummy pass pipeline",
                                   buildRagdollDummyPipeline);
}

inline void registerAutodiffPipelines() {
  mlir::PassPipelineRegistration<>(
      "autodiff", "Runs the full backward autodiff transformation pipeline",
      buildAutodiffPipeline);
}

//===----------------------------------------------------------------------===//
// register entry for ragdoll system
//===----------------------------------------------------------------------===//
//
/// Add all the MLIR dialects to the provided registry.
/// TODO: AirDialect has issue, cannot find getTypeID impl, fix when needed
inline void registerRagdollDialects(mlir::DialectRegistry& registry) {
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
} // namespace

namespace mlir {
namespace ragdoll {

void bootstrapRagdollCompiler(mlir::DialectRegistry& registry) {

  // register dialect for ChopperRT target
  registerRagdollDialects(registry);

  // prepare codegen
  mlir::registerRagdollOptimisationPasses();
  mlir::ragdoll::registerRagdollConversionPasses();

  // bootstrap interfaces
  autodiff::registerAdjointInterface(registry);
  autodiff::registerBackwardInterface(registry);
  autodiff::registerBackwardSourceInterface(registry);

  // prepare pipelines
  registerRagdollPipelines();
  // rename to Ragdoll Autodiff
  registerAutodiffPipelines();
}

} // namespace ragdoll
} // namespace mlir
