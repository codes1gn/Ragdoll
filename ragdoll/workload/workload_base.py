from abc import ABC, abstractmethod
from enum import Enum

__all__ = [
    'RunMode',
    'GranularityLevel',
    'WorkloadBase',
]

class RunMode(Enum):
    INFERENCE = "inference"
    TRAINING = "training"

class GranularityLevel(Enum):
    OPERATOR = "operator"
    MODEL = "model"
    FUSED_OPERATOR = "fused_operator"

class WorkloadBase(ABC):
    """Abstract base class for defining different workload types across platforms."""

    def __init__(self, granularity: GranularityLevel):
        self._granularity = granularity
        self.data_provider = None
        self.run_mode = RunMode.INFERENCE  # Default to inference mode

    @property
    def granularity(self):
        return self._granularity

    @granularity.setter
    def granularity(self, level: GranularityLevel):
        self._granularity = level

    def set_data_provider(self, data_provider):
        """Attach a data provider for loading input data."""
        self.data_provider = data_provider

    def set_run_mode(self, mode: RunMode):
        """Set the mode to either inference or training."""
        self.run_mode = mode

    @abstractmethod
    def load_model(self, model_name: str):
        """Load a model by name specific to each platform."""
        pass

    @abstractmethod
    def run(self):
        """Execute the workload based on the current run mode and data from the data provider."""
        pass

