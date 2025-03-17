
# common/enum.py

import yaml
from dataclasses import dataclass
from enum import Enum, EnumMeta
from typing import Literal, Optional, Union, List
from pydantic import BaseModel, field_validator, ValidationError


class EnumWithFromStringMeta(EnumMeta):
    """Metaclass that adds a from_string method to any Enum class."""

    def __new__(cls, name, bases, dct):
        # Add the from_string method to the class
        def from_string(cls, value: str):
            try:
                return cls[value.upper()]
            except KeyError:
                return cls.UNKNOWN  # Default to UNKNOWN if value is invalid

        # Add the method to the class
        dct["from_string"] = classmethod(from_string)
        return super().__new__(cls, name, bases, dct)

class RunModeEnum(Enum, metaclass=EnumWithFromStringMeta):
    UNKNOWN = "unknown"
    INFERENCE = "inference"
    TRAINING = "training"

class FrameworkEnum(Enum, metaclass=EnumWithFromStringMeta):
    UNKNOWN = "unknown"
    TORCH = "torch"
    TENSORFLOW = "tensorflow"
    TVM = "tvm"
    IREE = "iree"

class TimerEnum(Enum, metaclass=EnumWithFromStringMeta):
    UNKNOWN = "unknown"
    PYTHON = "python"
    TORCH = "torch"
    TENSORFLOW = "tensorflow"
    IREE = "iree"
    TVM = "tvm"

class DataSourceEnum(Enum, metaclass=EnumWithFromStringMeta):
    UNKNOWN = "unknown"
    SYNTHETIC = "synthetic"
    CIFAR10 = "cifar10"
    MNIST = "mnist"

class DtypeEnum(Enum, metaclass=EnumWithFromStringMeta):
    FLOAT32 = "float32"
    FLOAT16 = "float16"

    def to_numpy(self):
        import numpy as np
        if self == DtypeEnum.FLOAT32:
           return np.float32
        elif self == DtypeENum.FLOAT16:
            return np.float16
        else:
            raise ValueError(f"Unsupported enum value: {self}")

class DeviceEnum(Enum, metaclass=EnumWithFromStringMeta):
    UNKNOWN = "unknown"
    CPU = "cpu"
    GPU = "gpu"
    TPU = "tpu"

# Granularity level indicates the type of workload (operator, model, etc.)
class GranularityEnum(Enum, metaclass=EnumWithFromStringMeta):
    UNKNOWN = "unknown"
    OPERATOR = "operator"
    MODEL = "model"
    FUSED_OPERATOR = "fused_operator"

# Operator workload options
class OperatorEnum(Enum, metaclass=EnumWithFromStringMeta):
    UNKNOWN = "unknown"
    CONV2D = "conv2d"
    FULLY_CONNECTED = "fully_connected"
    RELU = "relu"
    BATCH_NORM = "batch_norm"
    MAX_POOL = "max_pool"
    AVG_POOL = "avg_pool"
    DROPOUT = "dropout"

class ModelEnum(Enum, metaclass=EnumWithFromStringMeta):
    UNKNOWN = "unknown"
    ALEXNET = "alexnet"
    RESNET18 = "resnet18"
    RESNET50 = "resnet50"
    RESNET152 = "resnet152"
    MOBILENET = "mobilenet"
    BERT = "bert"
    VGG16 = "vgg16"
