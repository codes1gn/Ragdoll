import yaml
from dataclasses import dataclass
from typing import Optional
from .enum import *

@dataclass
class Config:
    # Add all necessary enums as fields
    executor: ExecutorType
    run_mode: RunMode
    workload: WorkloadType
    dataset: DatasetType
    device: DeviceType
    granularity: GranularityLevel  # Include GranularityLevel
    timer: TimerType  # Include TimerType

    @classmethod
    def from_yaml(cls, filepath: str) -> 'Config':
        """Load a config from a YAML file."""
        with open(filepath, 'r') as f:
            config_data = yaml.safe_load(f)

        # Convert string values to enums using the `from_string` method of each enum
        executor = ExecutorType.from_string(config_data.get('executor', 'unknown'))
        run_mode = RunMode.from_string(config_data.get('run_mode', 'unknown'))
        workload = WorkloadType.from_string(config_data.get('workload', 'unknown'))
        dataset = DatasetType.from_string(config_data.get('dataset', 'unknown'))
        device = DeviceType.from_string(config_data.get('device', 'unknown'))
        granularity = GranularityLevel.from_string(config_data.get('granularity', 'unknown'))
        timer = TimerType.from_string(config_data.get('timer', 'unknown'))

        return cls(
            executor=executor,
            run_mode=run_mode,
            workload=workload,
            dataset=dataset,
            device=device,
            granularity=granularity,
            timer=timer
        )

    def __repr__(self):
        return (
            f"Config(executor={self.executor}, run_mode={self.run_mode}, "
            f"workload={self.workload}, dataset={self.dataset}, "
            f"device={self.device}, granularity={self.granularity}, "
            f"timer={self.timer})"
        )

