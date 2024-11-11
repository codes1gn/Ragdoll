
from .workload_base import *

class IREEWorkload(WorkloadBase):
    """Defines an IREE workload, supporting operator, model, and fused_operator granularity."""

    def __init__(self, granularity: GranularityLevel):
        super().__init__(granularity)
        self.model = None

    def load_model(self, model_name: str, model_format="onnx"):
        """Load an IREE-compatible model (ONNX or TOSA)."""
        # Placeholder for actual IREE loading logic
        pass

    def run(self):
        if not self.data_provider:
            raise ValueError("Data provider not set. Use `set_data_provider` to attach one.")
        
        input_data = next(iter(self.data_provider))
        
        # Placeholder for model execution based on IREE API
        if self.run_mode == RunMode.INFERENCE:
            pass  # Replace with IREE inference code
        elif self.run_mode == RunMode.TRAINING:
            pass  # Replace with IREE training code

