import argparse
from .common import *
from .benchmark.benchmark_collector import BenchmarkCollector

import warnings
warnings.filterwarnings("ignore")

def parse_args():
    parser = argparse.ArgumentParser(description="Ragdoll Benchmark CLI")
    parser.add_argument(
        '--bench', 
        action='store_true', 
        help="Run all benchmarks from the benchmark directory"
    )
    parser.add_argument(
        '--config-dir', 
        type=str, 
        default="benchmarks", 
        help="Directory containing benchmark configuration files (default: 'benchmarks')"
    )
    parser.add_argument(
        '--label',
        type=str,
        default=None,
        help="Run the benchmark with the specified label"
    )
    # TODO: add tag mechanism
    parser.add_argument(
        '--filter-by',
        type=str,
        default=None,
        help="Run the benchmark with the specified filtering tag"
    )
    parser.add_argument("--trace", action="store_true", help="Enable trace logging")
    parser.add_argument("--debug", action="store_true", help="Enable debug-level trace logging")
    return parser.parse_args()

def main():
    args = parse_args()

    if args.trace:
        enable_trace()
    else:
        disable_trace()

    if args.debug:
        enable_debug()
    else:
        disable_debug()
    
    if args.bench:
        print("Starting benchmark collection and execution...")
        collector = BenchmarkCollector(arguments=args, config_dir=args.config_dir)
        collector.run()
    else:
        print("No benchmark task specified. Use --bench to run benchmarks.")

if __name__ == "__main__":
    main()

