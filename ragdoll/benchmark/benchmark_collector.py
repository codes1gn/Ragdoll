import os
import yaml
import glob
import time
from typing import List
from ragdoll.benchmark import * 
from ragdoll.common import *

class BenchmarkCollector:
    def __init__(self, arguments, config_dir: str):
        TRACE("Create BenchmarkCollector")
        self.arguments = arguments
        self.config_dir = config_dir
        self.task_configs: list[FullConfig] = []
        self.load_config_files()

    def load_config_files(self):
        TRACE("Load task configuration files")
        config_files = glob.glob(os.path.join(self.config_dir, "*.yml"))
        for file in config_files:
            config_data = ConfigBuilder.load_config(file)
            self.task_configs.append(config_data)
    
    def collect_and_run_benchmarks(self):
        TRACE("Start to benchmark tasks")
        total_tasks = len(self.task_configs)
        if self.arguments.label:
            matching_configs = [config for config in self.task_configs if config.label == self.arguments.label]
            if not matching_configs:
                print(f"No task found with label: {self.arguments.label}")
            else:
                for idx, config in enumerate(matching_configs):
                    self.run_benchmark(config, idx + 1, total_tasks)
        else:
            for idx, config in enumerate(self.task_configs):
                self.run_benchmark(config, idx + 1, total_tasks)

    def run_benchmark(self, config, idx, total_tasks):
        label = config.label
        print(f"\nProcessing task {idx}/{total_tasks}: {label}")

        benchmark = Benchmark(config)

        print(f"Running benchmark for task: {label}")
        benchmark.run()

        results = benchmark.get_results()
        summary = results["summary"]
        print(f"Summary for task {label}: {summary}")

        progress = (idx) / total_tasks * 100
        print(f"Progress: {progress:.2f}%")

    def run(self):
        self.collect_and_run_benchmarks()


