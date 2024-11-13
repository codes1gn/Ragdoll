# executor/torch_executor.py

import torch
from dataclasses import dataclass, field
from .executor_base import ExecutorBase
from ragdoll.common import DeviceType, RunMode

@dataclass
class TorchExecutor(ExecutorBase):
    device: torch.device = field(init=False, default=torch.device("cuda" if torch.cuda.is_available() else "cpu"))

    def __post_init__(self):
        self.load_device_info()

    def load_device_info(self):
        """Retrieve information about the device."""
        if self.device.type == "cuda":
            self.device_info = {
                "device_type": DeviceType.GPU,
                "model": torch.cuda.get_device_name(0),
                "cuda_version": torch.version.cuda,
            }
        else:
            self.device_info = {
                "device_type": DeviceType.CPU,
                "model": "CPU",
            }

    def get_device_info(self):
        return self.device_info

    def execute(self):
        """Execute the workload using data from the data provider."""
        if not self.workload or not self.data_provider:
            raise ValueError("Workload or data provider not set.")

        print(self.workload.model)
        model = self.workload.model.to(self.device)
        input_data, label_data = next(iter(self.data_provider))
        input_data = input_data.to(self.device)
        label_data = label_data.to(self.device)

        if self.run_mode == RunMode.INFERENCE:
            model.eval()
            with torch.no_grad():
                output = model(input_data)
        elif self.run_mode == RunMode.TRAINING:
            # TODO: support multi steps
            model.train()
            output = model(input_data)
            loss_fn = torch.nn.CrossEntropyLoss()
            optimizer = torch.optim.SGD(self.workload.model.parameters(), lr=0.01)
            loss = loss_fn(output, label_data)
            optimizer.zero_grad()
            loss.backward()
            optimizer.step()
        return output
