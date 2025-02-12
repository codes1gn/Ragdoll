# executor/executor_builder.py

from ragdoll.common import *
from .torch_executor import TorchExecutor
from .tf_executor import TFExecutor

class ExecutorBuilder:
    @staticmethod
    def build(config: FullConfig):
        TRACE_INFO("build Executor for task {}".format(config.label))
        if config.experiment.executor.framework == FrameworkEnum.TORCH:
            return TorchExecutor(config)
        elif config.experiment.executor.framework == FrameworkEnum.TENSORFLOW:
            return TFExecutor(config)
        # elif executor_type == ExecutorType.IREE:
        #     return IREEExecutor()
        else:
            raise ValueError(f"Unsupported executor type: {executor_type}")

