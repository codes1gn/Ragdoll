# RUN: python -m pytest -q -v --tb=short %s

import pytest
from enum import Enum
from ragdoll.common import * 


# Test GranularityEnum Enum
def test_granularity_level_from_string():
    # Valid strings
    assert GranularityEnum.from_string("operator") == GranularityEnum.OPERATOR
    assert GranularityEnum.from_string("model") == GranularityEnum.MODEL
    assert GranularityEnum.from_string("fused_operator") == GranularityEnum.FUSED_OPERATOR
    
    # Invalid string, should return UNKNOWN
    assert GranularityEnum.from_string("unknown") == GranularityEnum.UNKNOWN
    
    # Case insensitivity
    assert GranularityEnum.from_string("MODEL") == GranularityEnum.MODEL
    assert GranularityEnum.from_string("FUSED_OPERATOR") == GranularityEnum.FUSED_OPERATOR


# Test RunModeEnum Enum
def test_run_mode_from_string():
    # Valid strings
    assert RunModeEnum.from_string("inference") == RunModeEnum.INFERENCE
    assert RunModeEnum.from_string("training") == RunModeEnum.TRAINING
    
    # Invalid string, should return UNKNOWN
    assert RunModeEnum.from_string("unknown") == RunModeEnum.UNKNOWN
    
    # Case insensitivity
    assert RunModeEnum.from_string("INFERENCE") == RunModeEnum.INFERENCE
    assert RunModeEnum.from_string("Training") == RunModeEnum.TRAINING


# Test TimerEnum Enum
def test_timer_type_from_string():
    # Valid strings
    assert TimerEnum.from_string("python") == TimerEnum.PYTHON
    assert TimerEnum.from_string("torch") == TimerEnum.TORCH
    assert TimerEnum.from_string("iree") == TimerEnum.IREE
    
    # Invalid string, should return UNKNOWN
    assert TimerEnum.from_string("unknown") == TimerEnum.UNKNOWN
    
    # Case insensitivity
    assert TimerEnum.from_string("PYTHON") == TimerEnum.PYTHON
    assert TimerEnum.from_string("Iree") == TimerEnum.IREE

# Helper function to test the enums' from_string method for various valid and invalid values
@pytest.mark.parametrize(
    "enum_class, valid_values, invalid_value",
    [
        (RunModeEnum, ["inference", "training"], "unknown"),
        (GranularityEnum, ["operator", "model", "fused_operator"], "unknown"),
        (FrameworkEnum, ["torch", "tensorflow", "iree"], "unknown"),
        (TimerEnum, ["python", "torch", "tensorflow", "iree", "tvm"], "unknown"),
        (DataSourceEnum, ["synthetic", "cifar10", "mnist"], "unknown"),
        (DeviceEnum, ["cpu", "gpu", "tpu"], "unknown"),
    ]
)
def test_enum_from_string(enum_class, valid_values, invalid_value):
    """Test the from_string method for a given enum class."""
    # Test valid values
    for value in valid_values:
        assert enum_class.from_string(value) != enum_class.UNKNOWN
        assert isinstance(enum_class.from_string(value), enum_class)

    # Test invalid value
    assert enum_class.from_string(invalid_value) == enum_class.UNKNOWN


