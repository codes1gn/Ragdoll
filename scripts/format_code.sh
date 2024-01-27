#!/bin/bash
# build ragdoll with system-installed llvm-18
# you can adjust this dep as you need

SCRIPT_DIR=`dirname $0`
RAGDOLL_SOURCE_DIR=`realpath $SCRIPT_DIR"/.."`
MLIR_INSTALL_DIR="/usr/lib/llvm-18"
RAGDOLL_BUILD_DIR=$RAGDOLL_SOURCE_DIR"/build"

cd $RAGDOLL_BUILD_DIR

ninja format-code
