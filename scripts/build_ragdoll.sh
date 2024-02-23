#!/bin/bash
# build ragdoll with system-installed llvm-18
# you can adjust this dep as you need

SCRIPT_DIR=`dirname $0`
RAGDOLL_SOURCE_DIR=`realpath $SCRIPT_DIR"/.."`
CODEGEN_INSTALL_DIR=$RAGDOLL_SOURCE_DIR"/codegen_tools_install/"
CODEGEN_BUILD_DIR=$RAGDOLL_SOURCE_DIR"/codegen_tools_build"
RAGDOLL_BUILD_DIR=$RAGDOLL_SOURCE_DIR"/build"

mkdir -p $RAGDOLL_BUILD_DIR
cd $RAGDOLL_BUILD_DIR

cmake -S $RAGDOLL_SOURCE_DIR \
  -G Ninja \
  -DMLIR_DIR=$CODEGEN_BUILD_DIR/mlir/lib/cmake/mlir/ \
  -DLLVM_DIR=$CODEGEN_BUILD_DIR/llvm/lib/cmake/llvm/ \
  -DCMAKE_BUILD_TYPE=MinSizeRel \
  -DCMAKE_INSTALL_PREFIX=$RAGDOLL_BUILD_DIR \
  -DCMAKE_C_COMPILER=gcc \
  -DCMAKE_CXX_COMPILER=g++
  # ERROR: cannot build with clang, -lstdc++ not found
  # -DLLVM_EXTERNAL_LIT=$(which lit) \
  # -DCMAKE_C_COMPILER=clang \
  # -DCMAKE_CXX_COMPILER=clang++ \
  # -DLLVM_ENABLE_LLD=ON

# ninja RagdollUtils
# ninja RagdollAutodiffAdjointInterface
# ninja RagdollAutodiffBackwardInterface
# ninja RagdollAutodiffBackwardSourceInterface
# ninja RagdollConversion
# ninja RagdollOptimisation
ninja 
