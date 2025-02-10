# RUN: python -m pytest -q -v --tb=short %s

import pytest
from enum import Enum
from ragdoll.common import * 

@pytest.fixture
def sample_config_yaml():
    """Fixture that provides a sample config.yaml content."""
    return """
    executor: torch
    run_mode: training
    workload_type: torch  # updated from 'torch_workload' to 'torch'
    dataset: mnist
    device: gpu
    workload_granularity: model
    timer: torch
    model_workload: resnet18
    batch_size: 32
    input_shape: (3, 224, 224)
    dtype: float32
    """

@pytest.fixture
def sample_config_file(tmpdir, sample_config_yaml):
    """Fixture to create a temporary config YAML file."""
    config_file = tmpdir.join("config.yaml")
    config_file.write(sample_config_yaml)
    return str(config_file)

def test_config_load_task_from_yaml(sample_config_file):
    """Test if the Config class correctly loads the YAML configuration."""
    
    # Load the config from the YAML file
    config = Config.load_task_from_yaml(sample_config_file)

    # Assert the loaded values match the expected enum values
    assert config.executor == ExecutorType.TORCH
    assert config.run_mode == RunMode.TRAINING
    assert config.workload_type == WorkloadType.TORCH  # updated to check 'torch' instead of 'torch_workload'
    assert config.dataset == DatasetType.MNIST
    assert config.device == DeviceType.GPU
    assert config.workload_granularity == GranularityLevel.MODEL
    assert config.timer == TimerType.TORCH

def test_config_invalid_executor(sample_config_file):
    """Test if an invalid executor in the YAML results in UNKNOWN enum value."""
    # Modify YAML to contain an invalid executor
    invalid_yaml = """
    executor: unknown_executor
    run_mode: training
    workload: torch
    dataset: mnist
    device: gpu
    granularity: model
    timer: torch
    """
    with open(sample_config_file, 'w') as f:
        f.write(invalid_yaml)

    # Load the config and check the result
    with pytest.raises(ValueError):
        config = Config.load_task_from_yaml(sample_config_file)

def test_config_invalid_run_mode(sample_config_file):
    """Test if an invalid run mode in the YAML results in UNKNOWN enum value."""
    # Modify YAML to contain an invalid run mode
    invalid_yaml = """
    executor: torch
    run_mode: unknown_mode
    workload: torch
    dataset: mnist
    device: gpu
    granularity: model
    timer: torch
    """
    with open(sample_config_file, 'w') as f:
        f.write(invalid_yaml)

    # Load the config and check the result
    with pytest.raises(ValueError):
        config = Config.load_task_from_yaml(sample_config_file)

def test_config_invalid_granularity(sample_config_file):
    """Test if an invalid granularity in the YAML results in UNKNOWN enum value."""
    # Modify YAML to contain an invalid granularity
    invalid_yaml = """
    executor: torch
    run_mode: training
    workload: torch
    dataset: mnist
    device: gpu
    granularity: unknown_granularity
    timer: torch
    """
    with open(sample_config_file, 'w') as f:
        f.write(invalid_yaml)

    # Load the config and check the result
    with pytest.raises(ValueError):
        config = Config.load_task_from_yaml(sample_config_file)

def test_config_invalid_timer(sample_config_file):
    """Test if an invalid timer in the YAML results in UNKNOWN enum value."""
    # Modify YAML to contain an invalid timer
    invalid_yaml = """
    executor: torch
    run_mode: training
    workload: torch
    dataset: mnist
    device: gpu
    granularity: model
    timer: unknown_timer
    """
    with open(sample_config_file, 'w') as f:
        f.write(invalid_yaml)

    # Load the config and check the result
    with pytest.raises(ValueError):
        config = Config.load_task_from_yaml(sample_config_file)

def test_config_invalid_dataset(sample_config_file):
    """Test if an invalid dataset in the YAML results in UNKNOWN enum value."""
    # Modify YAML to contain an invalid dataset
    invalid_yaml = """
    executor: torch
    run_mode: training
    workload: torch
    dataset: unknown_dataset
    device: gpu
    granularity: model
    timer: torch
    """
    with open(sample_config_file, 'w') as f:
        f.write(invalid_yaml)

    # Load the config and check the result
    with pytest.raises(ValueError):
        config = Config.load_task_from_yaml(sample_config_file)

def test_config_invalid_device(sample_config_file):
    """Test if an invalid device in the YAML results in UNKNOWN enum value."""
    # Modify YAML to contain an invalid device
    invalid_yaml = """
    executor: torch
    run_mode: training
    workload: torch
    dataset: mnist
    device: unknown_device
    granularity: model
    timer: torch
    """
    with open(sample_config_file, 'w') as f:
        f.write(invalid_yaml)

    # Load the config and check the result
    with pytest.raises(ValueError):
        config = Config.load_task_from_yaml(sample_config_file)

