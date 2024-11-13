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

    @abstractmethod
    def load_model(self, model_name: str):
        """Load a model by name specific to each platform."""
        pass

