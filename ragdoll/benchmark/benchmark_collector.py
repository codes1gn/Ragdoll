import os
import yaml
import glob
import time
from typing import List
from ragdoll.benchmark import * 
from ragdoll.common import *

class BenchmarkCollector:
    def __init__(self, config_dir: str):
        TRACE("Create BenchmarkCollector")
        self.config_dir = config_dir
        self.task_configs: list[FullConfig] = []
        self.load_config_files()

    def load_config_files(self):
        TRACE("Load task configuration files")
        config_files = glob.glob(os.path.join(self.config_dir, "*.yml"))
        for file in config_files:
            config_data = ConfigBuilder.load_config(file)
            # TRACE("Load task: {}".format(config_data))
            self.task_configs.append(config_data)
    
    def collect_and_run_benchmarks(self):
        TRACE("Start to benchmark tasks")
        total_tasks = len(self.task_configs)
        for idx, config in enumerate(self.task_configs):
            label = config.label
            print(f"\nProcessing task {idx + 1}/{total_tasks}: {label}")
            
            benchmark = Benchmark(config)
            
            print(f"Running benchmark for task: {label}")
            benchmark.run() 
            
            results = benchmark.get_results()
            summary = results["summary"]
            print(f"Summary for task {label}: {summary}")

            progress = (idx + 1) / total_tasks * 100
            print(f"Progress: {progress:.2f}%")

    def run(self):
        self.collect_and_run_benchmarks()


