# tests/test_executor.py
# RUN: python -m pytest -q --tb=short %s

import pytest
import torch
import tensorflow as tf
from ragdoll.common.enum import ExecutorType, WorkloadType, DataProviderType, RunMode, DeviceType
from ragdoll.executor.executor_builder import ExecutorBuilder
from ragdoll.workload.workload_base import WorkloadBase
from ragdoll.workload.workload_builder import WorkloadBuilder  # Assuming you have a WorkloadBuilder class
from ragdoll.data_utils.data_provider import DataProviderBase, DataProviderBuilder


@pytest.fixture
def torch_executor():
    # Create a TorchExecutor with a Torch workload and data provider
    executor = ExecutorBuilder.create_executor(ExecutorType.TORCH)
    workload = WorkloadBuilder.create_workload(WorkloadType.TORCH)
    data_provider = DataProviderFactory.create_data_provider(DataProviderType.SYNTHETIC)
    
    executor.set_workload(workload)
    executor.set_data_provider(data_provider)
    return executor

@pytest.fixture
def tf_executor():
    # Create a TFExecutor with a TensorFlow workload and data provider
    executor = ExecutorBuilder.create_executor(ExecutorType.TENSORFLOW)
    workload = WorkloadBuilder.create_workload(WorkloadType.TENSORFLOW)
    data_provider = DataProviderFactory.create_data_provider(DataProviderType.SYNTHETIC)
    
    executor.set_workload(workload)
    executor.set_data_provider(data_provider)
    return executor

@pytest.fixture
def iree_executor():
    # Create an IREEExecutor with a Torch-compatible workload and data provider
    executor = ExecutorBuilder.create_executor(ExecutorType.IREE)
    workload = WorkloadBuilder.create_workload(WorkloadType.TORCH)  # Using Torch workload as a placeholder
    data_provider = DataProviderFactory.create_data_provider(DataProviderType.SYNTHETIC)
    
    executor.set_workload(workload)
    executor.set_data_provider(data_provider)
    return executor

def test_torch_executor_device_info(torch_executor):
    device_info = torch_executor.get_device_info()
    assert device_info["device_type"] in [DeviceType.CPU, DeviceType.GPU], "Device type should be CPU or GPU"
    if device_info["device_type"] == DeviceType.GPU:
        assert "cuda_version" in device_info, "CUDA version should be present for GPU"

def test_torch_executor_execution(torch_executor):
    torch_executor.set_run_mode(RunMode.INFERENCE)
    output = torch_executor.execute()
    assert isinstance(output, torch.Tensor), "Output should be a torch.Tensor"
    assert output.shape[1] == 2, "Output shape mismatch: Expected second dimension to be 2"

    torch_executor.set_run_mode(RunMode.TRAINING)
    output = torch_executor.execute()
    assert isinstance(output, torch.Tensor), "Output should be a torch.Tensor"
    assert output.shape[1] == 2, "Output shape mismatch: Expected second dimension to be 2"

def test_tf_executor_device_info(tf_executor):
    device_info = tf_executor.get_device_info()
    assert device_info["device_type"] in [DeviceType.CPU, DeviceType.GPU], "Device type should be CPU or GPU"

def test_tf_executor_execution(tf_executor):
    tf_executor.set_run_mode(RunMode.INFERENCE)
    output = tf_executor.execute()
    assert isinstance(output, tf.Tensor), "Output should be a tf.Tensor"
    assert output.shape[1] == 2, "Output shape mismatch: Expected second dimension to be 2"

    tf_executor.set_run_mode(RunMode.TRAINING)
    output = tf_executor.execute()
    assert isinstance(output, tf.Tensor), "Output should be a tf.Tensor"
    assert output.shape[1] == 2, "Output shape mismatch: Expected second dimension to be 2"

