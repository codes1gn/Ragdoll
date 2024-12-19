# executor/executor_builder.py

from ragdoll.common import *
from .torch_executor import TorchExecutor
from .tf_executor import TFExecutor

class ExecutorBuilder:
    @staticmethod
    def build(config: Config):
        TRACE_INFO("build Executor for task {}".format(config.task_label))
        if config.executor == ExecutorType.TORCH:
            return TorchExecutor(config)
        elif config.executor == ExecutorType.TENSORFLOW:
            return TFExecutor(config)
        # elif executor_type == ExecutorType.IREE:
        #     return IREEExecutor()
        else:
            raise ValueError(f"Unsupported executor type: {executor_type}")

