#!/bin/bash
# build ragdoll with system-installed llvm-18
# you can adjust this dep as you need

SCRIPT_DIR=`dirname $0`
RAGDOLL_SOURCE_DIR=`realpath $SCRIPT_DIR"/.."`
MLIR_INSTALL_DIR="/usr/lib/llvm-18"
RAGDOLL_BUILD_DIR=$RAGDOLL_SOURCE_DIR"/build"

mkdir -p $RAGDOLL_BUILD_DIR
cd $RAGDOLL_BUILD_DIR

cmake -S $RAGDOLL_SOURCE_DIR \
  -G Ninja \
  -DMLIR_DIR=$MLIR_INSTALL_DIR/lib/cmake/mlir/ \
  -DLLVM_DIR=$MLIR_INSTALL_DIR/lib/cmake/llvm/ \
  -DLLVM_EXTERNAL_LIT=$(which lit) \
  -DCMAKE_BUILD_TYPE=RelWithDebInfo \
  -DCMAKE_INSTALL_PREFIX=$RAGDOLL_BUILD_DIR \
  -DCMAKE_C_COMPILER=gcc \
  -DCMAKE_CXX_COMPILER=g++
  # ERROR: cannot build with clang, -lstdc++ not found
  # -DCMAKE_C_COMPILER=clang \
  # -DCMAKE_CXX_COMPILER=clang++ \
  # -DLLVM_ENABLE_LLD=ON

ninja
