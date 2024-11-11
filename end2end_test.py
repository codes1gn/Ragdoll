model_name = "ResNet152"

import torch
from torch import nn
from torchvision import models
# TODO: import torch_mlir
import numpy as np
# import iree.compiler
# import iree.runtime

from ragdoll import benchmarking
from ragdoll.benchmarking import timer 

import warnings
warnings.filterwarnings("ignore")

from timeit import timeit as ti
import seaborn as sns
import matplotlib.pyplot as plt
import pandas as pd

# def compile_str(mlir):
#     return iree.runtime.load_vm_flatbuffer(
#         iree.compiler.compile_str(
#             mlir, input_type="tosa", target_backends=["llvm-cpu"],
#             extra_args=[
#                 "--iree-llvmcpu-target-cpu-features=host",
#                 "--iree-stream-partitioning-favor=max-concurrency",
#                 "--iree-flow-zero-fill-empty-tensors",
#                 "--iree-llvmcpu-fail-on-out-of-bounds-stack-allocation=0",
#                 "--iree-opt-const-eval",
#                 "--iree-opt-const-expr-hoisting",
#                 "--iree-opt-numeric-precision-reduction",
#                 "--iree-opt-strip-assertions"
#             ]
#         ),
#         backend="llvm-cpu"
#     )
#
# def compile_file(filename):
#     with open(filename) as f:
#         return compile_str(f.read())
    
def get_dataframe(forward, backward, item):
    return pd.concat([
        pd.DataFrame({
            "time": forward,
            "pass": "Forward",
            "item": item
        }, index=[0]),
        pd.DataFrame({
            "time": backward,
            "pass": "Backward",
            "item": item
        }, index=[0]),
        pd.DataFrame({
            "time": forward + backward,
            "pass": "Full",
            "item": item
        }, index=[0]),
    ])


    # 运行计时测试

print("hello")

MAGIC_NUM = 7777e-5

model = models.resnet152(pretrained=False).train(False)
model.load_state_dict({k: torch.ones_like(v) * MAGIC_NUM for k, v in model.state_dict().items()})
model = torch.compile(model, backend="inductor")

image = torch.randn(1, 3, 224, 224, requires_grad=True)
output = model(image)
grad = torch.randn_like(output)

image_np = image.detach().numpy()
grad_np = grad.numpy()

df = pd.DataFrame()

func_f = model
func_b = torch.autograd.grad

_timer = timer.TimerBuilder.create_timer("py_timer", repeat_samples=10, warmup_samples=2)
baseline_f = _timer.run(func_f, image).mean_time("ms")
baseline_b = _timer.run(func_b, output, [image], grad, retain_graph=True).mean_time("ms")
df = pd.concat([df, get_dataframe(baseline_f, baseline_b, "Torch Dynamo")])

print(df)

#
# recompute, storeall = [
#     compile_file(x) for x in ["recompute.mlir", "storeall.mlir"]
# ]
#
# image = torch.randn(1, 3, 224, 224, requires_grad=True)
# output = model(image)
# grad = torch.randn_like(output)
#
# image_np = image.detach().numpy()
# grad_np = grad.numpy()
#
# df = pd.DataFrame()
#
# baseline_f = timeit("model(image)")
# baseline_b = timeit("torch.autograd.grad(output, [image], grad, retain_graph=True)")
# df = pd.concat([df, get_dataframe(baseline_f, baseline_b, "Torch Dynamo")])
#
# f = timeit("recompute.forward(image_np)")
# b = timeit("recompute.dforward(grad_np)")
# df = pd.concat([df, get_dataframe(f, b, "Nabla")])
#
# f = timeit("storeall.forward(image_np)")
# b = timeit("storeall.dforward(grad_np)")
# df = pd.concat([df, get_dataframe(f, b, "Nabla Optim")])
#
#
# df.style.hide(axis="index")
#
# plt.rcParams["figure.dpi"] = 300
#
# sns.barplot(df, x="pass", y="time", hue="item")
# plt.xlabel("Pass")
# plt.ylabel("Time Normalized (ms)")
# plt.legend().set_title("Item")
# plt.title(model_name)
#
# plt.savefig(f"{model_name}-time.png")
#
# forward = df[df["pass"] == "Forward"]
# forward["acceleration"] = baseline_f / forward["time"]
# forward
#
# backward = df[df["pass"] == "Backward"]
# backward["acceleration"] = baseline_b / backward["time"]
# backward
#
# full = df[df["pass"] == "Full"]
# full["acceleration"] = (baseline_b + baseline_f) / full["time"]
# full
#
# df = pd.concat([forward, backward, full])
# df.to_csv(f"{model_name}.csv")

# sns.barplot(df, x="pass", y="acceleration", hue="item")
# plt.xlabel("Pass")
# plt.ylabel("Acceleration")
# plt.legend().set_title("Item")
# plt.title(model_name)
#
# plt.savefig(f"{model_name}-acceleration.png")
