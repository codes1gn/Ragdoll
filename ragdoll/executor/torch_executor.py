# executor/torch_executor.py

import torch
from dataclasses import dataclass, field
from ragdoll.executor.executor import ExecutorBase
from ragdoll.common.enum import DeviceType, RunMode

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

    def execute(self):
        """Execute the workload using data from the data provider."""
        if not self.workload or not self.data_provider:
            raise ValueError("Workload or data provider not set.")

        model = self.workload.model.to(self.device)
        input_data = self.data_provider.get_data().to(self.device)

        if self.run_mode == RunMode.INFERENCE:
            model.eval()
            with torch.no_grad():
                output = model(input_data)
        elif self.run_mode == RunMode.TRAINING:
            model.train()
            output = model(input_data)
        return output
