# executor/torch_executor.py

import torch
from dataclasses import dataclass, field
from .executor_base import ExecutorBase
from ragdoll.common import *
from ragdoll.workload import WorkloadBase
from ragdoll.data_utils import DataProviderBase

@dataclass
class TorchExecutor(ExecutorBase):
    available_devices: dict[DeviceEnum, torch.device] = field(init=False, default_factory=dict)

    def __post_init__(self):
        super().__post_init__()
        self.load_available_devices()
        assert(self._validate())

    def load_available_devices(self):
        """Retrieve all available devices including CPU, CUDA, MPS, and XPU."""
        self.available_devices[DeviceEnum.CPU] = torch.device("cpu")

        if torch.cuda.is_available():
            self.available_devices[DeviceEnum.GPU] = torch.device("cuda")

    def get_device(self) -> Optional[torch.device]:
        """Return the configured device from config if available, else None."""
        requested_device = self.config.experiment.executor.device
        for device_enum, torch_device in self.available_devices.items():
            if device_enum == requested_device:
                return torch_device
        return None

    def execute(self, workload: WorkloadBase, data_provider: DataProviderBase):
        """Execute the workload using data from the data provider."""
        assert workload is not None, "Workload must be provided"
        assert data_provider is not None, "Data provider must be provided"

        device = self.get_device()
        if device is None:
            raise RuntimeError(f"Requested device {self.config.experiment.executor.device} is not available.")

        TRACE(f"Executing model = {workload.workload}")

        # Move model to the correct device if necessary
        model = workload.workload
        if next(model.parameters()).device != device:
            model = model.to(device)

        # Load input data
        input_data, label_data = data_provider.get_data()
        input_data, label_data = input_data.to(device), label_data.to(device)

        # Inference mode
        if self.run_mode == RunModeEnum.INFERENCE:
            model.eval()
            with torch.no_grad():
                return model(input_data)

        # Training mode
        elif self.run_mode == RunModeEnum.TRAINING:
            model.train()

            # Default to CrossEntropyLoss if not specified
            loss_fn = getattr(workload, "loss_fn", torch.nn.CrossEntropyLoss())  
            optimizer = getattr(workload, "optimizer", torch.optim.SGD)(model.parameters(), lr=0.01)  

            output = model(input_data)
            loss = loss_fn(output, label_data)

            optimizer.zero_grad()
            loss.backward()
            optimizer.step()

            return output

        else:
            unreachable()

