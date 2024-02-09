#!/bin/bash
#
set -x

SCRIPT_DIR=`dirname $0`
WORKSPACE_DIR=`realpath $SCRIPT_DIR"/.."`

MLIR_NAME="ragdoll-llvm-project"
IREE_NAME="ragdoll-codegen"
git submodule update --init -- third_party/$MLIR_NAME
git submodule update --init -- third_party/$IREE_NAME

MLIR_SOURCE_DIR=$WORKSPACE_DIR"/third_party/$MLIR_NAME/llvm"
IREE_SOURCE_DIR=$WORKSPACE_DIR"/third_party/$IREE_NAME"
# IREE_BUILD_DIR=$WORKSPACE_DIR"/codegen_tools_build"
cd $IREE_SOURCE_DIR
git submodule update --init -- third_party/googletest
git submodule update --init -- third_party/vulkan_headers
git submodule update --init -- third_party/pybind11
git submodule update --init -- third_party/benchmark
git submodule update --init -- third_party/tracy
git submodule update --init -- third_party/flatcc
git submodule update --init -- third_party/spirv_cross
git submodule update --init -- third_party/cpuinfo
git submodule update --init -- third_party/webgpu-headers
git submodule update --init -- third_party/musl
git submodule update --init -- third_party/stablehlo
git submodule update --init -- third_party/torch-mlir
git submodule update --init -- third_party/hip-build-deps

# LEGACY bundled build, now we use installed build for flexibility
#
# cd $WORKSPACE_DIR
# mkdir -p $IREE_BUILD_DIR
#
# # build iree
# cd $IREE_BUILD_DIR 
# cmake -G Ninja \
#     -S $IREE_SOURCE_DIR \
#     -B $IREE_BUILD_DIR \
#     -DCMAKE_C_COMPILER=$(which gcc) \
#     -DCMAKE_CXX_COMPILER=$(which g++) \
#     -DCMAKE_CUDA_COMPILER=$(which nvcc) \
#     -DCMAKE_BUILD_TYPE=MinSizeRel \
#     -DIREE_ENABLE_ASSERTIONS=OFF \
#     -DCMAKE_C_COMPILER_LAUNCHER=ccache \
#     -DCMAKE_CXX_COMPILER_LAUNCHER=ccache
#
#
# # build mlir and install
# cmake --build $IREE_BUILD_DIR

