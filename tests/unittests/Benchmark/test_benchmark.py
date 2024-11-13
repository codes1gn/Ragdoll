# RUN: python -m pytest -q --tb=short %s

import pytest
import numpy as np
import yaml
from ragdoll.benchmark import Benchmark, TimerBuilder, TimerType
from ragdoll.common import RunMode, ExecutorType, DatasetType
from ragdoll.executor import ExecutorBuilder
from ragdoll.data_utils import DataProviderBuilder
from ragdoll.workload import WorkloadBuilder, WorkloadType

@pytest.fixture
def benchmark_setup():
    """Fixture to set up the basic benchmark environment."""
    
    # 设置 Executor（这里假设是Torch Executor）
    executor = ExecutorBuilder.build(ExecutorType.TORCH)
    
    # 设置 Workload 和数据提供者
    workload = WorkloadBuilder.build(WorkloadType.TORCH)
    data_provider = DataProviderBuilder.build(ExecutorType.TORCH, DatasetType.CIFAR10)
    
    workload.load_model("resnet18")
    executor.set_workload(workload)
    executor.set_data_provider(data_provider)
    
    return executor, workload, data_provider

@pytest.fixture
def timer():
    """Fixture to set up the Timer."""
    return TimerBuilder.build(TimerType.PYTHON)

def test_benchmark_execute_inference(benchmark_setup, timer):
    """Test the benchmark execution in inference mode and output results."""

    executor, workload, data_provider = benchmark_setup
    executor.run_mode = RunMode.INFERENCE
    
    # Initialize the benchmark
    benchmark = Benchmark(executor=executor, timer=timer)
    
    # Execute the benchmark
    benchmark.run()
    
    # Check if the result is saved to a YAML file (it should be in 'benchmark_results.yml')
    result_file = 'benchmark_results.yml'
    assert os.path.exists(result_file), f"Result file {result_file} does not exist!"
    
    # Load the results from YAML file
    with open(result_file, 'r') as file:
        results = yaml.load(file, Loader=yaml.FullLoader)
        
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

def test_benchmark_execute_training(benchmark_setup, timer):
    """Test the benchmark execution in training mode and output results."""
    
    executor, workload, data_provider = benchmark_setup
    executor.run_mode = RunMode.TRAINING
    
    # Initialize the benchmark
    benchmark = Benchmark(executor=executor, timer=timer)
    
    # Execute the benchmark
    benchmark.run()
    
    # Check if the result is saved to a YAML file (it should be in 'benchmark_results.yml')
    result_file = 'benchmark_results.yml'
    assert os.path.exists(result_file), f"Result file {result_file} does not exist!"
    
    # Load the results from YAML file
    with open(result_file, 'r') as file:
        results = yaml.load(file, Loader=yaml.FullLoader)
        
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

