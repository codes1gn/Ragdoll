
from ragdoll.workload.workload_base import *
from ragdoll.common.enum import * 

class IREEWorkload(WorkloadBase):
    """Defines an IREE workload, supporting operator, model, and fused_operator granularity."""

    def __init__(self, granularity: GranularityLevel = GranularityLevel.MODEL):
        super().__init__(granularity)
        self.model = None

    def load_model(self, model: ModelWorkload, model_format="onnx"):
        """Load an IREE-compatible model (ONNX or TOSA)."""
        # Placeholder for actual IREE loading logic
        pass

    def load_operator(self, operator: OpWorkload, model_format="onnx"):
        """Load an IREE-compatible model (ONNX or TOSA)."""
        # Placeholder for actual IREE loading logic
        pass


