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
        TRACE("load model = {}".format(model_type))
        if model_type == ModelEnum.RESNET18:
            captured_output = io.StringIO()
            sys.stdout = captured_output

            try:
                DEBUG("Loading model: resnet18")
                # This will print detailed logs during the loading of the model
                self.workload = models.resnet18(pretrained=False)
            finally:
                sys.stdout = sys.__stdout__
            assert(self.workload is not None)

            captured_output.seek(0)  # Go to the beginning of the captured output
            output = captured_output.read()
            DEBUG(f"Model loading details:\n{output}")

        elif model_type == ModelEnum.RESNET152:
            captured_output = io.StringIO()
            sys.stdout = captured_output

            try:
                DEBUG("Loading model: resnet152")
                # This will print detailed logs during the loading of the model
                # TODO: unify this part to support pretrained from config
                self.workload = models.resnet152(pretrained=False)
                # self.workload = models.resnet152(pretrained=False).train(False)
                # MAGIC_NUM = 7777e-5
                # self.workload.load_state_dict({k: torch.ones_like(v) * MAGIC_NUM for k, v in self.workload.state_dict().items()})
            finally:
                sys.stdout = sys.__stdout__
            assert(self.workload is not None)

            captured_output.seek(0)  # Go to the beginning of the captured output
            output = captured_output.read()
            DEBUG(f"Model loading details:\n{output}")

        elif model_type == ModelEnum.RESNET50:
            self.workload = models.resnet50(pretrained=False)
        elif model_type == ModelEnum.MOBILENET:
            # TODO: mark this with an argument or through config setting, experiments/workload/pretrained
            self.workload = models.mobilenet_v2(pretrained=False)
        else:
            raise ValueError(f"Unsupported model: {model_type}")

    def load_operator(self, operator_type: OperatorEnum):
        """Load a PyTorch operator based on the OperatorEnum enum."""
        TRACE("load operator = {}".format(operator_type))
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


