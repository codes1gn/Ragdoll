
import yaml
import json
import os
from ragdoll.common import TimerType
from ragdoll.executor import ExecutorBase, ExecutorType
from ragdoll.workload import WorkloadBase, RunMode
from ragdoll.data_utils import DataProviderBase
from ragdoll.benchmark import PyTimer, TimerBuilder
from dataclasses import dataclass, field
from .timer import *

def numpy_serializer(obj):
    """序列化 NumPy 类型"""
    if isinstance(obj, np.ndarray):
        return obj.tolist()  # 将 NumPy 数组转换为列表
    elif isinstance(obj, np.generic):
        return obj.item()  # 将 NumPy 标量转换为 Python 标量
    raise TypeError(f"Type {type(obj)} not serializable")


@dataclass
class Benchmark:
    executor: ExecutorBase = None
    workload: WorkloadBase = None
    data_provider: DataProviderBase = None
    timer_type: TimerType = TimerType.PYTHON
    results: dict = field(default_factory=dict)
    timer: TimerBase = None

    def __init__(self, 
                 executor: ExecutorBase, 
                 timer: TimerBase, 
                 workload: WorkloadBase,
                 data_provider: DataProviderBase):
        """After initialization, set up the timer based on the type."""
        self.timer = timer
        self.executor = executor
        self.workload = workload
        self.data_provider = data_provider 
        self.results = {}

    def run(self, num_iterations: int = 10):
        """
        Run the benchmark by executing the workload with the data provider and timing it.

        Args:
            num_iterations (int): The number of iterations to run the benchmark for.
        """
        self.executor.set_workload(self.workload)
        self.executor.set_data_provider(self.data_provider)
        print("start")
        
        # Initialize timer and run the workload

        self.timer.run(self.executor.execute)
        print(self.timer.summary())

        # Store summary of the benchmark run
        self._store_summary()

    def _store_summary(self):
        """
        Store the benchmark summary (execution time, iterations) into the results.
        """
        print("store")
        # TODO: make a standalone summary class, make it dataclass
        self.results['mean_time'] = self.timer.mean_time()
        self.results['std_dev'] = self.timer.std_dev()
        self.results['summary'] = self.timer.summary()
        print(self.results)

        # Save the results to a YAML file
        self._save_to_json()

    def _save_to_json(self):
        result_file = 'build/results/benchmark_results.json'

        os.makedirs(os.path.dirname(result_file), exist_ok=True)

        with open(result_file, 'w') as file:
            json.dump(self.results, file, default=numpy_serializer, indent=4, ensure_ascii=False)

        print(f"Benchmark results saved to {result_file}")

    def get_results(self):
        return self.results
