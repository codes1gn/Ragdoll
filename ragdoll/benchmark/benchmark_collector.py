import yaml
import os
from pathlib import Path
from typing import List
from dataclasses import dataclass, field
from ragdoll.common import ExecutorType, WorkloadType, DatasetType, RunMode
from ragdoll.benchmark import Benchmark, PyTorchTimer, TimerBase
from ragdoll.workload import WorkloadBuilder
from ragdoll.data_utils import DataProviderBuilder
from ragdoll.executor import ExecutorBuilder

@dataclass
class BenchmarkCollector:
    benchmark_folder: str = field(default_factory=lambda: str(Path(__file__).resolve().parent.parent / 'benchmarks'))
    result_folder: str = field(default_factory=lambda: str(Path(__file__).resolve().parent.parent / 'build/results'))
    benchmarks: List[Benchmark] = field(default_factory=list)
    results: List[dict] = field(default_factory=list)

    def load_benchmarks(self):
        """Load all benchmark YAML files from the benchmarks folder."""
        benchmark_files = Path(self.benchmark_folder).rglob("*.yml")
        
        for benchmark_file in benchmark_files:
            with open(benchmark_file, 'r') as file:
                benchmark_config = yaml.safe_load(file)
                if benchmark_config.get("task") == "benchmark":
                    benchmark = self.create_benchmark_from_config(benchmark_config, benchmark_file)
                    self.benchmarks.append(benchmark)

    def create_benchmark_from_config(self, config: dict, benchmark_file: Path) -> Benchmark:
        """Create a Benchmark instance from a configuration loaded from a YAML file."""
        # Extract the required components from the YAML config
        workload_type = WorkloadType[config['workload']['type'].upper()]
        workload = WorkloadBuilder.create_workload(workload_type, config['workload'])
        
        data_provider_type = DataProviderType[config['data_provider']['type'].upper()]
        data_provider = DataProviderBuilder.create_data_provider(data_provider_type, config['data_provider'])
        
        executor_type = ExecutorType[config['executor']['type'].upper()]
        executor = ExecutorBuilder.create_executor(executor_type)

        # Set the run mode (inference or training)
        run_mode = RunMode[config.get('run_mode', 'inference').upper()]

        # Set the timer type (if provided)
        timer = None
        if 'timer' in config:
            timer_type = config['timer']['type'].lower()
            if timer_type == 'pytorch_timer':
                timer = PyTorchTimer()

        # Create and return the benchmark instance
        benchmark = Benchmark(
            workload=workload,
            data_provider=data_provider,
            executor=executor,
            run_mode=run_mode,
            timer=timer
        )

        return benchmark

    def run_all_benchmarks(self):
        """Run all benchmarks and collect their results."""
        for benchmark in self.benchmarks:
            result = benchmark.run()
            self.results.append(result)
            self.save_result(benchmark, result)

    def save_result(self, benchmark: Benchmark, result: dict):
        """Save the result of a benchmark to a YAML file."""
        benchmark_file_path = Path(self.benchmark_folder) / f"{benchmark.workload.name}.yml"
        result_file_path = Path(self.result_folder) / benchmark_file_path.relative_to(self.benchmark_folder)

        result_file_path.parent.mkdir(parents=True, exist_ok=True)  # Ensure the directory exists

        # Save the result back to the YAML file
        with open(result_file_path, 'w') as file:
            yaml.dump(result, file, default_flow_style=False)

    def benchmark_all(self):
        """Load all benchmarks, run them, and save results."""
        self.load_benchmarks()
        self.run_all_benchmarks()

