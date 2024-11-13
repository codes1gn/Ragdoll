# RUN: python -m pytest -q --tb=short %s

import pytest
import numpy as np
import torch
import tensorflow as tf
from enum import Enum
from ragdoll.data_utils import * 
from ragdoll.common import * 


def test_dummy():
    assert True

def test_mnist_data_torch():
    """Test synthetic data generation for TorchDataProvider."""
    provider = DataProviderBuilder.build(ExecutorType.TORCH, DatasetType.MNIST)
    data = provider.get_data()
    
    assert isinstance(data[0], torch.Tensor), "TorchDataProvider should return a torch.Tensor"
    assert data[0].shape == (32, *(1, 28, 28)), "Synthetic data shape mismatch"
    assert data[0].dtype == torch.float32, "Synthetic data dtype should be float32"

@pytest.mark.parametrize("dataset_type", [DatasetType.MNIST, DatasetType.CIFAR10])
def test_load_dataset_torch(dataset_type):
    """Test dataset loading for TorchDataProvider."""
    provider = DataProviderBuilder.build(ExecutorType.TORCH, dataset_type)
    data = next(iter(provider))

    assert isinstance(data, (list, tuple)), "Expected dataset batch to be a tuple of (data, labels)"
    assert isinstance(data[0], torch.Tensor) and isinstance(data[1], torch.Tensor), \
        "Data and labels should be torch.Tensor"
    assert data[0].shape[0] == 32, "Batch size mismatch in TorchDataProvider loaded dataset"

def test_iterator_synthetic_torch():
    """Test iteration over synthetic data for TorchDataProvider."""
    provider = DataProviderBuilder.build(ExecutorType.TORCH, DatasetType.SYNTHETIC)
    
    num_batches = 5
    count = 0
    for data_batch in provider:
        assert data_batch.shape == (32, *(3, 224, 224)), "Batch shape mismatch"
        count += 1
        if count >= num_batches:
            break  # Stop after a few batches for testing

    assert count == num_batches, f"Expected {num_batches} batches but got {count}"

def test_iterator_dataset_torch():
    """Test iteration over synthetic data for TorchDataProvider."""
    provider = DataProviderBuilder.build(ExecutorType.TORCH, DatasetType.MNIST)
    
    num_batches = 5
    count = 0
    for data in provider:
        assert data[0].shape == (32, *(1, 28, 28)), "Batch shape mismatch"
        count += 1
        if count >= num_batches:
            break  # Stop after a few batches for testing

    assert count == num_batches, f"Expected {num_batches} batches but got {count}"

def test_mnist_data_tf():
    """Test synthetic data generation for TensorFlowDataProvider."""
    provider = DataProviderBuilder.build(ExecutorType.TENSORFLOW, DatasetType.MNIST)
    data = provider.get_data()
    
    assert isinstance(data[0], tf.Tensor), "TensorFlowDataProvider should return a tf.Tensor"
    assert data[0].shape == (32, *(3, 224, 1)), "Synthetic data shape mismatch"
    assert data[0].dtype == tf.float32, "Synthetic data dtype should be float32"

@pytest.mark.parametrize("dataset_type", [DatasetType.MNIST, DatasetType.CIFAR10])
def test_load_dataset_tf(dataset_type):
    """Test dataset loading for TorchDataProvider."""
    provider = DataProviderBuilder.build(ExecutorType.TENSORFLOW, dataset_type)
    data = next(iter(provider))

    assert isinstance(data, (list, tuple)), "Expected dataset batch to be a tuple of (data, labels)"
    assert isinstance(data[0], tf.Tensor) and isinstance(data[1], tf.Tensor), \
        "Data and labels should be torch.Tensor"
    assert data[0].shape[0] == 32, "Batch size mismatch in TorchDataProvider loaded dataset"

def test_iterator_synthetic_tf():
    """Test iteration over synthetic data for TorchDataProvider."""
    provider = DataProviderBuilder.build(ExecutorType.TENSORFLOW, DatasetType.SYNTHETIC)
    
    num_batches = 5
    count = 0
    for data_batch in provider:
        assert data_batch.shape == (32, *(3, 224, 224)), "Batch shape mismatch"
        count += 1
        if count >= num_batches:
            break  # Stop after a few batches for testing

    assert count == num_batches, f"Expected {num_batches} batches but got {count}"

def test_iterator_dataset_tf():
    """Test iteration over synthetic data for TorchDataProvider."""
    provider = DataProviderBuilder.build(ExecutorType.TORCH, DatasetType.MNIST)
    
    num_batches = 5
    count = 0
    for data in provider:
        assert data[0].shape == (32, *(1, 28, 28)), "Batch shape mismatch"
        count += 1
        if count >= num_batches:
            break  # Stop after a few batches for testing

    assert count == num_batches, f"Expected {num_batches} batches but got {count}"


