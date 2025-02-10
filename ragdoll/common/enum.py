
# common/enum.py

import yaml
from dataclasses import dataclass
from enum import Enum, EnumMeta
from typing import Literal, Optional, Union, List
from pydantic import BaseModel


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

######################################################
## System
######################################################
class RunMode(Enum, metaclass=EnumWithFromStringMeta):
    UNKNOWN = "unknown"
    INFERENCE = "inference"
    TRAINING = "training"

class ExecutorType(Enum, metaclass=EnumWithFromStringMeta):
    UNKNOWN = "unknown"
    TORCH = "torch"
    TENSORFLOW = "tensorflow"
    TVM = "tvm"
    IREE = "iree"

class TimerType(Enum, metaclass=EnumWithFromStringMeta):
    UNKNOWN = "unknown"
    PYTHON = "python"
    TORCH = "torch"
    TENSORFLOW = "tensorflow"
    IREE = "iree"
    TVM = "tvm"

class DatasetType(Enum, metaclass=EnumWithFromStringMeta):
    UNKNOWN = "unknown"
    SYNTHETIC = "synthetic"
    CIFAR10 = "cifar10"
    MNIST = "mnist"

# TODO: be more accurate
class DeviceType(Enum, metaclass=EnumWithFromStringMeta):
    UNKNOWN = "unknown"
    CPU = "cpu"
    GPU = "gpu"
    TPU = "tpu"

######################################################
## Computing workloads
######################################################
class WorkloadType(Enum, metaclass=EnumWithFromStringMeta):
    UNKNOWN = "unknown"
    TORCH = "torch"
    TENSORFLOW = "tensorflow"
    IREE = "iree"

class GranularityLevel(Enum, metaclass=EnumWithFromStringMeta):
    UNKNOWN = "unknown"
    OPERATOR = "operator"
    MODEL = "model"
    FUSED_OPERATOR = "fused_operator"

class ModelWorkload(Enum, metaclass=EnumWithFromStringMeta):
    UNKNOWN = "unknown"
    ALEXNET = "alexnet"
    RESNET18 = "resnet18"
    RESNET50 = "resnet50"
    MOBILENET = "mobilenet"
    BERT = "bert"
    VGG16 = "vgg16"

class OpWorkload(Enum, metaclass=EnumWithFromStringMeta):
    UNKNOWN = "unknown"
    CONV2D = "conv2d"
    FC = "fully_connected"
    RELU = "relu"
    BATCH_NORM = "batch_norm"
    MAX_POOL = "max_pool"
    AVG_POOL = "avg_pool"
    DROPOUT = "dropout"
    # Add more operators as needed

# ######################################################
# ## Redesign with pydantic
# ######################################################
# # ---------------------------
# # Define enumeration classes for various configuration fields
# # ---------------------------
#
class RunModeNew(Enum):
    UNKNOWN = "unknown"
    INFERENCE = "inference"
    TRAINING = "training"

class ExecutorFrameworkNew(Enum):
    UNKNOWN = "unknown"
    TORCH = "torch"
    TENSORFLOW = "tensorflow"
    TVM = "tvm"
    IREE = "iree"

class TimerNew(Enum):
    UNKNOWN = "unknown"
    PYTHON = "python"
    TORCH = "torch"
    TENSORFLOW = "tensorflow"
    IREE = "iree"
    TVM = "tvm"

class DeviceNew(Enum):
    UNKNOWN = "unknown"
    CPU = "cpu"
    GPU = "gpu"
    TPU = "tpu"

# Framework for workload purposes
class WorkloadFrameworkNew(Enum):
    UNKNOWN = "unknown"
    TORCH = "torch"
    TENSORFLOW = "tensorflow"
    IREE = "iree"

# Granularity level indicates the type of workload (operator, model, etc.)
class GranularityLevelNew(Enum):
    UNKNOWN = "unknown"
    OPERATOR = "operator"
    MODEL = "model"
    FUSED_OPERATOR = "fused_operator"

# Operator workload options
class OpWorkloadEnumNew(Enum):
    UNKNOWN = "unknown"
    CONV2D = "conv2d"
    FULLY_CONNECTED = "fully_connected"
    RELU = "relu"
    BATCH_NORM = "batch_norm"
    MAX_POOL = "max_pool"
    AVG_POOL = "avg_pool"
    DROPOUT = "dropout"

class ModelWorkloadEnumNew(Enum, metaclass=EnumWithFromStringMeta):
    UNKNOWN = "unknown"
    ALEXNET = "alexnet"
    RESNET18 = "resnet18"
    RESNET50 = "resnet50"
    MOBILENET = "mobilenet"
    BERT = "bert"
    VGG16 = "vgg16"
#
# # OperatorWorkload model represents an operator-level workload
# class OperatorWorkloadNew(BaseModel):
#     framework: WorkloadFrameworkNew
#     granularity: Literal[GranularityLevelNew.OPERATOR.value]  # Must be "operator"
#     operator: OpWorkloadEnumNew
#
# class ModelWorkload(BaseModel):
#     framework: WorkloadFrameworkNew
#     granularity: Literal[GranularityLevel.MODEL]
#     model: ModelWorkloadEnumNew
#
# class FusedOperatorWorkload(BaseModel):
#     framework: WorkloadFrameworkNew
#     granularity: Literal[GranularityLevel.FUSED_OPERATOR]
#     operators: List[OpWorkloadEnumNew]
#
#
# # ---------------------------
# # Define Executor configuration as a nested model
# # ---------------------------
# class ExecutorConfig(BaseModel):
#     framework: ExecutorFrameworkNew
#     device: DeviceNew
#
# # ---------------------------
# # Define Dataset configuration:
# # For "synthetic" type, both input_shape and batch_size are required.
# # For concrete datasets (like "cifar10", "mnist"), only batch_size is needed.
# # ---------------------------
# class SyntheticDataset(BaseModel):
#     type: Literal["synthetic"]
#     input_shape: List[int]
#     batch_size: int
#
# class ConcreteDataset(BaseModel):
#     type: Literal["cifar10", "mnist"]
#     batch_size: int
#
# # DatasetConfig is a union type of both possible dataset configurations.
# DatasetConfig = Union[SyntheticDataset, ConcreteDataset]
#
# # ---------------------------
# # Define Experiment configuration model
# # ---------------------------
class ExperimentConfig(BaseModel):
    run_mode: RunModeNew
#     executor: ExecutorConfig
#     timer: TimerNew
#     dataset: DatasetConfig
#
# # ---------------------------
# # Define top-level configuration model integrating workload and experiment configurations
# # ---------------------------
class FullConfig(BaseModel):
    # workload: Union[OperatorWorkloadNew, ModelWorkload, FusedOperatorWorkload]
    experiment: ExperimentConfig

