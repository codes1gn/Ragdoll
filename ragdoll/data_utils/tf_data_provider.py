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


class TensorFlowDataProvider(DataProviderBase):
    """Data provider for TensorFlow framework, using tf.data.Dataset for common datasets."""

    def load_dataset(self):
        """Load a TensorFlow dataset with tf.data.Dataset support."""
        if self.dataset_type == DatasetType.SYNTHETIC:
            # Use synthetic data
            dataset = tfDataset.from_tensor_slices(self.generate_synthetic_data())
            self.dataset = dataset.batch(self.batch_size).shuffle(10000)
        elif self.dataset_type == DatasetType.MNIST:
            (x_train, y_train), _ = tf.keras.datasets.mnist.load_data()
            dataset = (tfDataset.from_tensor_slices((x_train, y_train))
                       .shuffle(10000)
                       .batch(self.batch_size)
                       .map(lambda x, y: (tf.image.resize(tf.expand_dims(x, -1), self.input_shape[:2]), y)))
        elif self.dataset_type == DatasetType.CIFAR10:
            (x_train, y_train), _ = tf.keras.datasets.cifar10.load_data()
            dataset = (tfDataset.from_tensor_slices((x_train, y_train))
                       .shuffle(10000)
                       .batch(self.batch_size)
                       .map(lambda x, y: (tf.image.resize(x, self.input_shape[:2]), y)))
        else:
            raise ValueError(f"Dataset {name} not supported for TensorFlowDataProvider.")
        self.dataset = iter(dataset)
        self._iterator = iter(dataset)

    def get_data(self):
        """Get a batch of data."""
        if self.dataset is not None:
            return next(self._iterator)
        return self.generate_synthetic_data()
