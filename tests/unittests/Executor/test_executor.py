# tests/test_executor.py
# RUN: python -m pytest -q -v --tb=short %s

import pytest
import torch
import tensorflow as tf
from ragdoll.common import ExecutorType, WorkloadType, DatasetType, RunMode, DeviceType
from ragdoll.executor import ExecutorBuilder
from ragdoll.workload import WorkloadBase
from ragdoll.workload import WorkloadBuilder  # Assuming you have a WorkloadBuilder class
from ragdoll.data_utils import DataProviderBase, DataProviderBuilder


@pytest.fixture
def torch_executor():
    # Create a TorchExecutor with a Torch workload and data provider
    executor = ExecutorBuilder.build(ExecutorType.TORCH)
    workload = WorkloadBuilder.build(WorkloadType.TORCH)
    data_provider = DataProviderBuilder.build(ExecutorType.TORCH, DatasetType.CIFAR10)
    
    workload.load_model("resnet18")
    executor.set_workload(workload)
    executor.set_data_provider(data_provider)
    return executor

@pytest.fixture
def tf_executor():
    # Create a TFExecutor with a TensorFlow workload and data provider
    executor = ExecutorBuilder.build(ExecutorType.TENSORFLOW)
    workload = WorkloadBuilder.build(WorkloadType.TENSORFLOW)
    data_provider = DataProviderBuilder.build(ExecutorType.TENSORFLOW, DatasetType.CIFAR10)
    
    workload.load_model("resnet18")
    executor.set_workload(workload)
    executor.set_data_provider(data_provider)
    return executor


def test_torch_executor_device_info(torch_executor):
    device_info = torch_executor.get_device_info()
    assert device_info["device_type"] in [DeviceType.CPU, DeviceType.GPU], "Device type should be CPU or GPU"
    if device_info["device_type"] == DeviceType.GPU:
        assert "cuda_version" in device_info, "CUDA version should be present for GPU"

def test_torch_executor_execution(torch_executor):
    torch_executor.run_mode = RunMode.INFERENCE
    output = torch_executor.execute()
    assert isinstance(output, torch.Tensor), "Output should be a torch.Tensor"
    assert output.shape[1] == 1000, "Output shape mismatch: Expected second dimension to be 2"

    torch_executor.run_mode = RunMode.TRAINING
    output = torch_executor.execute()
    assert isinstance(output, torch.Tensor), "Output should be a torch.Tensor"
    assert output.shape[1] == 1000, "Output shape mismatch: Expected second dimension to be 2"

# def test_tf_executor_device_info(tf_executor):
#     device_info = tf_executor.get_device_info()
#     assert device_info["device_type"] in [DeviceType.CPU, DeviceType.GPU], "Device type should be CPU or GPU"
#
# def test_tf_executor_execution(tf_executor):
#     tf_executor.set_run_mode(RunMode.INFERENCE)
#     output = tf_executor.execute()
#     assert isinstance(output, tf.Tensor), "Output should be a tf.Tensor"
#     assert output.shape[1] == 2, "Output shape mismatch: Expected second dimension to be 2"
#
#     tf_executor.set_run_mode(RunMode.TRAINING)
#     output = tf_executor.execute()
#     assert isinstance(output, tf.Tensor), "Output should be a tf.Tensor"
#     assert output.shape[1] == 2, "Output shape mismatch: Expected second dimension to be 2"

