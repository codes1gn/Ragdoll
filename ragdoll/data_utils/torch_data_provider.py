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

    def load_dataset(self, config: BenchmarkConfig):
        """Load a PyTorch dataset with DataLoader support."""
        if self.data_source == DataSourceEnum.SYNTHETIC:
            # Use synthetic data
            self.dataset = None
        elif self.data_source == DataSourceEnum.MNIST:
            self.dataset = torch.utils.data.DataLoader(
                datasets.MNIST(
                    root='./data', train=True, download=True,
                    transform=torchvision.transforms.ToTensor()
                ),
                batch_size=self.batch_size, shuffle=True
            )
            for input, label in self.dataset:
                TRACE('Dataset = MNIST; Input Shape = {}; Label Shape = {}'.format(input.shape, label.shape))
                break
            self._iterator = iter(self.dataset)
        elif self.data_source == DataSourceEnum.CIFAR10:
            self.dataset = torch.utils.data.DataLoader(
                datasets.CIFAR10(
                    root='./data', train=True, download=True,
                    transform=torchvision.transforms.ToTensor()
                ),
                batch_size=self.batch_size, shuffle=True
            )
            self._iterator = iter(self.dataset)
        else:
            raise ValueError(f"Dataset {name} not supported for TorchDataProvider.")

    def get_data(self):
        """Get a batch of data."""
        if self.dataset is not None:
            return next(self._iterator)
        return self.generate_synthetic_data()

