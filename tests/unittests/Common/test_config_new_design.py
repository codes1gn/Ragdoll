
# RUN: python -m pytest -q -v --tb=short %s

import pytest
from enum import Enum
from ragdoll.common import * 

@pytest.fixture
def sample_config_yaml():
    """Fixture that provides a sample config.yaml content."""
    return """
    workload:
      framework: torch
    #   granularity: operator
    #   operator: conv2d

    experiment:
      run_mode: inference
      # executor:
      #   framework: torch
      #   device: gpu
      # timer: python
      # dataset:
      #   type: synthetic
      #   input_shape: [1, 3, 224, 224]
      #   batch_size: 32
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
    # config = Config.load_task_from_yaml(sample_config_file)

    with open(sample_config_file, "r") as file:
        config_dict = yaml.safe_load(file)

    # Parse the configuration using Pydantic, which validates the data types and structure.
    try:
        config = FullConfig.parse_obj(config_dict)
        print("Parsed configuration:")
        print(config.json(indent=2))
    except Exception as e:
        print("Configuration error:", e)

    # Assert the loaded values match the expected enum values
    assert config.workload.framework == WorkloadFrameworkNew.TORCH
    assert config.experiment.run_mode == RunModeNew.INFERENCE
