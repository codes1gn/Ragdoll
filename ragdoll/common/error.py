def unreachable(message: str = ""):
    """Raises an exception with a custom message to indicate that the code should never be reached."""
    raise RuntimeError(f"This code should never be reached: {message}")

