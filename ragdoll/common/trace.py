import sys
import inspect

# Global variable to control whether trace mode is enabled
TRACE_ENABLED = False
DEBUG_ENABLED = False

def enable_trace():
    """Enable trace mode"""
    global TRACE_ENABLED
    TRACE_ENABLED = True

def disable_trace():
    """Disable trace mode"""
    global TRACE_ENABLED
    TRACE_ENABLED = False

def enable_debug():
    """Enable trace mode"""
    global DEBUG_ENABLED
    DEBUG_ENABLED = True

def disable_debug():
    """Disable trace mode"""
    global DEBUG_ENABLED
    DEBUG_ENABLED = False

def TRACE_INFO(message: str):
    """Output TRACE information to stdout"""
    if TRACE_ENABLED:
        frame = inspect.currentframe().f_back  # Get the calling frame
        filename = frame.f_code.co_filename  # Get the filename
        line_no = frame.f_lineno  # Get the line number
        func_name = frame.f_code.co_name  # Get the function name

        # Print the information in a readable format with filename, line number, and function name
        print(f"[TRACE] {filename}:{line_no} - {func_name}: {message}")

def TRACE_DEBUG(message: str):
    """Output TRACE information to stdout"""
    if DEBUG_ENABLED:
        frame = inspect.currentframe().f_back  # Get the calling frame
        filename = frame.f_code.co_filename  # Get the filename
        line_no = frame.f_lineno  # Get the line number
        func_name = frame.f_code.co_name  # Get the function name

        # Print the information in a readable format with filename, line number, and function name
        print(f"[DEBUG] {filename}:{line_no} - {func_name}: {message}")

