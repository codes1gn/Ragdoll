# executor/executor_builder.py

from ragdoll.common.enum import ExecutorType
from .torch_executor import TorchExecutor
from .tf_executor import TFExecutor

class ExecutorBuilder:
    @staticmethod
    def build(executor_type: ExecutorType):
        if executor_type == ExecutorType.TORCH:
            return TorchExecutor()
        elif executor_type == ExecutorType.TENSORFLOW:
            return TFExecutor()
        # elif executor_type == ExecutorType.IREE:
        #     return IREEExecutor()
        else:
            raise ValueError(f"Unsupported executor type: {executor_type}")

