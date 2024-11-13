# executor/tf_executor.py

import tensorflow as tf
from dataclasses import dataclass
from .executor_base import ExecutorBase
from ragdoll.common import DeviceType, RunMode

@dataclass
class TFExecutor(ExecutorBase):
    def __post_init__(self):
        self.load_device_info()

    def load_device_info(self):
        """Retrieve information about the TensorFlow device (CPU/GPU)."""
        devices = tf.config.list_physical_devices("GPU")
        if devices:
            self.device_info = {
                "device_type": DeviceType.GPU,
                "model": devices[0].device_type,
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

        input_data = self.data_provider.get_data()

        if self.run_mode == RunMode.INFERENCE:
            output = self.workload.model(input_data, training=False)
        elif self.run_mode == RunMode.TRAINING:
            with tf.GradientTape() as tape:
                output = self.workload.model(input_data, training=True)
        return output

