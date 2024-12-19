import numpy as np
import torch
import tensorflow as tf
import itertools
import torchvision
from abc import ABC, abstractmethod
from dataclasses import dataclass, field
from torchvision import datasets, transforms
from torch.utils.data import DataLoader
from tensorflow.data import Dataset as tfDataset
from enum import Enum

from ragdoll.common import * 


@dataclass
class DataProviderBase(ABC):
    batch_size: int = 32
    input_shape: tuple = (3, 224, 224)
    data_type: type = np.float32
    dataset_type: DatasetType = DatasetType.SYNTHETIC
    dataset: any = field(init=False)
    
    def __init__(self, config: Config):
        TRACE_INFO("Create {} for task {}".format(self.__class__.__name__, config.task_label))
        self.batch_size = config.batch_size
        self.input_shape = config.input_shape
        self.data_type = config.dtype
        self.dataset_type = config.dataset
        self.load_dataset(config)

    @abstractmethod
    def load_dataset(self, config: Config):
        """Load the specified dataset."""
        pass

    def get_data(self):
        """Get a batch of data. Can be synthetic or from a loaded dataset."""
        return next(self._iterator)

    def generate_synthetic_data(self):
        """Generate synthetic data for testing or default usage."""
        return np.random.rand(self.batch_size, *self.input_shape).astype(self.data_type)

    def __iter__(self):
        """Returns an iterator that yields batches of data."""
        if self.dataset_type == DatasetType.SYNTHETIC:
            # Infinite loop using itertools.cycle for synthetic data
            self._iterator = itertools.cycle([self.generate_synthetic_data()] * 1)  # Infinite synthetic data
        else:
            self._iterator = iter(self.dataset)
        return self

    def __next__(self):
        """Return the next batch of data."""
        if self.dataset is not None:
            return next(self._iterator)
        else:
            raise StopIteration

    def __len__(self):
        """Return the total number of batches."""
        if isinstance(self.dataset, torch.utils.data.DataLoader):
            return len(self.dataset)  # For PyTorch DataLoader
        elif isinstance(self.dataset, tf.data.Dataset):
            return sum(1 for _ in self.dataset)  # For TensorFlow Dataset
        else:
            print(type(self.dataset))
            raise ValueError("Unsupported dataset type for length calculation. ")

    def __getitem__(self, index: int):
        """Get the batch at a specific index."""
        if isinstance(self.dataset, torch.utils.data.DataLoader):
            # For PyTorch, we can directly access via DataLoader index
            return self.dataset.dataset[index]  # Dataset within DataLoader
        elif isinstance(self.dataset, tf.data.Dataset):
            # For TensorFlow, we need to manually iterate to the index (or use a batching mechanism)
            # TensorFlow's Dataset API doesn't natively support indexing, so we create an iterator
            iter_dataset = iter(self.dataset)
            for i, data in enumerate(iter_dataset):
                if i == index:
                    return data
        else:
            raise ValueError("Unsupported dataset type for getitem.")
