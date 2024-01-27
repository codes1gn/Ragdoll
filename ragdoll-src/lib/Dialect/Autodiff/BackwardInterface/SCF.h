#ifndef LIB_AUTODIFF_BACKWARDINTERFACE_SCF_H
#define LIB_AUTODIFF_BACKWARDINTERFACE_SCF_H

namespace mlir {
class DialectRegistry;

namespace autodiff {
void registerSCFBackwardInterface(DialectRegistry& registry);
} // namespace autodiff
} // namespace mlir

#endif // LIB_AUTODIFF_BACKWARDINTERFACE_SCF_H
