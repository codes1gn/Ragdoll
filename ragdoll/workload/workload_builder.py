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
        if config.workload_type == WorkloadType.TORCH:
            return TorchWorkload(config)
        elif config.workload_type == WorkloadType.TENSORFLOW:
            return TFWorkload(config)
        elif config.workload_type == WorkloadType.IREE:
            return IREEWorkload(config)
        else:
            raise ValueError(f"Unsupported workload type: {config.workload}")

