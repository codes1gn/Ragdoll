# tests/test_executor.py
# RUN: python -m pytest -q -v --tb=short %s

import pytest
import torch
import tensorflow as tf
from ragdoll.common import *
from ragdoll.executor import ExecutorBuilder
from ragdoll.workload import WorkloadBase
from ragdoll.workload import WorkloadBuilder  # Assuming you have a WorkloadBuilder class
from ragdoll.data_utils import DataProviderBase, DataProviderBuilder

@pytest.fixture
def config():
    # Load the configuration from a YAML file or directly create a config object
    # For testing purposes, you can create a config instance directly or load it from YAML.
    # Example: return Config.from_yaml("config.yaml")
    return Config(
        executor=ExecutorType.TORCH,
        run_mode=RunMode.INFERENCE,
        workload=WorkloadType.TORCH,  # This assumes WorkloadType.TORCH is available in your WorkloadBuilder
        dataset=DatasetType.CIFAR10,
        device=DeviceType.GPU,
        granularity=GranularityLevel.MODEL, 
        timer=TimerType.TORCH, 
        batch_size=32,
        input_shape=(3, 224, 224),
        dtype=torch.float32
    )

@pytest.fixture
def torch_executor(config):
    # Create a TorchExecutor with a Torch workload and data provider
    executor = ExecutorBuilder.build(config)
    workload = WorkloadBuilder.build(config)
    data_provider = DataProviderBuilder.build(config)
    
    workload.prepare_workloads(ModelType.RESNET18)
    executor.set_workload(workload)
    executor.set_data_provider(data_provider)
    return executor

@pytest.fixture
def tf_executor(config):
    # Create a TFExecutor with a TensorFlow workload and data provider
    executor = ExecutorBuilder.build(config)
    workload = WorkloadBuilder.build(config)
    data_provider = DataProviderBuilder.build(config)
    
    workload.prepare_workloads(ModelType.RESNET18)
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

def test_tf_executor_device_info(tf_executor):
    device_info = tf_executor.get_device_info()
    assert device_info["device_type"] in [DeviceType.CPU, DeviceType.GPU], "Device type should be CPU or GPU"

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
#
