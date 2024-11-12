# workload/workload_builder.py

from ragdoll.common.enum import WorkloadType
from ragdoll.workload.torch_workload import TorchWorkload
from ragdoll.workload.tf_workload import TFWorkload
from ragdoll.workload.iree_workload import IREEWorkload
from ragdoll.workload.workload_base import WorkloadBase

class WorkloadBuilder:
    @staticmethod
    def create_workload(workload_type: WorkloadType) -> WorkloadBase:
        """Create a workload instance based on the specified type."""
        if workload_type == WorkloadType.TORCH:
            return TorchWorkload()
        elif workload_type == WorkloadType.TENSORFLOW:
            return TFWorkload()
        elif workload_type == WorkloadType.IREE:
            return IREEWorkload()
        else:
            raise ValueError(f"Unsupported workload type: {workload_type}")

