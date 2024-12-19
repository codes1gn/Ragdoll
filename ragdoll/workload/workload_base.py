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
    granularity: GranularityLevel = GranularityLevel.MODEL
    mode: RunMode = RunMode.INFERENCE

    def __init__(self, config):
        TRACE_INFO("Create {} for task {}".format(self.__class__.__name__, config.task_label))

    def prepare_workloads(self, workload_type):
        """Prepare workloads based on ModelType or OperatorType."""
        if isinstance(workload_type, ModelType):
            self.load_model(workload_type)
        elif isinstance(workload_type, OperatorType):
            self.load_operator(workload_type)
        else:
            raise ValueError(f"Unsupported workload type: {workload_type}")

    @abstractmethod
    def load_model(self, model_type: ModelType):
        """Load a model based on the provided ModelType enum."""
        pass

    def load_operator(self, operator_type: OperatorType):
        """Load a specific operator based on the OperatorType enum."""
        pass

