
import yaml
import os
from ragdoll.common import TimerType
from ragdoll.executor import ExecutorBase, ExecutorType
from ragdoll.workload import WorkloadBase, RunMode
from ragdoll.data_utils import DataProviderBase
from ragdoll.benchmark import PyTimer, TimerBuilder
from dataclasses import dataclass, field


@dataclass
class Benchmark:
    executor: ExecutorBase
    workload: WorkloadBase
    data_provider: DataProviderBase
    timer_type: TimerType = TimerType.PYTHON
    results: dict = field(default_factory=dict)

    def __post_init__(self):
        """After initialization, set up the timer based on the type."""
        self.timer = TimerBuilder.build(self.timer_type)

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
        self._save_to_yaml()

    def _save_to_yaml(self):
        """
        Save the benchmark results to a YAML file in the 'build/results' directory.
        """
        result_file = 'build/results/benchmark_results.yml'
        
        # Ensure directory exists
        os.makedirs(os.path.dirname(result_file), exist_ok=True)

        # Save results to YML file
        with open(result_file, 'w') as file:
            yaml.dump(self.results, file, default_flow_style=False)

        print(f"Benchmark results saved to {result_file}")

