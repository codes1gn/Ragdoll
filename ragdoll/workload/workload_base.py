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
    granularity: GranularityEnum = GranularityEnum.MODEL
    mode: RunModeEnum = RunModeEnum.INFERENCE

    def __init__(self, config):
        TRACE_INFO("Create {} for task {}".format(self.__class__.__name__, config.label))

    def prepare_workloads(self, workload_type):
        """Prepare workloads based on ModelEnum or OperatorEnum."""
        if isinstance(workload_type, ModelEnum):
            self.load_model(workload_type)
        elif isinstance(workload_type, OperatorEnum):
            self.load_operator(workload_type)
        else:
            raise ValueError(f"Unsupported workload type: {workload_type}")

    @abstractmethod
    def load_model(self, model_type: ModelEnum):
        """Load a model based on the provided ModelEnum enum."""
        pass

    def load_operator(self, operator_type: OperatorEnum):
        """Load a specific operator based on the OperatorEnum enum."""
        pass

