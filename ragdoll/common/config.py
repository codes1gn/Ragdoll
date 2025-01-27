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

@dataclass
class Config:
    # Enum fields with default values
    task_label: str = ""
    executor: ExecutorType = ExecutorType.UNKNOWN
    run_mode: RunMode = RunMode.UNKNOWN
    workload_type: WorkloadType = WorkloadType.UNKNOWN
    workload_granularity: GranularityLevel = GranularityLevel.UNKNOWN
    model_workload: ModelWorkload = ModelWorkload.UNKNOWN
    op_workload: OpWorkload = OpWorkload.UNKNOWN
    dataset: DatasetType = DatasetType.SYNTHETIC  # Default to SYNTHETIC
    device: DeviceType = DeviceType.UNKNOWN
    timer: TimerType = TimerType.UNKNOWN

    # Non-enum fields with default values
    batch_size: int = 0  # Default to 0
    input_shape: Tuple[int, int, int] = ()  # Default to an empty tuple
    dtype: type = np.float32  # Default dtype to np.float32

    @classmethod
    def load_task_from_yaml(cls, filepath: str) -> 'Config':
        """Load a config from a YAML file."""
        try:
            with open(filepath, 'r') as f:
                config_data = yaml.safe_load(f)
        except FileNotFoundError:
            raise FileNotFoundError(f"Config file not found: {filepath}")
        except yaml.YAMLError as e:
            raise ValueError(f"Invalid YAML format in config file: {filepath}") from e

        # Convert string values to enums using the `from_string` method of each enum
        task_label = config_data.get('name', "")
        executor = ExecutorType.from_string(config_data.get('executor', 'unknown'))
        run_mode = RunMode.from_string(config_data.get('run_mode', 'unknown'))
        workload_type = WorkloadType.from_string(config_data.get('workload_type', 'unknown'))
        workload_granularity = GranularityLevel.from_string(config_data.get('workload_granularity', 'unknown'))
        model_workload = ModelWorkload.from_string(config_data.get('model_workload', 'unknown'))
        op_workload = OpWorkload.from_string(config_data.get('op_workload', 'unknown'))
        dataset = DatasetType.from_string(config_data.get('dataset', 'unknown'))
        device = DeviceType.from_string(config_data.get('device', 'unknown'))
        timer = TimerType.from_string(config_data.get('timer', 'unknown'))
        batch_size = config_data.get('batch_size', 0)
        input_shape = config_data.get("input_shape", ())
        if isinstance(input_shape, str):
            # If input_shape is a string, try to parse it as a tuple or list of ints
            input_shape = cls.parse_input_shape(input_shape)
        if batch_size < 0:
            raise ValueError("batch_size must be a non-negative integer")
        if not isinstance(input_shape, tuple) or not all(isinstance(i, int) for i in input_shape):
            raise ValueError("input_shape must be a tuple of integers")

        dtype_str = config_data.get('dtype', "float32")
        dtype = getattr(np, dtype_str, None)
        if dtype is None:
            raise ValueError(f"Invalid dtype: {dtype_str}")

        _config = cls(
            task_label=task_label,
            executor=executor,
            run_mode=run_mode,
            workload_type=workload_type,
            workload_granularity=workload_granularity,
            model_workload=model_workload,
            op_workload=op_workload,
            dataset=dataset,
            device=device,
            timer=timer,
            batch_size=batch_size,
            input_shape=input_shape,
            dtype=dtype
        )
        _config._validate()
        return _config


    @staticmethod
    def parse_input_shape(input_shape_str: str) -> Tuple[int, ...]:
        """Parse input_shape from a string into a tuple of ints."""
        input_shape_str = input_shape_str.strip()
        try:
            parsed_shape = ast.literal_eval(input_shape_str)
            if isinstance(parsed_shape, (tuple, list)) and all(isinstance(i, int) for i in parsed_shape):
                return tuple(parsed_shape)
            else:
                raise ValueError("Input shape elements must be integers.")
        except (SyntaxError, ValueError) as e:
            raise ValueError(f"Invalid input shape format: {input_shape_str}") from e


    def __repr__(self):
        return pformat(vars(self))
        # return (
        #     f"Dump task: {self.task_label}\n"
        #     f"Config(executor={self.executor}, run_mode={self.run_mode}, "
        #     f"workload_type={self.workload_type}, dataset={self.dataset}, "
        #     f"device={self.device}, workload_granularity={self.workload_granularity}, "
        #     f"model_workload={self.model_workload}, op_workload={self.op_workload}, "
        #     f"timer={self.timer}), batch_size={self.batch_size}, "
        #     f"input_shape={self.input_shape}), dtype={self.dtype}, "
        # )

    def _validate(self):
        """Validate all fields in the config."""
        self._validate_enums()
        self._validate_batch_size()
        self._validate_input_shape()
        self._validate_dtype()
        self._validate_workload_consistency()

    def _validate_enums(self):
        """Ensure enum fields are not set to UNKNOWN."""
        enum_fields = {
            "executor": self.executor,
            "run_mode": self.run_mode,
            "workload_type": self.workload_type,
            "workload_granularity": self.workload_granularity,
            "model_workload": self.model_workload,
            "op_workload": self.op_workload,
            "dataset": self.dataset,
            "device": self.device,
            "timer": self.timer,
        }
        for field_name, value in enum_fields.items():
            if (field_name != "op_workload") and (field_name != "model_workload") and (value == getattr(value.__class__, "UNKNOWN")):
                raise ValueError(f"Field {field_name} cannot be UNKNOWN. Check your YAML file.")

    def _validate_batch_size(self):
        """Batch size must be a non-negative integer."""
        if not isinstance(self.batch_size, int) or self.batch_size < 0:
            raise ValueError(f"Invalid batch_size: {self.batch_size}. Must be a non-negative integer.")

    def _validate_input_shape(self):
        """Input shape must be a tuple of 3 positive integers."""
        if not isinstance(self.input_shape, tuple) or len(self.input_shape) != 3:
            raise ValueError("input_shape must be a tuple of 3 integers (e.g., (224, 224, 3))")
        if not all(isinstance(dim, int) and dim > 0 for dim in self.input_shape):
            raise ValueError("All dimensions in input_shape must be positive integers.")

    def _validate_dtype(self):
        """Ensure dtype is a valid numpy dtype."""
        if not isinstance(self.dtype, np.dtype) and not (self.dtype in (np.float32, np.float64)):
            raise ValueError(f"Invalid dtype: {self.dtype}. Must be a valid numpy dtype like np.float32.")

    def _validate_workload_consistency(self):
        """Validate workload type and granularity consistency."""
        # 示例：如果 workload_type 是 MODEL，则 model_workload 必须有效
        if self.workload_granularity == GranularityLevel.MODEL:
            if self.model_workload == ModelWorkload.UNKNOWN:
                raise ValueError("model_workload must be specified for MODEL workload type.")
        elif self.workload_granularity == GranularityLevel.OPERATOR:
            if self.op_workload == OpWorkload.UNKNOWN:
                raise ValueError("op_workload must be specified for OPERATOR workload type.")
