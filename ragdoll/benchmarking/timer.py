import timeit
import torch
import numpy as np
from enum import Enum

class TimerType(Enum):
    PY_TIMER = "py_timer"
    PYTORCH_TIMER = "pytorch_timer"
    IREE_TIMER = "iree_timer"  # 假设将来可能支持 IREE 计时器

class TimerBase:
    """Base class for Timer implementations with statistical features."""

    def __init__(self, repeat_samples=10, warmup_samples=2):
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

    def mean_time(self) -> float:
        return np.mean(self.times)

    def median_time(self) -> float:
        return np.median(self.times)

    def min_time(self) -> float:
        return np.min(self.times)

    def max_time(self) -> float:
        return np.max(self.times)

    def std_dev(self) -> float:
        return np.std(self.times, ddof=1)

    def confidence_interval(self, confidence=0.95) -> tuple:
        """Calculate the confidence interval of the recorded times."""
        n = len(self.times)
        if n < 2:
            return (self.mean_time(), self.mean_time())
        
        mean = self.mean_time()
        std_err = self.std_dev() / np.sqrt(n)
        h = std_err * 1.96  # For 95% confidence level
        return mean - h, mean + h

    def run_summary(self) -> dict:
        """Generate a summary of the run statistics."""
        return {
            "mean_time": self.mean_time(),
            "median_time": self.median_time(),
            "min_time": self.min_time(),
            "max_time": self.max_time(),
            "std_dev": self.std_dev(),
            "confidence_interval": self.confidence_interval(),
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

    def observe(self):
        raise NotImplementedError("IREE timer is not implemented yet")

class TimerFactory:
    @staticmethod
    def create_timer(timer_type: TimerType, repeat_samples=10, warmup_samples=2) -> TimerBase:
        """Factory method to create a timer based on the given TimerType."""
        if timer_type == TimerType.PY_TIMER:
            return PyTimer(repeat_samples, warmup_samples)
        elif timer_type == TimerType.PYTORCH_TIMER:
            return PyTorchTimer(repeat_samples, warmup_samples)
        elif timer_type == TimerType.IREE_TIMER:
            return IREETimer(repeat_samples, warmup_samples)
        else:
            raise ValueError(f"Unsupported Timer type: {timer_type}")

class TimerBuilder:
    """Builds a Timer instance based on a string keyword, with a default to PyTimer."""

    _keyword_to_timer_type = {
        "py_timer": TimerType.PY_TIMER,
        "python": TimerType.PY_TIMER,
        "pytorch_timer": TimerType.PYTORCH_TIMER,
        "torch": TimerType.PYTORCH_TIMER,
        "iree_timer": TimerType.IREE_TIMER,
        "iree": TimerType.IREE_TIMER
    }

    @staticmethod
    def create_timer(keyword: str, repeat_samples=10, warmup_samples=2) -> TimerBase:
        """Creates a Timer based on a string keyword, defaults to PyTimer if unknown.
        
        Args:
            keyword (str): The keyword to specify which Timer to create.
            repeat_samples (int): Number of repeat samples for timing.
            warmup_samples (int): Number of warmup runs before timing.
        
        Returns:
            TimerBase: An instance of a Timer subclass.
        """
        timer_type = TimerBuilder._keyword_to_timer_type.get(keyword.lower(), TimerType.PY_TIMER)
        return TimerFactory.create_timer(timer_type, repeat_samples, warmup_samples)

