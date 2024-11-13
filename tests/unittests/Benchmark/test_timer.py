# RUN: python -m pytest -q --tb=short %s

import pytest
import torch
import numpy as np
from ragdoll.benchmark.timer import *

def dummy_function():
    """A simple dummy function that simulates workload."""
    for _ in range(10000):
        pass

def one_pos_function(inp0):
    """A simple dummy function that simulates workload."""
    for _ in range(10000):
        pass

@pytest.mark.parametrize("timer_type, repeat_samples, warmup_samples", [
    (TimerType.PYTHON, 10, 3),
    (TimerType.TORCH, 10, 3) if torch.cuda.is_available() else pytest.param("pytorch_timer", 10, 3, marks=pytest.mark.skip(reason="CUDA not available"))
])
def test_timer(timer_type, repeat_samples, warmup_samples):
    """
    Test the Timer's functionality by running a dummy function and validating statistics.
    
    Args:
        timer_type (str): Type of the timer to use, e.g., 'py_timer', 'pytorch_timer'.
        repeat_samples (int): Number of repeat samples for timing.
        warmup_samples (int): Number of warmup runs before timing.
    """
    # 创建 Timer 实例
    _timer = TimerBuilder.build(timer_type, repeat_samples=repeat_samples, warmup_samples=warmup_samples)

    # 运行计时测试
    _timer.run(dummy_function)

    # 获取统计数据
    summary = _timer.summary()

    # 输出统计数据（方便调试）
    print(f"Testing Timer: {timer_type}")
    print("Run Summary:")
    print(f"Mean time      : {summary['mean_time']:.6f} seconds")
    print(f"Median time    : {summary['median_time']:.6f} seconds")
    print(f"Min time       : {summary['min_time']:.6f} seconds")
    print(f"Max time       : {summary['max_time']:.6f} seconds")
    print(f"Standard Dev   : {summary['std_dev']:.6f} seconds")
    print(f"Confidence Interval (95%): {summary['confidence_interval']}")
    print(f"Number of Samples: {summary['samples']}")

    # 使用 pytest 的 assert 验证结果是否合理
    assert summary['samples'] == repeat_samples, "Sample count does not match repeat_samples"
    assert summary['min_time'] <= summary['mean_time'] <= summary['max_time'], "Mean should be between min and max"
    assert summary['confidence_interval'][0] <= summary['mean_time'] <= summary['confidence_interval'][1], \
        "Mean should be within the confidence interval"


@pytest.mark.parametrize("timer_type, repeat_samples, warmup_samples", [
    (TimerType.PYTHON, 10, 3),
    (TimerType.TORCH, 10, 3) if torch.cuda.is_available() else pytest.param("pytorch_timer", 10, 3, marks=pytest.mark.skip(reason="CUDA not available"))
])
def test_timer_one_arg(timer_type, repeat_samples, warmup_samples):
    """
    Test the Timer's functionality by running a dummy function and validating statistics.
    
    Args:
        timer_type (str): Type of the timer to use, e.g., 'py_timer', 'pytorch_timer'.
        repeat_samples (int): Number of repeat samples for timing.
        warmup_samples (int): Number of warmup runs before timing.
    """
    # 创建 Timer 实例
    _timer = TimerBuilder.build(timer_type, repeat_samples=repeat_samples, warmup_samples=warmup_samples)

    # 运行计时测试
    _timer.run(one_pos_function, 0)

    # 获取统计数据
    summary = _timer.summary()

    # 输出统计数据（方便调试）
    print(f"Testing Timer: {timer_type}")
    print("Run Summary:")
    print(f"Mean time      : {summary['mean_time']:.6f} seconds")
    print(f"Median time    : {summary['median_time']:.6f} seconds")
    print(f"Min time       : {summary['min_time']:.6f} seconds")
    print(f"Max time       : {summary['max_time']:.6f} seconds")
    print(f"Standard Dev   : {summary['std_dev']:.6f} seconds")
    print(f"Confidence Interval (95%): {summary['confidence_interval']}")
    print(f"Number of Samples: {summary['samples']}")

    # 使用 pytest 的 assert 验证结果是否合理
    assert summary['samples'] == repeat_samples, "Sample count does not match repeat_samples"
    assert summary['min_time'] <= summary['mean_time'] <= summary['max_time'], "Mean should be between min and max"
    assert summary['confidence_interval'][0] <= summary['mean_time'] <= summary['confidence_interval'][1], \
        "Mean should be within the confidence interval"

