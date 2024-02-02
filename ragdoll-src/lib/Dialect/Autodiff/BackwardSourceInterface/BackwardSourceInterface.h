#ifndef RAGDOLL_DIALECT_AUTODIFF_BACKWARDSOURCEINTERFACE_BACKWARDSOURCEINTERFACE_H
#define RAGDOLL_DIALECT_AUTODIFF_BACKWARDSOURCEINTERFACE_BACKWARDSOURCEINTERFACE_H

namespace mlir {
class DialectRegistry;
}

namespace mlir {
namespace ragdoll {
namespace autodiff {

namespace backward_source {
void registerLinalg(DialectRegistry& registry);
} // namespace backward_source

} // namespace autodiff
} // namespace ragdoll
} // namespace mlir

#endif // RAGDOLL_DIALECT_AUTODIFF_BACKWARDSOURCEINTERFACE_BACKWARDSOURCEINTERFACE_H
