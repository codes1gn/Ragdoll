# executor/executor_builder.py

from ragdoll.common.enum import ExecutorType
from ragdoll.executor.torch_executor import TorchExecutor
from ragdoll.executor.tf_executor import TFExecutor
# from ragdoll.executor.iree_executor import IREEExecutor

class ExecutorBuilder:
    @staticmethod
    def create_executor(executor_type: ExecutorType):
        if executor_type == ExecutorType.TORCH:
            return TorchExecutor()
        elif executor_type == ExecutorType.TENSORFLOW:
            return TFExecutor()
        # elif executor_type == ExecutorType.IREE:
        #     return IREEExecutor()
        else:
            raise ValueError(f"Unsupported executor type: {executor_type}")

