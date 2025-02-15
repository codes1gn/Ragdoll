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

    def load_model(self, model_type: ModelEnum):
        """Load a PyTorch model based on the ModelEnum enum."""
        TRACE("anchor load model = {}".format(model_type))
        if model_type == ModelEnum.RESNET18:
            captured_output = io.StringIO()
            sys.stdout = captured_output

            try:
                DEBUG("Loading model: resnet18")
                # This will print detailed logs during the loading of the model
                self.workload = models.resnet18(pretrained=True)
            finally:
                sys.stdout = sys.__stdout__
            assert(self.workload is not None)

            captured_output.seek(0)  # Go to the beginning of the captured output
            output = captured_output.read()
            DEBUG(f"Model loading details:\n{output}")

        elif model_type == ModelEnum.RESNET50:
            self.workload = models.resnet50(pretrained=True)
        elif model_type == ModelEnum.MOBILENET:
            self.workload = models.mobilenet_v2(pretrained=True)
        else:
            raise ValueError(f"Unsupported model: {model_type}")

    def load_operator(self, operator_type: OperatorEnum):
        """Load a PyTorch operator based on the OperatorEnum enum."""
        TRACE("anchor load operator = {}".format(operator_type))
        if operator_type == OperatorEnum.CONV2D:
            self.workload = nn.Conv2d(3, 64, kernel_size=3, stride=1, padding=1)
        elif operator_type == OperatorEnum.FC:
            self.workload = nn.Linear(64 * 32 * 32, 1000)
        elif operator_type == OperatorEnum.RELU:
            self.workload = nn.ReLU()
        elif operator_type == OperatorEnum.BATCH_NORM:
            self.workload = nn.BatchNorm2d(64)
        elif operator_type == OperatorEnum.MAX_POOL:
            self.workload = nn.MaxPool2d(kernel_size=2, stride=2)
        else:
            raise ValueError(f"Unsupported operator: {operator_type}")


