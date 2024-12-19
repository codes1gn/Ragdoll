from abc import ABC, abstractmethod
from dataclasses import dataclass, field
from ragdoll.common import *
from ragdoll.workload import WorkloadBase
from ragdoll.data_utils import DataProviderBase

@dataclass
class ExecutorBase(ABC):
    workload: WorkloadBase = field(default=None)
    data_provider: DataProviderBase = field(default=None)
    run_mode: RunMode = RunMode.INFERENCE
    device_info: dict = field(default_factory=dict)

    def __init__(self, config: Config):
        TRACE_INFO("Create {} for task {}".format(self.__class__.__name__, config.task_label))

    def set_workload(self, workload: WorkloadBase):
        """Attach a workload to the executor."""
        self.workload = workload

    def set_data_provider(self, data_provider: DataProviderBase):
        """Attach a data provider to the executor."""
        self.data_provider = data_provider

    def set_run_mode(self, mode: RunMode):
        """Set the mode to inference or training."""
        self.run_mode = mode

    @abstractmethod
    def load_device_info(self):
        """Retrieve device-specific information."""
        pass

    @abstractmethod
    def execute(self):
        """Execute the workload using data from the data provider."""
        pass

