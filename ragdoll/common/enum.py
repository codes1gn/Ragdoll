# common/enum.py

from enum import Enum

class RunMode(Enum):
    INFERENCE = "inference"
    TRAINING = "training"

class GranularityLevel(Enum):
    OPERATOR = "operator"
    MODEL = "model"
    FUSED_OPERATOR = "fused_operator"

class ExecutorType(Enum):
    TORCH = "torch"
    TENSORFLOW = "tensorflow"
    TVM = "tvm"
    IREE = "iree"

class WorkloadType(Enum):
    TORCH = "torch_workload"
    TENSORFLOW = "tensorflow_workload"
    IREE = "iree_workload"

class TimerType(Enum):
    PY_TIMER = "py_timer"
    PYTORCH_TIMER = "pytorch_timer"
    IREE_TIMER = "iree_timer"

class DataProviderType(Enum):
    SYNTHETIC = "synthetic"
    CIFAR10 = "cifar10"
    MNIST = "mnist"

# TODO: be more accurate
class DeviceType(Enum):
    CPU = "cpu"
    GPU = "gpu"
    TPU = "tpu"
