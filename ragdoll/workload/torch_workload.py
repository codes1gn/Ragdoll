import torch
import torch.nn as nn
import torchvision.models as models

from .workload_base import *

class PyTorchWorkload(WorkloadBase):
    """Defines a PyTorch workload, supporting operator, model, and fused_operator granularity."""

    def __init__(self, granularity: GranularityLevel):
        super().__init__(granularity)
        self.model = None

    def load_model(self, model_name: str):
        """Load a PyTorch model by name."""
        if model_name == "resnet18":
            self.model = models.resnet18(pretrained=True)
        elif model_name == "bert":
            self.model = models.bert_base_uncased()
        else:
            raise ValueError(f"Unsupported model: {model_name}")

    def run(self):
        """Execute the workload based on the run mode and input from the data provider."""
        if not self.data_provider:
            raise ValueError("Data provider not set. Use `set_data_provider` to attach one.")
        
        # Retrieve data from the provider
        input_data = next(iter(self.data_provider))
        
        if self._run_mode == RunMode.INFERENCE:
            self.model.eval()
            with torch.no_grad():
                return self.model(input_data)
        elif self._run_mode == RunMode.TRAINING:
            self.model.train()
            output = self.model(input_data)
            # Assume a simple loss function and optimizer for training purposes
            loss_fn = nn.CrossEntropyLoss()
            optimizer = torch.optim.SGD(self.model.parameters(), lr=0.01)
            target = torch.randint(0, 1000, (input_data.size(0),))  # Dummy target data
            loss = loss_fn(output, target)
            optimizer.zero_grad()
            loss.backward()
            optimizer.step()
            return loss.item()

