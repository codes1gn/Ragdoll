# RUN: python -m pytest -q --tb=short %s

import pytest
import numpy as np
import torch
import tensorflow as tf
from enum import Enum
from ragdoll.data_utils.data_provider import DataProviderBuilder

# Assuming all classes are imported as described, including:
# DataProviderBuilder, FrameworkType, TorchDataProvider, TensorFlowDataProvider

@pytest.fixture
def default_shape():
    """Fixture for default input shape."""
    return (3, 32, 32)

@pytest.fixture
def batch_size():
    """Fixture for default batch size."""
    return 16

def test_dummy():
    assert True

def test_synthetic_data_torch(batch_size, default_shape):
    """Test synthetic data generation for TorchDataProvider."""
    provider = DataProviderBuilder.build("torch", batch_size, default_shape)
    data = provider.get_data()
    
    assert isinstance(data, torch.Tensor), "TorchDataProvider should return a torch.Tensor"
    assert data.shape == (batch_size, *default_shape), "Synthetic data shape mismatch"
    assert data.dtype == torch.float32, "Synthetic data dtype should be float32"

def test_synthetic_data_tf(batch_size, default_shape):
    """Test synthetic data generation for TensorFlowDataProvider."""
    provider = DataProviderBuilder.build("tensorflow", batch_size, default_shape)
    data = provider.get_data()
    
    assert isinstance(data, tf.Tensor), "TensorFlowDataProvider should return a tf.Tensor"
    assert data.shape == (batch_size, *default_shape), "Synthetic data shape mismatch"
    assert data.dtype == tf.float32, "Synthetic data dtype should be float32"

@pytest.mark.parametrize("dataset_name", ["mnist", "cifar10"])
def test_load_dataset_torch(dataset_name, batch_size):
    """Test dataset loading for TorchDataProvider."""
    provider = DataProviderBuilder.build("torch", batch_size)
    provider.load_dataset(dataset_name)
    
    data = next(iter(provider))
    assert isinstance(data, (list, tuple)), "Expected dataset batch to be a tuple of (data, labels)"
    assert isinstance(data[0], torch.Tensor) and isinstance(data[1], torch.Tensor), \
        "Data and labels should be torch.Tensor"
    assert data[0].shape[0] == batch_size, "Batch size mismatch in TorchDataProvider loaded dataset"

@pytest.mark.parametrize("dataset_name", ["mnist", "cifar10"])
def test_load_dataset_tf(dataset_name, batch_size):
    """Test dataset loading for TensorFlowDataProvider."""
    provider = DataProviderBuilder.build("tensorflow", batch_size)
    provider.load_dataset(dataset_name)
    
    data = next(iter(provider))
    assert (isinstance(data, tuple) or isinstance(data, list)), "Expected dataset batch to be a tuple/list of (data, labels)"
    assert isinstance(data[0], tf.Tensor) and isinstance(data[1], tf.Tensor), \
        "Data and labels should be tf.Tensor"
    assert data[0].shape[0] == batch_size, "Batch size mismatch in TensorFlowDataProvider loaded dataset"

def test_iterator_synthetic_torch(batch_size, default_shape):
    """Test iteration over synthetic data for TorchDataProvider."""
    provider = DataProviderBuilder.build("torch", batch_size, default_shape)
    
    num_batches = 5
    count = 0
    for data in provider:
        assert data.shape == (batch_size, *default_shape), "Batch shape mismatch"
        count += 1
        if count >= num_batches:
            break  # Stop after a few batches for testing

    assert count == num_batches, f"Expected {num_batches} batches but got {count}"

def test_iterator_synthetic_tf(batch_size, default_shape):
    """Test iteration over synthetic data for TensorFlowDataProvider."""
    provider = DataProviderBuilder.build("tensorflow", batch_size, default_shape)
    
    num_batches = 5
    count = 0
    for data in provider:
        assert data.shape == (batch_size, *default_shape), "Batch shape mismatch"
        count += 1
        if count >= num_batches:
            break  # Stop after a few batches for testing

    assert count == num_batches, f"Expected {num_batches} batches but got {count}"

