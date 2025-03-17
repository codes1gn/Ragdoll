
# RUN: python -m pytest -q -v --tb=short %s

import pytest
import torch
import tensorflow as tf
import numpy as np
from ragdoll.common import *
from ragdoll.workload import WorkloadBase, WorkloadBuilder, TorchWorkload, TFWorkload, RunModeEnum, GranularityEnum
from ragdoll.data_utils import DataProviderBuilder

@pytest.fixture
def torch_config():
    # Load the configuration from a YAML file or directly create a config object
    # For testing purposes, you can create a config instance directly or load it from YAML.
    return BenchmarkConfig(
        label="smoke_test",
        experiment=ExperimentConfig(
            executor=ExecutorConfig(
                framework=FrameworkEnum.TORCH,
                device=DeviceEnum.GPU,
            ),
            run_mode=RunModeEnum.INFERENCE,
            timer=TimerEnum.TORCH, 
        ),
        workload=ModelConfig(
            framework=FrameworkEnum.TORCH,
            granularity=GranularityEnum.MODEL,
            model=ModelEnum.RESNET18,
        ),
        dataset=SyntheticDatasetConfig(
            source=DataSourceEnum.SYNTHETIC,
            input_shape=[3, 224, 224],
            batch_size=32,
            dtype=DtypeEnum.FLOAT32,
        ),
    )

@pytest.fixture
def tf_config():
    # Load the configuration from a YAML file or directly create a config object
    # For testing purposes, you can create a config instance directly or load it from YAML.
    return BenchmarkConfig(
        label="smoke_test",
        experiment=ExperimentConfig(
            executor=ExecutorConfig(
                framework=FrameworkEnum.TORCH,
                device=DeviceEnum.GPU,
            ),
            run_mode=RunModeEnum.INFERENCE,
            timer=TimerEnum.TORCH, 
        ),
        workload=ModelConfig(
            framework=FrameworkEnum.TENSORFLOW,
            granularity=GranularityEnum.MODEL,
            model=ModelEnum.RESNET50,
        ),
        dataset=SyntheticDatasetConfig(
            source=DataSourceEnum.SYNTHETIC,
            input_shape=[3, 224, 224],
            batch_size=32,
            dtype=DtypeEnum.FLOAT32,
        ),
    )

@pytest.fixture
def torch_workload(torch_config):
    # Initialize PyTorch workload with synthetic data
    workload = WorkloadBuilder.build(torch_config)
    return workload

@pytest.fixture
def tf_workload(tf_config):
    # Initialize TensorFlow workload with synthetic data
    workload = WorkloadBuilder.build(tf_config)
    return workload

def test_inference_mode_pytorch(torch_workload):
    # Test inference mode for PyTorch workload
    torch_workload.load_model(ModelEnum.RESNET18)
    assert torch_workload.mode == RunModeEnum.INFERENCE, "Run mode should be inference"

def test_inference_mode_tf(tf_workload):
    # Test inference mode for PyTorch workload
    tf_workload.load_model(ModelEnum.RESNET50)
    assert tf_workload.mode == RunModeEnum.INFERENCE, "Run mode should be inference"
