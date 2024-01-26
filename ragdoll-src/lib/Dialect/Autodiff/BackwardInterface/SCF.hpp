#pragma once

namespace mlir {
class DialectRegistry;

namespace autodiff {
void registerSCFBackwardInterface(DialectRegistry& registry);
} // namespace autodiff
} // namespace mlir
