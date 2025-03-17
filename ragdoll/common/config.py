from abc import ABC, abstractmethod
import ast
from typing import Dict, Any
from dataclasses import dataclass
import re
import yaml
from pprint import pformat
from typing import Tuple, Optional
import itertools
import numpy as np

from .enum import *

from typing import Literal, Optional, Union, List
from pydantic import BaseModel, field_validator, root_validator, ValidationError


class OperatorConfig(BaseModel):
    framework: FrameworkEnum
    granularity: GranularityEnum  # Must be "operator"
    operator: OperatorEnum

    @field_validator('granularity')
    def must_be_synthetic(cls, v):
        if v != GranularityEnum.OPERATOR:
            raise ValueError('source must be SYNTHETIC')
        return v

class ModelConfig(BaseModel):
    framework: FrameworkEnum
    granularity: GranularityEnum
    model: ModelEnum

    @field_validator('granularity')
    def must_be_synthetic(cls, v):
        if v != GranularityEnum.MODEL:
            raise ValueError('source must be SYNTHETIC')
        return v

class FusedOperatorConfig(BaseModel):
    framework: FrameworkEnum
    granularity: GranularityEnum
    operators: List[OperatorEnum]

    @field_validator('granularity')
    def must_be_synthetic(cls, v):
        if v != GranularityEnum.FUSED_OPERATOR:
            raise ValueError('source must be SYNTHETIC')
        return v

# ---------------------------
# Define Executor configuration as a nested model
# ---------------------------
class ExecutorConfig(BaseModel):
    framework: FrameworkEnum
    device: DeviceEnum

# ---------------------------
# Define Dataset configuration:
# For "synthetic" type, both input_shape and batch_size are required.
# For concrete datasets (like "cifar10", "mnist"), only batch_size is needed.
# ---------------------------
class SyntheticDatasetConfig(BaseModel):
    source: DataSourceEnum
    input_shape: List[int]
    batch_size: int
    dtype: DtypeEnum

    @field_validator('source')
    def must_be_synthetic(cls, v):
        if v != DataSourceEnum.SYNTHETIC:
            raise ValueError('source must be SYNTHETIC')
        return v

    @property
    def input_shape(self):
        # Just return the value of the field `input_shape`
        return self._input_shape

    @input_shape.setter
    def input_shape(self, value):
        self._input_shape = value

class ConcreteDatasetConfig(BaseModel):
    source: DataSourceEnum
    batch_size: int
    dtype: DtypeEnum

    @field_validator('source')
    def must_be_synthetic(cls, v):
        if v == DataSourceEnum.SYNTHETIC:
            raise ValueError('source must not be SYNTHETIC')
        return v

    @property
    def input_shape(self):
        # Dynamically set input_shape based on the source
        if self.source == DataSourceEnum.CIFAR10:
            return [3, 32, 32]  # Example for CIFAR10
        elif self.source == DataSourceEnum.MNIST:
            return [1, 28, 28]  # Example for MNIST
        elif self.source == DataSourceEnum.SYNTHETIC:
            raise ValueError("Synthetic dataset must use SyntheticDatasetConfig")


DatasetConfig = Union[SyntheticDatasetConfig, ConcreteDatasetConfig]
WorkloadConfig = Union[OperatorConfig, ModelConfig, FusedOperatorConfig]

# ---------------------------
# Define Experiment configuration model
# ---------------------------
# TODO: mock or pretrained
class ExperimentConfig(BaseModel):
    run_mode: RunModeEnum
    executor: ExecutorConfig
    timer: TimerEnum

# ---------------------------
# Define top-level configuration model integrating workload and experiment configurations
# ---------------------------
class BenchmarkConfig(BaseModel):
    label: str
    workload: WorkloadConfig
    experiment: ExperimentConfig
    dataset: DatasetConfig

class ConfigBuilder:

    @classmethod
    def load_config(cls, filepath: str) -> 'BenchmarkConfig':
        with open(filepath, "r") as file:
            config_dict = yaml.safe_load(file)

        # Parse the configuration using Pydantic, which validates the data types and structure.
        try:
            _config = BenchmarkConfig.model_validate(config_dict)
            print("Parsed configuration:")
            print(_config.model_dump_json(indent=2))
            return _config

        except Exception as e:
            print("Configuration error:", e)

