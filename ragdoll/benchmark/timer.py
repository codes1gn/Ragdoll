import timeit
import torch
import numpy as np
from enum import Enum

from ragdoll.common import * 

class TimerBase:
    """Base class for Timer implementations with statistical features."""

    def __init__(self, repeat_samples=10, warmup_samples=2):
        TRACE_INFO("Create Timer")
        self.repeat_samples = repeat_samples
        self.warmup_samples = warmup_samples
        self.times = []
        self.start_time = 0.0
        self.end_time = 0.0

    def observe(self) -> float:
        """Return the current observed time. To be implemented by subclasses."""
        raise NotImplementedError

    def start(self):
        self.start_time = self.observe()

    def stop(self):
        self.end_time = self.observe()
        elapsed = self.end_time - self.start_time
        self.times.append(elapsed)

    def elapsed_time(self) -> float:
        return self.times[-1] if self.times else 0.0

    def run(self, func, *args, **kwargs):
        """Run a function with the specified number of warmups and repeats, recording time."""
        # Warm-up phase
        for _ in range(self.warmup_samples):
            func(*args, **kwargs)
        
        # Repeat phase
        self.times = []
        for _ in range(self.repeat_samples):
            self.start()
            func(*args, **kwargs)
            self.stop()
        return self

    def convert_unit(self, time, unit):
        """Convert time to the specified unit."""
        if unit == 'ms':
            return time * 1000
        elif unit == 'us':
            return time * 1_000_000
        elif unit == 'sec':
            return time
        else:
            raise ValueError("Unsupported unit. Use 'sec', 'ms', or 'us'.")

    def mean_time(self, unit='sec'):
        return self.convert_unit(np.mean(self.times), unit)

    def median_time(self, unit='sec'):
        return self.convert_unit(np.median(self.times), unit)

    def min_time(self, unit='sec'):
        return self.convert_unit(np.min(self.times), unit)

    def max_time(self, unit='sec'):
        return self.convert_unit(np.max(self.times), unit)

    def std_dev(self, unit='sec'):
        return self.convert_unit(np.std(self.times, ddof=1), unit)

    def confidence_interval(self, confidence=0.95, unit='sec'):
        """Calculate the confidence interval of the recorded times."""
        n = len(self.times)
        if n < 2:
            return (self.convert_unit(self.mean_time(unit), unit), self.convert_unit(self.mean_time(unit), unit))

        mean = self.mean_time(unit)
        std_err = self.std_dev(unit) / np.sqrt(n)
        h = std_err * 1.96  # For 95% confidence level
        return (mean - h, mean + h)

    def summary(self, unit='sec'):
        """Generate a summary of the run statistics."""
        return {
            "mean_time": self.mean_time(unit),
            "median_time": self.median_time(unit),
            "min_time": self.min_time(unit),
            "max_time": self.max_time(unit),
            "std_dev": self.std_dev(unit),
            "confidence_interval": self.confidence_interval(unit),
            "samples": len(self.times),
        }

class PyTimer(TimerBase):
    """Python's timer using timeit.default_timer() with statistics."""

    def observe(self) -> float:
        return timeit.default_timer()

class PyTorchTimer(TimerBase):
    """Timer using PyTorch's cuda event-based timing, suitable for GPU operations."""

    def __init__(self, repeat_samples=10, warmup_samples=2):
        super().__init__(repeat_samples, warmup_samples)
        self.start_event = torch.cuda.Event(enable_timing=True)
        self.end_event = torch.cuda.Event(enable_timing=True)

    def start(self):
        self.start_event.record()

    def stop(self):
        self.end_event.record()
        torch.cuda.synchronize()  # Ensures events are complete
        elapsed = self.start_event.elapsed_time(self.end_event) / 1000  # Convert to seconds
        self.times.append(elapsed)

    def observe(self) -> float:
        """In PyTorchTimer, observe is not used directly, as start/stop are overridden."""
        return 0.0  # Placeholder, not used in this class

# Placeholder for IREE timer - you can implement this when IREE is available
class IREETimer(TimerBase):
    """Placeholder Timer for IREE framework timing (not implemented)."""
    def __init__(self, repeat_samples, warmup_samples):
        pass

    def observe(self):
        raise NotImplementedError("IREE timer is not implemented yet")

class TensorFlowTimer(TimerBase):
    """Placeholder Timer for TF framework timing (not implemented)."""
    def __init__(self, repeat_samples, warmup_samples):
        pass

    def observe(self):
        raise NotImplementedError("IREE timer is not implemented yet")

class TVMTimer(TimerBase):
    """Placeholder Timer for TVM framework timing (not implemented)."""
    def __init__(self, repeat_samples, warmup_samples):
        pass

    def observe(self):
        raise NotImplementedError("IREE timer is not implemented yet")


class TimerFactory:
    @staticmethod
    def create_timer(timer_type: TimerType, repeat_samples=10, warmup_samples=2) -> TimerBase:
        """Factory method to create a timer based on the given TimerType."""
        if timer_type == TimerType.PYTHON:
            return PyTimer(repeat_samples, warmup_samples)
        elif timer_type == TimerType.TORCH:
            return PyTorchTimer(repeat_samples, warmup_samples)
        elif timer_type == TimerType.TENSORFLOW:
            return TensorFlowTimer(repeat_samples, warmup_samples)
        elif timer_type == TimerType.IREE:
            return IREETimer(repeat_samples, warmup_samples)
        elif timer_type == TimerType.TVM:
            return TVMTimer(repeat_samples, warmup_samples)
        else:
            raise ValueError(f"Unsupported Timer type: {timer_type}")


class TimerBuilder:
    """Builds a Timer instance based on a TimerType enum, with a default to PyTimer."""

    @staticmethod
    def build(timer_type: TimerType, repeat_samples=10, warmup_samples=2) -> TimerBase:
        """Creates a Timer based on the TimerType enum.

        Args:
            timer_type (TimerType): The TimerType enum to specify which Timer to create.
            repeat_samples (int): Number of repeat samples for timing.
            warmup_samples (int): Number of warmup runs before timing.

        Returns:
            TimerBase: An instance of a Timer subclass.
        """
        return TimerFactory.create_timer(timer_type, repeat_samples, warmup_samples)
