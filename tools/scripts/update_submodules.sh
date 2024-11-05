#!/bin/bash

set -x

SCRIPT_DIR=`dirname $0`
WORKSPACE_DIR=`realpath $SCRIPT_DIR"/../.."`


MLIR_NAME="ragdoll-llvm-project"
IREE_NAME="ragdoll-codegen"
MLIR_FOR_IREE="llvm-project"
git clone git@git.enflame.cn:heng.shi/ragdoll-llvm-projects.git third_party/$MLIR_NAME
git clone git@git.enflame.cn:heng.shi/ragdoll-llvm-projects.git third_party/$MLIR_FOR_IREE
git submodule update --init -- third_party/$MLIR_NAME
cd third_party/$MLIR_FOR_IREE && git submodule update --init && cd $WORKSPACE_DIR

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

