from pathlib import Path
import subprocess
import iree
import iree.compiler
import iree.runtime

from ragdoll.utils import change_mlir_suffix

__all__ = ["compile", "compile_src_to_binary", "compile_file"]

COMPILE_EXE = "iree-compile"

# TOP LEVEL ENTRY FOR RAGDOLL COMPILER
# TODO(albert) replace compile_exe into system-found one
# TODO(albert): define a benchmark magic number, to elide API args, use a utils/magic
# TODO(albert): change all string options into ENUMS


def compile(code_file, device, compile_from, compile_to, debug=False, benchmark=False):
    # TODO(albert): currently only handle mlir file path as input, not ir str

    cmd_str = [COMPILE_EXE]
    cmd_str += [code_file]

    if debug:
        cmd_str += ["--mlir-print-ir-after-all"]

    if benchmark:
        # TODO(albert) use magic number, user does not need this mental burden
        cmd_str += ["--iree-hal-benchmark-dispatch-repeat-count=17"]

    # refactor this logic
    if device == "gpu":
        if compile_from == "input" and compile_to == "codegen":
            # TODO(albert): wire this with system detect api
            cmd_str += ["--iree-hal-target-backends=cuda"]
            cmd_str += ["--iree-hal-cuda-llvm-target-arch=sm_70"]
            target_path = change_mlir_suffix(code_file)
            cmd_str += ["-o", target_path]
            compile_result = subprocess.run(
                cmd_str, capture_output=True, text=True)
            return target_path
        elif compile_from == "input" and compile_to == "configurable":
            cmd_str += ["--iree-hal-target-backends=cuda"]
            cmd_str += ["--compile-to=executable-sources"]
            cmd_str += ["--iree-hal-cuda-llvm-target-arch=sm_86"]
            cmd_str += ["--iree-opt-const-eval=1"]
            cmd_str += ["--iree-opt-const-expr-hoisting=1"]
            cmd_str += ["--iree-opt-numeric-precision-reduction=1"]
            compile_result = subprocess.run(
                cmd_str, capture_output=True, text=True)
        elif compile_from == "configurable" and compile_to == "configured":
            cmd_str += [
                '--pass-pipeline="builtin.module(hal.executable(hal.executable.variant(iree-llvmgpu-select-lowering-strategy)))"']
            cmd_str += ["--compile-from=executable-sources"]
            cmd_str += ["--compile-to=executable-configurations"]
            cmd_str += ["--iree-codegen-llvmgpu-enable-transform-dialect-jit=1"]
            cmd_str += ["--iree-codegen-llvmgpu-enable-transform-dialect-matmul-tensorcore-strategy"]
            cmd_str += ["--iree-codegen-llvmgpu-enable-transform-dialect-small-matmul"]
            cmd_str += ["--iree-codegen-llvmgpu-enable-transform-dialect-aligned-matmul"]
            cmd_str += ["--td-matmul-strategy-blk-sizes=128,64,1"]
            cmd_str += ["--td-matmul-strategy-reduc-size=8"]
            cmd_str += ["--td-matmul-strategy-num-threads=32,2,1"]
            cmd_str += ["--td-matmul-strategy-num-warps=1,2,1"]
            cmd_str += ["--td-matmul-strategy-use-async-copies=false"]
            cmd_str += ["--td-matmul-strategy-use-mma-sync=true"]
            cmd_str += ["--td-matmul-strategy-pipeline-depth=3"]
            cmd_str += ["--iree-hal-target-backends=cuda"]
            cmd_str += ["--iree-hal-cuda-llvm-target-arch=sm_86"]
            compile_result = subprocess.run(
                cmd_str, capture_output=True, text=True)
        elif compile_from == "configured" and compile_to == "codegen":
            cmd_str += ["--compile-from=executable-configurations"]
            cmd_str += ["--iree-hal-target-backends=cuda"]
            cmd_str += ["--iree-hal-cuda-llvm-target-arch=sm_86"]
            target_path = change_mlir_suffix(code_file)
            cmd_str += ["-o", target_path]
            compile_result = subprocess.run(
                cmd_str, capture_output=True, text=True)
        else:
            assert 0, "TODO(albert), make compile stage flexible"
    elif device == "cpu":
        if compile_from == "input" and compile_to == "codegen":
            cmd_str += ["--iree-hal-target-backends=llvm-cpu"]
            cmd_str += ["--iree-llvmcpu-target-triple=x86_64-pc-linux-elf"]
            target_path = change_mlir_suffix(code_file)
            cmd_str += ["-o", target_path]
            compile_result = subprocess.run(
                cmd_str, capture_output=True, text=True)
            return target_path

        elif compile_from == "input" and compile_to == "configurable":
            cmd_str += ["--compile-from=input"]
            cmd_str += ["--compile-to=executable-sources"]
            cmd_str += ["--iree-hal-target-backends=llvm-cpu"]
            cmd_str += ["--iree-llvmcpu-target-triple=x86_64-pc-linux-elf"]
            cmd_str += ["--iree-opt-const-eval=1"]
            cmd_str += ["--iree-opt-const-expr-hoisting=1"]
            cmd_str += ["--iree-opt-numeric-precision-reduction=1"]
        elif compile_from == "configurable" and compile_to == "configured":
            cmd_str += ["--iree-hal-target-backends=llvm-cpu"]
            cmd_str += ["--iree-llvmcpu-target-triple=x86_64-pc-linux-elf"]
            cmd_str += [
                '--pass-pipeline="builtin.module(hal.executable(hal.executable.variant(iree-llvmcpu-select-lowering-strategy)))"']
            cmd_str += ["--compile-from=executable-sources"]
            cmd_str += ["--compile-to=executable-configurations"]
            cmd_str += ["--iree-codegen-llvmgpu-enable-transform-dialect-jit=0"]
            cmd_str += ["--iree-llvmcpu-target-cpu-features=host"]
            cmd_str += ["--iree-llvmcpu-enable-ukernels=all"]
            cmd_str += ["--iree-llvmcpu-slp-vectorization=1"]
            cmd_str += ["--iree-llvmcpu-number-of-threads=48"]
            cmd_str += ["--iree-llvmcpu-distribution-size=96"]
        elif compile_from == "configured" and compile_to == "codegen":
            cmd_str += ["--iree-hal-target-backends=llvm-cpu"]
            cmd_str += ["--compile-from=executable-configurations"]
            cmd_str += ["--iree-hal-target-backends=cuda"]
            cmd_str += ["--iree-hal-cuda-llvm-target-arch=sm_86"]
            cmd_str += ["--iree-llvmcpu-target-cpu-features=host"]
            target_path = change_mlir_suffix(code_file)
            cmd_str += ["-o", target_path]
        else:
            assert 0, "TODO(albert), make compile stage flexible"
    else:
        assert 0, "Unsupported device"


def compile_src_to_binary(mlir):
    binary_data = iree.compiler.compile_str(
        mlir, input_type="tosa", target_backends=["llvm-cpu"],
        extra_args=[
            "--iree-llvmcpu-target-cpu-features=host",
            "--iree-stream-partitioning-favor=max-concurrency",
            "--iree-flow-zero-fill-empty-tensors",
            "--iree-llvmcpu-fail-on-out-of-bounds-stack-allocation=0",
            "--iree-opt-const-eval",
            "--iree-opt-const-expr-hoisting",
            "--iree-opt-numeric-precision-reduction",
            "--iree-opt-strip-assertions"
        ]
    )
    print(mlir)
    assert (0)
    return binary_data


def compile_file(filename):
    with open(filename) as f:
        return compile_str(f.read())
