import numpy as np
import torch
import tensorflow as tf
import torchvision
from torchvision import datasets, transforms
from torch.utils.data import DataLoader
from tensorflow.data import Dataset as tfDataset
from enum import Enum

class FrameworkType(Enum):
    TORCH = "torch"
    TENSORFLOW = "tensorflow"
    IREE = "iree"  # Placeholder for future IREE support

class DataProviderBase:
    """Base class for data providers, with framework-specific implementations."""
    
    def __init__(self, batch_size=32, input_shape=(3, 224, 224), data_type=np.float32):
        self.batch_size = batch_size
        self.input_shape = input_shape
        self.data_type = data_type
        self.dataset = None  # Placeholder for a dataset, if loaded
        self._iterator = None

    def generate_synthetic_data(self):
        """Generate synthetic data for testing or default usage."""
        return np.random.rand(self.batch_size, *self.input_shape).astype(self.data_type)

    def load_dataset(self, name: str):
        """Load common datasets (like MNIST or CIFAR-10) if implemented by subclass."""
        raise NotImplementedError("Dataset loading must be implemented by subclass.")

    def get_data(self):
        """Get a batch of data. Can be synthetic or from a loaded dataset."""
        if self.dataset is not None:
            return next(self._iterator)
        return self.generate_synthetic_data()

    def __iter__(self):
        """Returns an iterator that yields batches of data."""
        if self.dataset is not None:
            self._iterator = iter(self.dataset)
        else:
            self._iterator = iter([self.generate_synthetic_data()] * self.batch_size)
        return self

    def __next__(self):
        """Return the next batch of data."""
        return self.get_data()

class TorchDataProvider(DataProviderBase):
    """Data provider for PyTorch, using torch DataLoader and common datasets."""

    def load_dataset(self, name: str):
        """Load a PyTorch dataset with DataLoader support."""
        if name.lower() == "mnist":
            dataset = torch.utils.data.DataLoader(
                datasets.MNIST(
                    root='./data', train=True, download=True,
                    transform=torchvision.transforms.ToTensor()
                ),
                batch_size=self.batch_size, shuffle=True
            )
        elif name.lower() == "cifar10":
            dataset = torch.utils.data.DataLoader(
                datasets.CIFAR10(
                    root='./data', train=True, download=True,
                    transform=torchvision.transforms.ToTensor()
                ),
                batch_size=self.batch_size, shuffle=True
            )
        else:
            raise ValueError(f"Dataset {name} not supported for TorchDataProvider.")
        self.dataset = dataset
        self._iterator = iter(dataset)

    def get_data(self):
        if self.dataset is not None:
            return next(self._iterator)
        return torch.tensor(self.generate_synthetic_data(), dtype=torch.float32)

class TensorFlowDataProvider(DataProviderBase):
    """Data provider for TensorFlow framework, using tf.data.Dataset for common datasets."""

    def load_dataset(self, name: str):
        """Load a TensorFlow dataset with tf.data.Dataset support."""
        if name.lower() == "mnist":
            (x_train, y_train), _ = tf.keras.datasets.mnist.load_data()
            dataset = (tfDataset.from_tensor_slices((x_train, y_train))
                       .shuffle(10000)
                       .batch(self.batch_size)
                       .map(lambda x, y: (tf.image.resize(tf.expand_dims(x, -1), self.input_shape[:2]), y)))
        elif name.lower() == "cifar10":
            (x_train, y_train), _ = tf.keras.datasets.cifar10.load_data()
            dataset = (tfDataset.from_tensor_slices((x_train, y_train))
                       .shuffle(10000)
                       .batch(self.batch_size)
                       .map(lambda x, y: (tf.image.resize(x, self.input_shape[:2]), y)))
        else:
            raise ValueError(f"Dataset {name} not supported for TensorFlowDataProvider.")
        self.dataset = iter(dataset)

    def get_data(self):
        if self.dataset is not None:
            return next(self._iterator)
        return tf.convert_to_tensor(self.generate_synthetic_data(), dtype=tf.float32)

class IREEDataProvider(DataProviderBase):
    """Placeholder for an IREE-based data provider."""
    def get_data(self):
        raise NotImplementedError("IREE DataProvider not implemented yet")

class DataProviderFactory:
    """Factory to create DataProvider instances based on framework type."""

    @staticmethod
    def create_data_provider(framework_type: FrameworkType, batch_size=32, input_shape=(3, 224, 224), data_type=np.float32) -> DataProviderBase:
        if framework_type == FrameworkType.TORCH:
            return TorchDataProvider(batch_size, input_shape, data_type)
        elif framework_type == FrameworkType.TENSORFLOW:
            return TensorFlowDataProvider(batch_size, input_shape, data_type)
        elif framework_type == FrameworkType.IREE:
            return IREEDataProvider(batch_size, input_shape, data_type)
        else:
            raise ValueError(f"Unsupported framework type: {framework_type}")

class DataProviderBuilder:
    """Builds a DataProvider instance based on a string keyword, with a default to TorchDataProvider."""

    _keyword_to_framework_type = {
        "torch": FrameworkType.TORCH,
        "tensorflow": FrameworkType.TENSORFLOW,
        "tf": FrameworkType.TENSORFLOW,
        "iree": FrameworkType.IREE
    }

    @staticmethod
    def build(keyword: str, batch_size=32, input_shape=(3, 224, 224), data_type=np.float32) -> DataProviderBase:
        framework_type = DataProviderBuilder._keyword_to_framework_type.get(keyword.lower(), FrameworkType.TORCH)
        return DataProviderFactory.create_data_provider(framework_type, batch_size, input_shape, data_type)

