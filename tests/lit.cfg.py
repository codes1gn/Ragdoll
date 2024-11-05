# -*- Python -*-

import os
import platform
import re
import subprocess
import tempfile

import lit.formats
import lit.util

from lit.llvm import llvm_config
# from dotenv import load_dotenv
from lit.llvm.subst import ToolSubst
from lit.llvm.subst import FindTool

# Configuration file for the 'lit' test runner.

# name: The name of this test suite.
config.name = 'RAGDOLL'


# 定义两种不同的测试格式：.mlir文件用ShTest，.py文件用自定义的PyTest格式
config.test_format = lit.formats.ShTest(not llvm_config.use_lit_shell)

# 处理不同的文件后缀
config.suffixes = ['.mlir', '.py']

# test_source_root: The root path where tests are located.
config.test_source_root = os.path.dirname(__file__)
script_file = os.path.abspath(os.path.join(config.test_source_root, "../tools/config-miscs/.env"))

# test_exec_root: The root path where tests should be run.
config.test_exec_root = os.path.join(config.ragdoll_obj_root, 'tests')

config.substitutions.append(('%PATH%', config.environment['PATH']))
config.substitutions.append(('%env_script', script_file))

llvm_config.with_system_environment(
    ['HOME', 'INCLUDE', 'LIB', 'TMP', 'TEMP'])

llvm_config.use_default_substitutions()

# excludes: A list of directories to exclude from the testsuite. The 'Inputs'
# subdirectories contain auxiliary inputs for various tests in their parent
# directories.
config.excludes = ['Inputs', 'Examples', 'CMakeLists.txt', 'README.txt', 'LICENSE.txt', 'lit.cfg.py']

# test_exec_root: The root path where tests should be run.
config.test_exec_root = os.path.join(config.ragdoll_obj_root, 'tests')
config.ragdoll_tools_dir = os.path.join(config.ragdoll_obj_root, 'bin')

# Tweak the PATH to include the tools dir.
llvm_config.with_environment('PATH', config.llvm_tools_dir, append_path=True)

tool_dirs = [config.ragdoll_tools_dir, config.llvm_tools_dir]
tools = [
    'ragdoll-opt'
]

llvm_config.add_tool_substitutions(tools, tool_dirs)

# dotenv_path = os.path.join(config.test_source_root, '../.env')
# if os.path.exists(dotenv_path):
#     load_dotenv(dotenv_path)

pytest_script = os.path.join(config.test_source_root, "run_pytest.sh")
config.substitutions.append(("%run_pytest", pytest_script))
