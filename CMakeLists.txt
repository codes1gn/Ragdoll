cmake_minimum_required(VERSION 3.13.4)
project(RagDoll LANGUAGES CXX C)

# add_compile_options("-Ofast")

set(CMAKE_BUILD_WITH_INSTALL_NAME_DIR ON)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 20 CACHE STRING "C++ standard to conform to")

# configure llvm, mlir and lld path for later compilation
find_package(MLIR REQUIRED CONFIG)
find_package(LLVM REQUIRED CONFIG)
# find_package(LLD REQUIRED CONFIG)

message(STATUS "Using MLIRConfig.cmake in: ${MLIR_DIR}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")
# message(STATUS "Using LLDConfig.cmake in: ${LLD_DIR}")

# import MLIR/LLVM cmake modules with defined cmake functions
# import project customised cmake functions
list(APPEND CMAKE_MODULE_PATH "${MLIR_CMAKE_DIR}")
list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")
list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake_modules")
include(TableGen)
include(AddLLVM)
include(AddMLIR)
include(HandleLLVMOptions)
include(AddRagDoll)

# config build path
set(LLVM_RUNTIME_OUTPUT_INTDIR ${CMAKE_BINARY_DIR}/bin)
set(LLVM_LIBRARY_OUTPUT_INTDIR ${CMAKE_BINARY_DIR}/lib)
set(MLIR_BINARY_DIR ${CMAKE_BINARY_DIR})

# config lit args
set(LLVM_LIT_ARGS "-sv" CACHE STRING "Default options for lit")


include_directories(${LLVM_INCLUDE_DIRS})
include_directories(${MLIR_INCLUDE_DIRS})
include_directories(${PROJECT_SOURCE_DIR}/ragdoll-src/include)
include_directories(${PROJECT_BINARY_DIR}/ragdoll-src/include)
link_directories(${LLVM_BUILD_LIBRARY_DIR})
add_definitions(${LLVM_DEFINITIONS})


add_subdirectory(ragdoll-src)
add_subdirectory(tests)




# ==============================================================
# ==   house-keeping code
# ==============================================================

# config clang-format target
file(GLOB_RECURSE ALL_SOURCE_FILES 
	${CMAKE_SOURCE_DIR}/ragdoll-src/*.cpp 
	${CMAKE_SOURCE_DIR}/ragdoll-src/*.h)

# Define CMAKE target for invoking clang-format
add_custom_command(
    OUTPUT clang_format_check_only
    COMMAND clang-format
    ARGS --dry-run -Werror ${ALL_SOURCE_FILES}
    COMMENT "Running clang-format"
    VERBATIM
)

add_custom_command(
    OUTPUT clang_format_and_revise
    COMMAND clang-format
    ARGS -i -Werror ${ALL_SOURCE_FILES}
    COMMENT "Running clang-format"
    VERBATIM
)

add_custom_target(
    format-code
    DEPENDS clang_format_and_revise
)

add_custom_target(
    check-code-format 
    DEPENDS clang_format_check_only
)
