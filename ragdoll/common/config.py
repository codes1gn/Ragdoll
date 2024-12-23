import yaml
from dataclasses import dataclass
from abc import ABC, abstractmethod
import numpy as np
from typing import Tuple, Optional
from .enum import *
import itertools

@dataclass
class Config:
    # Enum fields with default values
    task_label: str = ""
    executor: ExecutorType = ExecutorType.UNKNOWN
    run_mode: RunMode = RunMode.UNKNOWN
    workload: WorkloadType = WorkloadType.UNKNOWN
    dataset: DatasetType = DatasetType.SYNTHETIC  # Default to SYNTHETIC
    device: DeviceType = DeviceType.UNKNOWN
    granularity: GranularityLevel = GranularityLevel.UNKNOWN
    timer: TimerType = TimerType.UNKNOWN

    # Non-enum fields with default values
    batch_size: int = 0  # Default to 0
    input_shape: Tuple[int, int, int] = ()  # Default to an empty tuple
    dtype: type = np.float32  # Default dtype to np.float32

    @classmethod
    def from_yaml(cls, filepath: str) -> 'Config':
        """Load a config from a YAML file."""
        with open(filepath, 'r') as f:
            config_data = yaml.safe_load(f)

        # Convert string values to enums using the `from_string` method of each enum
        task_label = config_data.get('label', "")
        executor = ExecutorType.from_string(config_data.get('executor', 'unknown'))
        run_mode = RunMode.from_string(config_data.get('run_mode', 'unknown'))
        workload = WorkloadType.from_string(config_data.get('workload', 'unknown'))
        dataset = DatasetType.from_string(config_data.get('dataset', 'unknown'))
        device = DeviceType.from_string(config_data.get('device', 'unknown'))
        granularity = GranularityLevel.from_string(config_data.get('granularity', 'unknown'))
        timer = TimerType.from_string(config_data.get('timer', 'unknown'))
        batch_size = config_data.get('batch_size', 0)
        input_shape = config_data.get("input_shape", ())
        if isinstance(input_shape, str):
            # If input_shape is a string, try to parse it as a tuple or list of ints
            input_shape = cls.parse_input_shape(input_shape)

        dtype = getattr(np, config_data.get('dtype', "np.float32"), np.float32) 

        return cls(
            task_label=task_label,
            executor=executor,
            run_mode=run_mode,
            workload=workload,
            dataset=dataset,
            device=device,
            granularity=granularity,
            timer=timer,
            batch_size=batch_size,
            input_shape=input_shape,
            dtype=dtype
        )


    @staticmethod
    def parse_input_shape(input_shape_str: str) -> Tuple[int, ...]:
        """Parse input_shape from a string into a tuple of ints."""
        # Remove any extra whitespace and check if it is in tuple/list format
        input_shape_str = input_shape_str.strip()
        
        # Try parsing the string into a tuple or list of integers
        try:
            # Use eval to parse string representation of tuple or list
            parsed_shape = eval(input_shape_str)
            # Check if the parsed shape is a tuple or list and contains only integers
            if isinstance(parsed_shape, (tuple, list)) and all(isinstance(i, int) for i in parsed_shape):
                return tuple(parsed_shape)  # Convert list to tuple if needed
            else:
                raise ValueError("Input shape elements must be integers.")
        except (SyntaxError, ValueError):
            raise ValueError(f"Invalid input shape format: {input_shape_str}")


    def __repr__(self):
        return (
            f"Dump task: {self.task_label}\n"
            f"Config(executor={self.executor}, run_mode={self.run_mode}, "
            f"workload={self.workload}, dataset={self.dataset}, "
            f"device={self.device}, granularity={self.granularity}, "
            f"timer={self.timer}), batch_size={self.batch_size}, "
            f"input_shape={self.input_shape}), dtype={self.dtype}, "
        )

