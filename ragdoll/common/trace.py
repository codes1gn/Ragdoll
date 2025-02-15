import sys
import inspect
import traceback


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

def TRACE(message: str):
    """Output TRACE information to stdout"""
    if TRACE_ENABLED:
        frame = inspect.currentframe().f_back  # Get the calling frame
        filename = frame.f_code.co_filename  # Get the filename
        line_no = frame.f_lineno  # Get the line number
        func_name = frame.f_code.co_name  # Get the function name

        # Print the information in a readable format with filename, line number, and function name
        print(f"[TRACE] {filename}:{line_no} - {func_name}: {message}")

def DEBUG(message: str):
    """Output TRACE information to stdout"""
    if DEBUG_ENABLED:
        frame = inspect.currentframe().f_back  # Get the calling frame
        filename = frame.f_code.co_filename  # Get the filename
        line_no = frame.f_lineno  # Get the line number
        func_name = frame.f_code.co_name  # Get the function name

        # Print the information in a readable format with filename, line number, and function name
        print(f"[DEBUG] {filename}:{line_no} - {func_name}: {message}")


# shortcut method to debug during dev
def DEV():
    # 获取当前的调用栈
    stack = inspect.stack()

    # 获取当前的文件名、行号和方法名
    current_frame = stack[1]  # 获取调用 debug() 方法的帧（当前帧）
    file_name = current_frame.filename
    line_number = current_frame.lineno
    method_name = current_frame.function

    # 打印当前文件、行号、方法名和调用栈信息
    print(f"Debug Info:")
    print(f"File: {file_name}")
    print(f"Line: {line_number}")
    print(f"Method: {method_name}")
    print(f"Call Stack:")
    for frame in stack:
        print(f"  {frame.filename}({frame.lineno}): {frame.function}")
    print("Aborting the program...")
    sys.exit(1)

