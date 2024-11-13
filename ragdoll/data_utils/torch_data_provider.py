import numpy as np
import torch
import tensorflow as tf
import torchvision
from torchvision import datasets, transforms
from torch.utils.data import DataLoader
from tensorflow.data import Dataset as tfDataset
from enum import Enum

from ragdoll.common import * 
from .data_provider_base import *


class TorchDataProvider(DataProviderBase):
    """Data provider for PyTorch, using torch DataLoader and common datasets."""

    def load_dataset(self):
        """Load a PyTorch dataset with DataLoader support."""
        if self.dataset_type == DatasetType.SYNTHETIC:
            # Use synthetic data
            self.dataset = torch.utils.data.DataLoader(
                torch.utils.data.TensorDataset(torch.tensor(self.generate_synthetic_data(), dtype=torch.float32)),
                batch_size=self.batch_size, shuffle=True
            )
        elif self.dataset_type == DatasetType.MNIST:
            self.dataset = torch.utils.data.DataLoader(
                datasets.MNIST(
                    root='./data', train=True, download=True,
                    transform=torchvision.transforms.ToTensor()
                ),
                batch_size=self.batch_size, shuffle=True
            )
        elif self.dataset_type == DatasetType.CIFAR10:
            self.dataset = torch.utils.data.DataLoader(
                datasets.CIFAR10(
                    root='./data', train=True, download=True,
                    transform=torchvision.transforms.ToTensor()
                ),
                batch_size=self.batch_size, shuffle=True
            )
        else:
            raise ValueError(f"Dataset {name} not supported for TorchDataProvider.")
        self._iterator = iter(self.dataset)

    def get_data(self):
        """Get a batch of data."""
        if self.dataset is not None:
            return next(self._iterator)
        return self.generate_synthetic_data()

