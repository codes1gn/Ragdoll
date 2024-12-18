# workload/workload_builder.py

from ragdoll.common import *
from ragdoll.workload.torch_workload import TorchWorkload
from ragdoll.workload.tf_workload import TFWorkload
from ragdoll.workload.iree_workload import IREEWorkload
from ragdoll.workload.workload_base import WorkloadBase

class WorkloadBuilder:
    @staticmethod
    def build(config: Config) -> WorkloadBase:
        """Create a workload instance based on the specified type."""
        if config.workload == WorkloadType.TORCH:
            return TorchWorkload()
        elif config.workload == WorkloadType.TENSORFLOW:
            return TFWorkload()
        elif config.workload == WorkloadType.IREE:
            return IREEWorkload()
        else:
            raise ValueError(f"Unsupported workload type: {config.workload}")

