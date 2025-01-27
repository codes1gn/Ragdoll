import io
import sys
import torch
import torch.nn as nn
import torchvision.models as models
from typing import Any, Optional
from dataclasses import dataclass, field

from ragdoll.workload.workload_base import *
from ragdoll.common import * 

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

    def load_model(self, model_type: ModelWorkload):
        """Load a PyTorch model based on the ModelWorkload enum."""
        TRACE_INFO("load model = ".format(model_type))
        if model_type == ModelWorkload.RESNET18:
            captured_output = io.StringIO()
            sys.stdout = captured_output

            try:
                TRACE_DEBUG("Loading model: mobilenet_v2")
                # This will print detailed logs during the loading of the model
                self.model = models.resnet18(pretrained=True)
            finally:
                sys.stdout = sys.__stdout__

            captured_output.seek(0)  # Go to the beginning of the captured output
            output = captured_output.read()
            TRACE_DEBUG(f"Model loading details:\n{output}")

        elif model_type == ModelWorkload.RESNET50:
            self.model = models.resnet50(pretrained=True)
        elif model_type == ModelWorkload.MOBILENET:
            self.model = models.mobilenet_v2(pretrained=True)
        else:
            raise ValueError(f"Unsupported model: {model_type}")

    def load_operator(self, operator_type: OpWorkload):
        """Load a PyTorch operator based on the OpWorkload enum."""
        if operator_type == OpWorkload.CONV2D:
            self.operator = nn.Conv2d(3, 64, kernel_size=3, stride=1, padding=1)
        elif operator_type == OpWorkload.FC:
            self.operator = nn.Linear(64 * 32 * 32, 1000)
        elif operator_type == OpWorkload.RELU:
            self.operator = nn.ReLU()
        elif operator_type == OpWorkload.BATCH_NORM:
            self.operator = nn.BatchNorm2d(64)
        elif operator_type == OpWorkload.MAX_POOL:
            self.operator = nn.MaxPool2d(kernel_size=2, stride=2)
        else:
            raise ValueError(f"Unsupported operator: {operator_type}")


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

