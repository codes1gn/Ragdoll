#include "../Tosa.h"
#include "Utils/Builder.h"
#include "Utils/Compat.h"

namespace mlir::autodiff::backward {

using Role = tosa::Conv2DRole;
using T = tosa::Conv2DOp;
using B = tosa::Conv2DBackward;

template <>
template <>
auto B::backward<Role::INPUT>(T conv, Value dtarget, OpBuilder& builder)
    -> Value {
  auto weight = conv.getWeight();
  auto transposedWeight = builder::tosa::transpose(
      builder, compat::value_as_tensor(weight), {3L, 1L, 2L, 0L});

  auto input = conv.getInput();
  auto inTy = input.getType();

  SmallVector<int64_t, 4> pad;
  llvm::transform(conv.getPad(), std::back_inserter(pad),
                  [](auto it) { return -it; });

  return builder::tosa::transpose_conv2d(
      builder, compat::value_as_tensor(dtarget), transposedWeight,
      compat::type_as_tensor(inTy), std::nullopt, pad, conv.getStride());
}

/**
 * @brief 开启此宏在对 weight 求导时只进行一次 conv 计算，模拟 channel 并行计算
 *
 */
// #define MOCK_PARALLEL

template <>
template <>
auto B::backward<Role::WEIGHT>(T conv, Value dtarget, OpBuilder& builder)
    -> Value {
  Tensor input = compat::value_as_tensor(conv.getInput());
  format::NHWC format{input};
  auto sliceShape = llvm::to_vector(input.getType().getShape());
  sliceShape.back() = 1;

  SmallVector<Tensor> grads;
  grads.reserve(format.channel);

  Tensor weight = compat::value_as_tensor(conv.getWeight());
  auto weightTy = weight.getType();
  auto gradShape = llvm::to_vector(weightTy.getShape());
  gradShape.back() = gradShape.front();
  gradShape.front() = 1;
  auto gradTy = RankedTensorType::get(gradShape, weightTy.getElementType());

  auto dilation = conv.getDilation();
  assert(std::ranges::all_of(dilation, [](auto it) { return it == 1; }));

  auto convPad = conv.getPad();
  auto convDilation = conv.getStride();
  auto convStride = conv.getDilation();

  auto transposed = builder::tosa::transpose(
      builder, compat::value_as_tensor(dtarget), {3L, 1L, 2L, 0L});

#ifdef MOCK_PARALLEL
  auto grad =
      builder::tosa::conv2d(builder, input, transposed, gradTy, std::nullopt,
                            convPad, convStride, convDilation);
  grads.emplace_back(grad);

  for (auto _ : std::views::iota(0, format.channel)) {
    auto empty = builder::tensor::empty(builder, gradTy);
    grads.emplace_back(empty);
  }
#else
  // for (auto i : std::views::iota(0, format.channel)) {
  for (auto i = 0; i < format.channel; ++i) {
    auto channel = builder::tensor::extract_slice(builder, input, {0, 0, 0, i},
                                                  sliceShape);
    auto grad =
        builder::tosa::conv2d(builder, channel, transposed, gradTy,
                              std::nullopt, convPad, convStride, convDilation);
    grads.emplace_back(grad);
  }
#endif

  auto concat = builder::tosa::concat(builder, grads, 0);
  return builder::tosa::transpose(builder, concat, {3L, 1L, 2L, 0L});
}

template <>
template <>
auto B::backward<Role::BIAS>(T conv, Value dtarget, OpBuilder& builder)
    -> Value {
  return builder::linalg::reduce(builder, compat::value_as_tensor(dtarget),
                                 {0, 1, 2});
}

template <>
auto B::fn(Role role) -> Fn {
  switch (role) {
  case Role::INPUT:
    return backward<Role::INPUT>;
  case Role::WEIGHT:
    return backward<Role::WEIGHT>;
  case Role::BIAS:
    return backward<Role::BIAS>;
  }
}

} // namespace mlir::autodiff::backward
