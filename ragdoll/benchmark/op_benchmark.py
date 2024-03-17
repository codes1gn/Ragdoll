import torch
import torch.utils.benchmark as benchmark
import numpy as np
import time
import iree.compiler
import iree.runtime

__all__ = ["torch_op_benchmark", "tf_op_benchmark",
           "ragdoll_op_benchmark", "ragdoll_model_benchmark", "torch_model_benchmark"]


# TODO(albert): default is 'ms'
def torch_model_benchmark(
    model, inputs, warmups=0, repetitions=1, measure_count=1, device="cpu"
):
    # print("benchmarking pytorch on model @" + str(model))
    # TODO: move this into ragdoll.utils.get_gpu_device
    if device == "cpu":
        _device = torch.device("cpu")
    elif device == "gpu":
        assert (
            torch.cuda.is_available()
        ), "Selected gpu for benchmark, but not available"
        _device = torch.device("cuda:0")
    else:
        assert 0, "Unsupported device"

    if len(inputs) == 1:
        timer = benchmark.Timer(
            stmt="model(input)", globals={"model": model, "input": inputs[0].to(_device)}
        )
    elif len(inputs) == 3:
        timer = benchmark.Timer(
            stmt="model(output, input, grad, retain_graph=True)",
            globals={"model": model, "output": inputs[0].to(_device),
                     "input": [inp.to(_device) for inp in inputs[1]], "grad": inputs[2].to(_device)}
        )
    else:
        assert 0, "inputs length = {}".format(len(inputs))

    # run benchmarks by repetition time, organise measures in list
    results = []
    for i in range(measure_count):
        results += timer.timeit(repetitions).times

    # from 's' to 'ms'
    results = [1000.0 * result for result in results]
    # get rid of warmup period measures
    if warmups == 0:
        return results
    else:
        return results[:-warmups]

# TODO(albert): annotate types
# TODO(albert): support dtype selection
# TODO(albert): refactor whole program, use dataclass and other fancy features
# TODO(albert): extract device to class


def torch_op_benchmark(
    operator, operands_shape, warmups=0, repetitions=1, measure_count=1, device="cpu"
):
    print("benchmarking pytorch on operator@" + operator)
    # TODO: move this into ragdoll.utils.get_gpu_device
    if device == "cpu":
        _device = torch.device("cpu")
    elif device == "gpu":
        assert (
            torch.cuda.is_available()
        ), "Selected gpu for benchmark, but not available"
        _device = torch.device("cuda:0")
    else:
        assert 0, "Unsupported device"

    if operator == "matmul":
        assert len(operands_shape) == 2
        lhs_data = np.random.randn(*operands_shape[0]).astype(np.float32)
        rhs_data = np.random.randn(*operands_shape[1]).astype(np.float32)
        lhs, rhs = [torch.from_numpy(i).to(_device)
                    for i in [lhs_data, rhs_data]]
        timer = benchmark.Timer(
            stmt="torch.matmul(lhs, rhs)", globals={"lhs": lhs, "rhs": rhs}
        )
    elif operator == "batch-matmul":
        assert len(operands_shape) == 2
        lhs_data = np.random.randn(*operands_shape[0]).astype(np.float32)
        rhs_data = np.random.randn(*operands_shape[1]).astype(np.float32)
        lhs, rhs = [torch.from_numpy(i).to(_device)
                    for i in [lhs_data, rhs_data]]
        timer = benchmark.Timer(
            stmt="torch.bmm(lhs, rhs)", globals={"lhs": lhs, "rhs": rhs}
        )
    else:
        # TODO: make this assert more reasonable, for unhandled ops
        assert 0, "To benchmark unknown operator"

    # run benchmarks by repetition time, organise measures in list
    results = []
    for i in range(measure_count):
        results += timer.timeit(repetitions).times

    # get rid of warmup period measures
    if warmups == 0:
        return results
    else:
        return results[:-warmups]


def tf_op_benchmark(
    operator, operands_shape, warmups=0, repetitions=1, measure_count=1, device="cpu"
):
    import tensorflow as tf
    print("benchmarking tensorflow on operator@" + operator)

    if device == "cpu":
        _device = tf.device("/CPU:0")
    elif device == "gpu" and tf.config.experimental.list_physical_devices("GPU"):
        _device = tf.device("/GPU:0")
    else:
        assert 0, "Unsupported device"

    if operator == "matmul":
        assert len(operands_shape) == 2
        with _device:
            lhs_data = tf.random.normal(operands_shape[0], dtype=tf.float32)
            rhs_data = tf.random.normal(operands_shape[1], dtype=tf.float32)

        def bench_func(lhs, rhs):
            with _device:
                return tf.matmul(lhs, rhs)

    else:
        assert 0, "Unsupported operator in tensorflow_benchmark"

    results = []
    for _ in range(measure_count):
        start_time = time.time()
        for _a in range(repetitions):
            bench_func(lhs_data, rhs_data)
        end_time = time.time()
        avg_time = end_time - start_time
        results.append(avg_time)
    if warmups == 0:
        return results
    else:
        return results[0:-warmups]


def ragdoll_op_benchmark(oppath_vmfb, operands_shape, warmups=0, repetitions=1, measure_count=1, device='cpu'):
    from ragdoll.utils import destringify, stringify_tensor

    if device == "cpu":
        _device = "local-task"
    elif device == "gpu":
        _device = "cuda"
    else:
        assert 0, "Unsupported device"

    config = iree.runtime.system_api.Config(_device)
    vmi = iree.runtime.VmInstance()
    with open(oppath_vmfb, 'rb') as file:
        binary_data = file.read()
    vmm = iree.runtime.VmModule.from_flatbuffer(vmi, binary_data)

    input_data = []
    for operand_shape in operands_shape:
        input_data.append(stringify_tensor(operand_shape))

    def bench_func():
        return iree.runtime.benchmark_module(
            vmm,
            entry_function="matmul",
            inputs=input_data,
            device=_device,
            batch_size=repetitions,
            benchmark_repetitions=measure_count,
            batch_concurrency=1,
            benchmark_min_time="1s",
            print_statistics=False
        )

    bench_result = bench_func()
    if measure_count > 1:
        forward_timecost = [destringify(measure.time, unit='s')
                            for measure in bench_result[0:measure_count]]
    else:
        forward_timecost = [destringify(bench_result[0].time, unit='s')]
    return forward_timecost


def ragdoll_model_benchmark(oppath_vmfb, entry_func, operands_shape, warmups=0, repetitions=1, measure_count=1, device='cpu'):
    from ragdoll.utils import destringify, stringify_tensor

    if device == "cpu":
        _device = "local-task"
    elif device == "gpu":
        _device = "cuda"
    else:
        assert 0, "Unsupported device"

    config = iree.runtime.system_api.Config(_device)
    vmi = iree.runtime.VmInstance()
    with open(oppath_vmfb, 'rb') as file:
        binary_data = file.read()
    vmm = iree.runtime.VmModule.from_flatbuffer(vmi, binary_data)

    input_data = []
    for operand_shape in operands_shape:
        print(operand_shape)
        input_data.append(stringify_tensor(operand_shape))
        print(input_data)

    def bench_func():
        return iree.runtime.benchmark_module(
            vmm,
            entry_function=entry_func,
            inputs=input_data,
            device=_device,
            batch_size=repetitions,
            benchmark_repetitions=measure_count,
            batch_concurrency=1,
            benchmark_min_time="1s",
            print_statistics=False
        )

    bench_result = bench_func()
    if measure_count > 1:
        forward_timecost = [destringify(measure.time, unit='ms')
                            for measure in bench_result[0:measure_count]]
    else:
        forward_timecost = [destringify(bench_result[0].time, unit='ms')]
    return forward_timecost
