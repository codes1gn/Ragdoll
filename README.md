# An MLIR boilerplate github-template with my personal flavour

This repository contains a github-template for boilerplating MLIR infrastructure.
Alongside with the very basic standalone build given in MLIR reference example, this boilerplate is featured by:
* Full support of system-installed toolchain: llvm, mlir, lit, filecheck, etc...
* The folder organisation is tuned and ready for C++/PYTHON mix project develop
* The folder organisation is readible for full-featured compiler arch, with dialect, transforms, conversions, pipeline all follow LLVM convention.
* Optimised cmake modules to allow more specialised code maintainance.
* WIP: putting segmented parts for cpp/python/jupyter tests and demos
* WIP: enhancing docs to support both MLIR-style docs system and Rust-style docs

## How to build

This setup assumes that you have built LLVM and MLIR in `$MLIR_BUILD_DIR` and installed them to `$MLIR_INSTALL_DIR`. To build and launch the tests, run
```sh
mkdir build && cd build
cmake -G Ninja -S $SOURCE_DIR \
    -DMLIR_DIR=$MLIR_INSTALL_DIR/lib/cmake/mlir \
    -DLLVM_INSTALL_UTILS=ON \
    -DLLVM_EXTERNAL_LIT=$(which lit)
cmake --build . --target check-ragdoll
```
where <ragdoll> is the nickname of basic module.

To build the documentation from the TableGen description of the dialect
operations, run
```sh
cmake --build . --target mlir-doc
```
## Acknowledgement
This template is adjusted from https://github.com/jmgorius/mlir-standalone-template, with my personal flavour.
