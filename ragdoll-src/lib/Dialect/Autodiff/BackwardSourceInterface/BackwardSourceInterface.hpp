#pragma once

namespace mlir {
class DialectRegistry;

namespace autodiff::backward_source {
void registerLinalg(DialectRegistry& registry);
} // namespace autodiff::backward_source
} // namespace mlir
