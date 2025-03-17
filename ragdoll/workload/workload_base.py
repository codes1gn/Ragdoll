# executor/executor.py

from abc import ABC, abstractmethod
from enum import Enum
from dataclasses import dataclass, field
from typing import Optional, Any

from ragdoll.common import * 
from ragdoll.data_utils import *

__all__ = [
    'WorkloadBase',
]

@dataclass
class WorkloadBase(ABC):
    """Abstract base class for defining different workload types across platforms."""
    config: BenchmarkConfig = field(default=None)
    granularity: GranularityEnum = GranularityEnum.MODEL
    mode: RunModeEnum = RunModeEnum.INFERENCE
    workload: Optional[Any] = None

    def __post_init__(self):
        TRACE("Create {} for task {}".format(self.__class__.__name__, self.config.label))
        self.granularity = self.config.workload.granularity
        self.mode = self.config.experiment.run_mode
        if self.granularity == GranularityEnum.OPERATOR:
            self.load_operator(self.config.workload.operator)
        # elif self.granularity == GranularityEnum.FUSED_OPERATOR:
        #     # need to handle this
        #     self.load_operator_queue(config.workload.operator)
        elif self.granularity == GranularityEnum.MODEL:
            self.load_model(self.config.workload.model)
        else:
            unreachable(f"Unsupported workload type: {self.config.granularity}")

        assert(self._validate())

    def _validate(self) -> bool:
        # Check if any field is None or empty
        TRACE("Check WorkloadBase validity {}".format(self.__class__.__name__))
        for field_name, value in self.__dict__.items():
            TRACE("Check field {}".format(field_name))
            if value is None or (isinstance(value, str) and not value.strip()):
                print(f"Field '{field_name}' is empty or not set.")
                return False
        return True

    @abstractmethod
    def load_model(self, model_type: ModelEnum):
        """Load a model based on the provided ModelEnum enum."""
        pass

    @abstractmethod
    def load_operator(self, operator_type: OperatorEnum):
        """Load a specific operator based on the OperatorEnum enum."""
        pass

