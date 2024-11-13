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


class IREEDataProvider(DataProviderBase):
    """Placeholder for an IREE-based data provider."""
    def get_data(self):
        raise NotImplementedError("IREE DataProvider not implemented yet")

