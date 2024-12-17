# RUN: python -m pytest -q -v --tb=short %s

import pytest
from enum import Enum
from ragdoll.common import * 

# Test ExecutorType Enum
def test_executor_type_from_string():
    # Valid strings
    assert ExecutorType.from_string("torch") == ExecutorType.TORCH
    assert ExecutorType.from_string("tensorflow") == ExecutorType.TENSORFLOW
    assert ExecutorType.from_string("iree") == ExecutorType.IREE
    assert ExecutorType.from_string("tvm") == ExecutorType.TVM
    
    # Invalid string, should return UNKNOWN
    assert ExecutorType.from_string("unknown") == ExecutorType.UNKNOWN
    
    # Case insensitivity
    assert ExecutorType.from_string("TORCH") == ExecutorType.TORCH
    assert ExecutorType.from_string("TVM") == ExecutorType.TVM
    assert ExecutorType.from_string("TensorFlow") == ExecutorType.TENSORFLOW


# Test GranularityLevel Enum
def test_granularity_level_from_string():
    # Valid strings
    assert GranularityLevel.from_string("operator") == GranularityLevel.OPERATOR
    assert GranularityLevel.from_string("model") == GranularityLevel.MODEL
    assert GranularityLevel.from_string("fused_operator") == GranularityLevel.FUSED_OPERATOR
    
    # Invalid string, should return UNKNOWN
    assert GranularityLevel.from_string("unknown") == GranularityLevel.UNKNOWN
    
    # Case insensitivity
    assert GranularityLevel.from_string("MODEL") == GranularityLevel.MODEL
    assert GranularityLevel.from_string("FUSED_OPERATOR") == GranularityLevel.FUSED_OPERATOR


# Test RunMode Enum
def test_run_mode_from_string():
    # Valid strings
    assert RunMode.from_string("inference") == RunMode.INFERENCE
    assert RunMode.from_string("training") == RunMode.TRAINING
    
    # Invalid string, should return UNKNOWN
    assert RunMode.from_string("unknown") == RunMode.UNKNOWN
    
    # Case insensitivity
    assert RunMode.from_string("INFERENCE") == RunMode.INFERENCE
    assert RunMode.from_string("Training") == RunMode.TRAINING


# Test TimerType Enum
def test_timer_type_from_string():
    # Valid strings
    assert TimerType.from_string("python") == TimerType.PYTHON
    assert TimerType.from_string("torch") == TimerType.TORCH
    assert TimerType.from_string("iree") == TimerType.IREE
    
    # Invalid string, should return UNKNOWN
    assert TimerType.from_string("unknown") == TimerType.UNKNOWN
    
    # Case insensitivity
    assert TimerType.from_string("PYTHON") == TimerType.PYTHON
    assert TimerType.from_string("Iree") == TimerType.IREE

# Helper function to test the enums' from_string method for various valid and invalid values
@pytest.mark.parametrize(
    "enum_class, valid_values, invalid_value",
    [
        (RunMode, ["inference", "training"], "unknown"),
        (GranularityLevel, ["operator", "model", "fused_operator"], "unknown"),
        (ExecutorType, ["torch", "tensorflow", "tvm", "iree"], "unknown"),
        (WorkloadType, ["torch", "tensorflow", "iree"], "unknown"),
        (TimerType, ["python", "torch", "tensorflow", "iree", "tvm"], "unknown"),
        (DatasetType, ["synthetic", "cifar10", "mnist"], "unknown"),
        (DeviceType, ["cpu", "gpu", "tpu"], "unknown"),
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


