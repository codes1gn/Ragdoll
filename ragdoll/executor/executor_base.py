from abc import ABC, abstractmethod
from dataclasses import dataclass, field
from ragdoll.common import *
from ragdoll.workload import WorkloadBase
from ragdoll.data_utils import DataProviderBase

@dataclass
class ExecutorBase(ABC):
    # workload: WorkloadBase = field(default=None)
    # data_provider: DataProviderBase = field(default=None)
    config: FullConfig = field(default=None)
    run_mode: RunModeEnum = field(default=RunModeEnum.INFERENCE)
    device_info: dict = field(default_factory=dict)

    def __post_init__(self):
        TRACE("Create {} for task {}".format(self.__class__.__name__, self.config.label))
        self.run_mode = self.config.experiment.run_mode

    def _validate(self) -> bool:
        # Check if any field is None or empty
        for field_name, value in self.__dict__.items():
            if value is None or (isinstance(value, str) and not value.strip()):
                print(f"Field '{field_name}' is empty or not set.")
                assert(0)
        return True

    # def set_workload(self, workload: WorkloadBase):
    #     """Attach a workload to the executor."""
    #     self.workload = workload
    #
    # def set_data_provider(self, data_provider: DataProviderBase):
    #     """Attach a data provider to the executor."""
    #     self.data_provider = data_provider

    @abstractmethod
    def load_device_info(self):
        """Retrieve device-specific information."""
        pass

    @abstractmethod
    def execute(self):
        """Execute the workload using data from the data provider."""
        pass

