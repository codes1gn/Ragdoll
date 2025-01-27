
# RUN: python -m pytest -q -v --tb=short %s

import pytest
import torch
import tensorflow as tf
import numpy as np
from ragdoll.common import *
from ragdoll.workload import WorkloadBase, TorchWorkload, TFWorkload, RunMode, GranularityLevel
from ragdoll.data_utils import DataProviderBuilder

@pytest.fixture
def pytorch_workload():
    # Initialize PyTorch workload with synthetic data
    workload = TorchWorkload()
    return workload

@pytest.fixture
def tensorflow_workload():
    # Initialize TensorFlow workload with synthetic data
    workload = TFWorkload()
    return workload

def test_inference_mode_pytorch(pytorch_workload):
    # Test inference mode for PyTorch workload
    pytorch_workload.load_model(ModelWorkload.RESNET18)
    assert pytorch_workload.mode == RunMode.INFERENCE, "Run mode should be inference"

def test_training_mode_pytorch(pytorch_workload):
    # Test training mode for PyTorch workload
    pytorch_workload.prepare_workloads(ModelWorkload.RESNET18)
    
    # Run in training mode
    pytorch_workload.mode = RunMode.TRAINING
    assert pytorch_workload.mode == RunMode.TRAINING, "Run mode should be training"

def test_granularity_property(pytorch_workload):
    # Test the granularity property for the PyTorch workload
    assert pytorch_workload.granularity == GranularityLevel.MODEL, "Initial granularity should be model"
    
    # Change granularity
    pytorch_workload.granularity = GranularityLevel.OPERATOR
    assert pytorch_workload.granularity == GranularityLevel.OPERATOR, "Granularity should be operator after setting"
    
    # Change back to model granularity
    pytorch_workload.granularity = GranularityLevel.FUSED_OPERATOR
    assert pytorch_workload.granularity == GranularityLevel.FUSED_OPERATOR, "Granularity should be fused_operator after setting"

