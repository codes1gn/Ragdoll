# executor/torch_executor.py

import torch
from dataclasses import dataclass, field
from .executor_base import ExecutorBase
from ragdoll.common import *
from ragdoll.workload import WorkloadBase
from ragdoll.data_utils import DataProviderBase

@dataclass
class TorchExecutor(ExecutorBase):
    device: torch.device = field(init=False, default=torch.device("cuda" if torch.cuda.is_available() else "cpu"))

    def __post_init__(self):
        super().__post_init__()
        self.load_device_info()
        assert(self._validate())

    def load_device_info(self):
        """Retrieve information about the device."""
        if self.device.type == "cuda":
            self.device_info = {
                "device_type": DeviceEnum.GPU,
                "model": torch.cuda.get_device_name(0),
                "cuda_version": torch.version.cuda,
            }
        else:
            self.device_info = {
                "device_type": DeviceEnum.CPU,
                "model": "CPU",
            }

    def get_device_info(self):
        return self.device_info

    def execute(self, workload: WorkloadBase = None, data_provider: DataProviderBase = None):
        """Execute the workload using data from the data provider."""
        # if not self.workload or not self.data_provider:
        #     raise ValueError("Workload or data provider not set.")
        assert(workload is not None)
        assert(data_provider is not None)

        TRACE("Executing model = {}".format(workload.workload))
        model = workload.workload.to(self.device)
        input_data, label_data = data_provider.get_data()
        input_data = input_data.to(self.device)
        label_data = label_data.to(self.device)

        if self.run_mode == RunModeEnum.INFERENCE:
            model.eval()
            with torch.no_grad():
                output = model(input_data)
            return output
        elif self.run_mode == RunModeEnum.TRAINING:
            # TODO: support multi steps
            model.train()
            output = model(input_data)
            loss_fn = torch.nn.CrossEntropyLoss()
            optimizer = torch.optim.SGD(workload.workload.parameters(), lr=0.01)
            loss = loss_fn(output, label_data)
            optimizer.zero_grad()
            loss.backward()
            optimizer.step()
            return output
        else:
            unreachable()
