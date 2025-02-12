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
    data_type: type = DtypeEnum.FLOAT32
    data_source: DataSourceEnum = DataSourceEnum.SYNTHETIC
    dataset: any = field(init=None)
    
    def __init__(self, config: FullConfig):
        TRACE_INFO("Create {} for task {}".format(self.__class__.__name__, config.label))
        self.batch_size = config.dataset.batch_size
        self.input_shape = config.dataset.input_shape
        self.data_type = config.dataset.dtype
        self.data_source = config.dataset.source
        self.load_dataset(config)

    @abstractmethod
    def load_dataset(self, config: FullConfig):
        """Load the specified dataset."""
        pass

    def get_data(self):
        """Get a batch of data. Can be synthetic or from a loaded dataset."""
        return next(self._iterator)

    def generate_synthetic_data(self):
        """Generate synthetic data for testing or default usage."""
        TRACE_DEBUG("self.input_shape = {} with type = {}".format(self.input_shape, type(self.input_shape)))
        assert(isinstance(self.batch_size, int))
        assert(isinstance(self.input_shape, (tuple, list)) and all(isinstance(x, int) for x in self.input_shape))
        inputs_data = np.random.rand(self.batch_size, *self.input_shape).astype(self.data_type.to_numpy()) 
        labels_data = np.random.randint(0, 10, size=self.batch_size)
        inputs = torch.from_numpy(inputs_data)
        labels = torch.from_numpy(labels_data)
        return inputs, labels

    def __iter__(self):
        """Returns an iterator that yields batches of data."""
        if self.data_source == DataSourceEnum.SYNTHETIC:
            # Infinite loop using itertools.cycle for synthetic data
            self._iterator = self._generate_synthetic_data_batches()  # Infinite synthetic data
        else:
            self._iterator = iter(self.dataset)
        return self

    def _generate_synthetic_data_batches(self):
        """Generate batches of synthetic data indefinitely."""
        while True:
            inputs, labels = self.generate_synthetic_data()
            yield inputs, labels

    def __next__(self):
        """Return the next batch of data."""
        return next(self._iterator)

    def __len__(self):
        """Return the total number of batches."""
        if self.data_source == DataSourceEnum.SYNTHETIC:
            return 10000

        if isinstance(self.dataset, torch.utils.data.DataLoader):
            return len(self.dataset)  # For PyTorch DataLoader
        elif isinstance(self.dataset, tf.data.Dataset):
            return sum(1 for _ in self.dataset)  # For TensorFlow Dataset
        else:
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
