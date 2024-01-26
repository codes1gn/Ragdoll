get_property(dialect_libs GLOBAL PROPERTY MLIR_DIALECT_LIBS)
get_property(conversion_libs GLOBAL PROPERTY MLIR_CONVERSION_LIBS)

set(LIBS
        ${dialect_libs}
        ${conversion_libs}
        MLIROptLib
        RagdollIR
        RagdollPipeline
        )
add_llvm_executable(ragdoll-opt ragdoll-opt.cpp)

llvm_update_compile_flags(ragdoll-opt)

# add ragdoll-src/include/Dialect INTO header search path
target_include_directories(
        ragdoll-opt 
        PRIVATE
        ${PROJECT_SOURCE_DIR}/ragdoll-src/include/Dialect
        )
target_link_libraries(ragdoll-opt 
        PRIVATE 
        ${LIBS}
        )
