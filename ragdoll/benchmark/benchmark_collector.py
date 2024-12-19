import os
import yaml
import glob
import time
from typing import List
from ragdoll.benchmark import * 
from ragdoll.common import *

class BenchmarkCollector:
    def __init__(self, config_dir: str):
        TRACE_INFO("Create BenchmarkCollector")
        self.config_dir = config_dir
        self.task_configs: list[Config] = []
        self.load_config_files()

    def load_config_files(self):
        TRACE_INFO("Load .yml task configuration files")
        config_files = glob.glob(os.path.join(self.config_dir, "*.yml"))
        for file in config_files:
            config_data = Config.from_yaml(file)
            self.task_configs.append(config_data)
    
    def collect_and_run_benchmarks(self):
        TRACE_INFO("Start to benchmark tasks")
        total_tasks = len(self.task_configs)
        for idx, config in enumerate(self.task_configs):
            task_label = config.task_label
            print(f"\nProcessing task {idx + 1}/{total_tasks}: {task_label}")
            
            benchmark = Benchmark(config)
            
            print(f"Running benchmark for task: {task_label}")
            benchmark.run()  # 执行基准测试
            
            results = benchmark.get_results()
            summary = results["summary"]
            print(f"Summary for task {task_label}: {summary}")

            progress = (idx + 1) / total_tasks * 100
            print(f"Progress: {progress:.2f}%")

    def run(self):
        self.collect_and_run_benchmarks()


