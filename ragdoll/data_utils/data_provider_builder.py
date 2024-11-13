import numpy as np
import torch
import tensorflow as tf
import torchvision
from torchvision import datasets, transforms
from torch.utils.data import DataLoader
from tensorflow.data import Dataset as tfDataset
from enum import Enum

from ragdoll.common import * 
from .iree_data_provider import *
from .torch_data_provider import *
from .tf_data_provider import *


class DataProviderBuilder:
    """Builds a DataProvider instance based on a string keyword, with a default to TorchDataProvider."""

    @staticmethod
    def build(framework_type: ExecutorType, dataset_type: DatasetType = DatasetType.SYNTHETIC) -> DataProviderBase:
        if framework_type == ExecutorType.TORCH:
            return TorchDataProvider(dataset_type)
        elif framework_type == ExecutorType.TENSORFLOW:
            return TensorFlowDataProvider(dataset_type)
            
        # elif framework_type == ExecutorType.IREE:
        #     dataprod = IREEDataProvider(batch_size, input_shape, data_type)
        #     dataprod.dataset_type = dataset_type
        #     return dataprod
        else:
            raise ValueError(f"Unsupported framework type: {framework_type}, and dataset: {dataset_type}")


