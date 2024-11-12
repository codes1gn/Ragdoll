
# RUN: python -m pytest -q --tb=short %s

import pytest
import torch
import tensorflow as tf
import numpy as np
from ragdoll.workload import WorkloadBase, TorchWorkload, TFWorkload, RunMode, GranularityLevel
from ragdoll.data_utils.data_provider import DataProviderBuilder

@pytest.fixture
def torch_data_provider():
    # Create a synthetic DataProvider for PyTorch
    return DataProviderBuilder.build('torch', batch_size=16, input_shape=(3, 3, 224))

@pytest.fixture
def tf_data_provider():
    # Create a synthetic DataProvider for TensorFlow
    return DataProviderBuilder.build('tensorflow', batch_size=16, input_shape=(3, 3, 224))

@pytest.fixture
def pytorch_workload(torch_data_provider):
    # Initialize PyTorch workload with synthetic data
    workload = TorchWorkload(GranularityLevel.MODEL)
    workload.set_data_provider(torch_data_provider)
    return workload

@pytest.fixture
def tensorflow_workload(tf_data_provider):
    # Initialize TensorFlow workload with synthetic data
    workload = TFWorkload(GranularityLevel.MODEL)
    workload.set_data_provider(tf_data_provider)
    return workload

def test_inference_mode_pytorch(pytorch_workload):
    # Test inference mode for PyTorch workload
    pytorch_workload.load_model("resnet18")
    
    # Run in inference mode
    output = pytorch_workload.run()
    
    assert isinstance(output, torch.Tensor), "Output should be a torch.Tensor"
    assert pytorch_workload.mode == RunMode.INFERENCE, "Run mode should be inference"

def test_training_mode_pytorch(pytorch_workload):
    # Test training mode for PyTorch workload
    pytorch_workload.load_model("resnet18")
    
    # Run in training mode
    pytorch_workload.mode = RunMode.TRAINING
    loss = pytorch_workload.run()
    
    assert isinstance(loss, float), "Loss should be a float value"
    assert pytorch_workload.mode == RunMode.TRAINING, "Run mode should be training"

# def test_inference_mode_tensorflow(tensorflow_workload):
#     # Test inference mode for TensorFlow workload
#     tensorflow_workload.load_model("resnet50")
#     
#     # Run in inference mode
#     output = tensorflow_workload.run()
#     
#     assert isinstance(output, tf.Tensor), "Output should be a tf.Tensor"
#     assert tensorflow_workload.mode == RunMode.INFERENCE, "Run mode should be inference"

# def test_training_mode_tensorflow(tensorflow_workload):
#     # Test training mode for TensorFlow workload
#     tensorflow_workload.load_model("resnet50")
#     
#     # Run in training mode
#     tensorflow_workload.set_run_mode(RunMode.TRAINING)
#     loss = tensorflow_workload.run()
#     
#     assert isinstance(loss, float), "Loss should be a float value"
#     assert tensorflow_workload.mode == RunMode.TRAINING, "Run mode should be training"

def test_granularity_property(pytorch_workload):
    # Test the granularity property for the PyTorch workload
    assert pytorch_workload.granularity == GranularityLevel.MODEL, "Initial granularity should be model"
    
    # Change granularity
    pytorch_workload.granularity = GranularityLevel.OPERATOR
    assert pytorch_workload.granularity == GranularityLevel.OPERATOR, "Granularity should be operator after setting"
    
    # Change back to model granularity
    pytorch_workload.granularity = GranularityLevel.FUSED_OPERATOR
    assert pytorch_workload.granularity == GranularityLevel.FUSED_OPERATOR, "Granularity should be fused_operator after setting"

