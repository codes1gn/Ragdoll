import torch
import torch.nn as nn
import torchvision.models as models
from typing import Any, Optional
from dataclasses import dataclass, field

from ragdoll.workload.workload_base import *
from ragdoll.common.enum import * 

@dataclass
class TorchWorkload(WorkloadBase):
    """Defines a PyTorch workload, supporting operator, model, and fused_operator granularity."""
    model: Optional[Any] = None

    def load_model(self, model_name: str):
        """Load a PyTorch model by name."""
        if model_name == "resnet18":
            self.model = models.resnet18(pretrained=True)
        elif model_name == "bert":
            self.model = models.bert_base_uncased()
        else:
            raise ValueError(f"Unsupported model: {model_name}")

    # def run(self):
    #     """Execute the workload based on the run mode and input from the data provider."""
    #     if not self.data_provider:
    #         raise ValueError("Data provider not set. Use `set_data_provider` to attach one.")
    #     
    #     # Retrieve data from the provider
    #     input_data, label_data = next(iter(self.data_provider))
    #     
    #     if self._run_mode == RunMode.INFERENCE:
    #         print(self.model.eval())
    #         with torch.no_grad():
    #             result = self.model(input_data)
    #             # TODO: make this align with verbose
    #             print(result)
    #             return result
    #     elif self._run_mode == RunMode.TRAINING:

