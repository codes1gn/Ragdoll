#ifndef LIB_AUTODIFF_BACKWARDSOURCEINTERFACE_BACKWARDSOURCEINTERFACE_H
#define LIB_AUTODIFF_BACKWARDSOURCEINTERFACE_BACKWARDSOURCEINTERFACE_H

namespace mlir {
class DialectRegistry;

namespace autodiff::backward_source {
void registerLinalg(DialectRegistry& registry);
} // namespace autodiff::backward_source
} // namespace mlir

#endif // LIB_AUTODIFF_BACKWARDSOURCEINTERFACE_BACKWARDSOURCEINTERFACE_H
