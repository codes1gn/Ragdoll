from ragdoll import *

# Example usage
def test_benchmark():
    # Assuming ExecutorBuilder and WorkloadBuilder are already defined and implemented correctly
    torch_executor = ExecutorBuilder.build(ExecutorType.TORCH)
    workload = WorkloadBuilder.build(WorkloadType.TORCH)
    data_provider = DataProviderBuilder.build(ExecutorType.TORCH, DatasetType.CIFAR10)

    workload.load_model("resnet18")  # Load a model
    torch_executor.set_workload(workload)
    torch_executor.set_data_provider(data_provider)

    # Set the run mode to inference and run benchmark
    torch_executor.run_mode = RunMode.INFERENCE
    benchmark = Benchmark(executor=torch_executor, workload=workload, data_provider=data_provider, timer_type=TimerType.PYTHON)
    benchmark.run(num_iterations=10)  # Run for 10 iterations

    # Check that the results are saved to the YML file
    result_file = 'build/results/benchmark_results.yml'
    assert os.path.exists(result_file), "Benchmark results file not found"
    with open(result_file, 'r') as file:
        results = yaml.safe_load(file)
        assert 'mean_time' in results, "Average time not found in results"
        print("Benchmark completed and results saved.")

test_benchmark()
