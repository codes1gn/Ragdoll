import pytest
import torch
import tensorflow as tf
import numpy as np
from ragdoll.common import *
from ragdoll.workload import WorkloadBase, TorchWorkload, TFWorkload, RunMode, GranularityLevel
from ragdoll.data_utils import DataProviderBuilder
from ragdoll.executor import *
from ragdoll.workload import *

torch_executor = ExecutorBuilder.build(ExecutorType.TORCH)
workload = WorkloadBuilder.build(WorkloadType.TORCH)
data_provider = DataProviderBuilder.build(ExecutorType.TORCH, DatasetType.CIFAR10)

workload.load_model("resnet18")
torch_executor.set_workload(workload)
torch_executor.set_data_provider(data_provider)
torch_executor.run_mode = RunMode.INFERENCE
output = torch_executor.execute()
assert isinstance(output, torch.Tensor), "Output should be a torch.Tensor"
assert output.shape[1] == 1000, "Output shape mismatch: Expected second dimension to be 2"

torch_executor.run_mode = RunMode.TRAINING
output = torch_executor.execute()
assert isinstance(output, torch.Tensor), "Output should be a torch.Tensor"
assert output.shape[1] == 1000, "Output shape mismatch: Expected second dimension to be 2"
