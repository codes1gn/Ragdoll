# Ragdoll = Generative Language for Domain-specific Computing with Automatic Optimisations

Domain-specific computing focuses on developing computational tools and techniques tailored for specific fields or applications, such as bioinformatics, finance, or image processing. This specialization enables more efficient and effective solutions to complex, domain-specific problems. However, the power of domain-specific computing is significantly enhanced by leveraging generalized techniques. For instance, probabilistic programming allows for flexible modeling of uncertainty, which is a common aspect across many fields. It enables domain experts to build complex statistical models without delving into the intricacies of underlying algorithms. Automatic differentiation, another versatile technique, streamlines the computation of gradients, which are crucial in optimization problems prevalent in various domains, from machine learning to engineering design. Reversible transformations offer efficient memory use in simulations, which is beneficial in fields like physics or chemistry simulations. These general techniques not only provide a robust foundation for building domain-specific tools but also facilitate cross-domain knowledge transfer, enhancing innovation and efficiency in specialized computing tasks. Thus, the synergy between domain-specific focus and general-purpose computational techniques leads to a more powerful and versatile technology landscape.

We hereby present Ragdoll, representing the Generative Language for Domain-specific Computing with Automatic Optimisations, which builds domain-specific languages atop of generalised computing paradigms, include AutoDiff, ProbProgramming, Automatic Reversible Transformations, and so on. In general, Ragdoll is featured with: 
* AutoDiff:
* Probablistic Pogramming: 
* Automatic Reversible Transformations:
* Automatic Fusion:
* Cache Reuse Optimisations:
* High abstraction level symbolic optimisations:
* Leverage the kernel generation with IREE system

## How to build from source (with customised settings)

This setup assumes that you have built LLVM and MLIR in `$MLIR_BUILD_DIR` and installed them to `$MLIR_INSTALL_DIR`. To build and launch the tests, run
```sh
mkdir build && cd build
cmake -G Ninja -S $SOURCE_DIR \
    -DMLIR_DIR=$MLIR_INSTALL_DIR/lib/cmake/mlir \
    -DLLVM_INSTALL_UTILS=ON \
    -DLLVM_EXTERNAL_LIT=$(which lit)
cmake --build . --target check-ragdoll
```
You can further customise Ragdoll build process with following CMAKE options:
* CMAKE_xxx
* TODO: add more desc

To build the documentation from the TableGen description of the dialect
operations, run
```sh
cmake --build . --target mlir-doc
```
