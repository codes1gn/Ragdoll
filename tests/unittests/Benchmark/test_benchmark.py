# RUN: python -m pytest -q --tb=short %s

import pytest
import numpy as np
import yaml
import json
import torch
import tensorflow as tf
from ragdoll.benchmark import Benchmark, TimerBuilder, TimerType
from ragdoll.common import *
from ragdoll.executor import ExecutorBuilder
from ragdoll.data_utils import DataProviderBuilder
from ragdoll.workload import WorkloadBuilder, WorkloadType

@pytest.fixture
def torch_train_config():
    # Load the configuration from a YAML file or directly create a config object
    # For testing purposes, you can create a config instance directly or load it from YAML.
    # Example: return Config.load_task_from_yaml("config.yaml")
    return Config(
        task_label="smoke test",
        executor=ExecutorType.TORCH,
        run_mode=RunMode.INFERENCE,
        workload_type=WorkloadType.TORCH,  # This assumes WorkloadType.TORCH is available in your WorkloadBuilder
        dataset=DatasetType.CIFAR10,
        device=DeviceType.GPU,
        workload_granularity=GranularityLevel.MODEL, 
        timer=TimerType.PYTHON, 
        batch_size=32,
        input_shape=(3, 224, 224),
        dtype=torch.float32
    )

@pytest.fixture
def torch_infer_config():
    # Load the configuration from a YAML file or directly create a config object
    # For testing purposes, you can create a config instance directly or load it from YAML.
    # Example: return Config.load_task_from_yaml("config.yaml")
    return Config(
        task_label="smoke test",
        executor=ExecutorType.TORCH,
        run_mode=RunMode.INFERENCE,
        workload_type=WorkloadType.TORCH,  # This assumes WorkloadType.TORCH is available in your WorkloadBuilder
        dataset=DatasetType.CIFAR10,
        device=DeviceType.GPU,
        workload_granularity=GranularityLevel.MODEL, 
        timer=TimerType.PYTHON, 
        batch_size=32,
        input_shape=(3, 224, 224),
        dtype=torch.float32
    )

def test_benchmark_execute_inference(torch_infer_config):
    """Test the benchmark execution in inference mode and output results."""

    # Initialize the benchmark
    benchmark = Benchmark(torch_infer_config)
    
    # Execute the benchmark
    benchmark.run()
    results = benchmark.get_results()
        
    # Assert that the results contain the expected keys
    assert 'mean_time' in results
    assert 'std_dev' in results
    assert 'summary' in results
    assert 'samples' in results['summary']

    # Check that the results are of correct type
    assert isinstance(results['mean_time'], float)
    assert isinstance(results['std_dev'], float)
    assert isinstance(results['summary']['mean_time'], float)
    assert isinstance(results['summary']['samples'], int)
    assert isinstance(results['summary']['confidence_interval'], tuple)
    assert len(results['summary']['confidence_interval']) == 2
    assert isinstance(results['summary']['confidence_interval'][0], float)
    assert isinstance(results['summary']['confidence_interval'][1], float)

def test_benchmark_execute_training(torch_train_config):
    """Test the benchmark execution in training mode and output results."""
    
    # Initialize the benchmark
    benchmark = Benchmark(torch_train_config)
    
    # Execute the benchmark
    benchmark.run()
    results = benchmark.get_results()
        
    # Assert that the results contain the expected keys
    assert 'mean_time' in results
    assert 'std_dev' in results
    assert 'summary' in results
    assert 'samples' in results['summary']

    # Check that the results are of correct type
    assert isinstance(results['mean_time'], float)
    assert isinstance(results['std_dev'], float)
    assert isinstance(results['summary']['mean_time'], float)
    assert isinstance(results['summary']['samples'], int)
    
    # Optionally, check the summary statistics (e.g., confidence interval)
    assert isinstance(results['summary']['confidence_interval'], tuple)
    assert len(results['summary']['confidence_interval']) == 2
    assert isinstance(results['summary']['confidence_interval'][0], float)
    assert isinstance(results['summary']['confidence_interval'][1], float)

