cmake_minimum_required(VERSION 3.11)

include(FetchContent)

set(FETCHCONTENT_UPDATES_DISCONNECTED TRUE)

# --- Fetch matx --------------------------------------------------------------

FetchContent_Declare(matx
  GIT_REPOSITORY https://github.com/NVIDIA/MatX.git
  GIT_TAG main
)

FetchContent_GetProperties(matx)
if(NOT matx_POPULATED)
  FetchContent_Populate(matx)
  add_subdirectory(${matx_SOURCE_DIR} ${matx_BINARY_DIR} EXCLUDE_FROM_ALL)
endif()

# -----------------------------------------------------------------------------

project(test
  LANGUAGES CXX CUDA
)

if (NOT CMAKE_CXX_COMPILER)
  set(CMAKE_CXX_COMPILER "/usr/bin/g++")
endif()

set(CMAKE_CUDA_COMPILER /opt/nvidia/hpc_sdk/Linux_x86_64/24.11/compilers/bin/nvcc)

set(CMAKE_CUDA_ARCHITECTURES 75)

# Optimization flags
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3 -ftree-vectorize -march=native")
set(CMAKE_CUDA_FLAGS "${CMAKE_CUDA_FLAGS} -O3 -use_fast_math -arch=compute_75 -code=sm_75")

# Enable Link Time Optimization (LTO)4
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -flto")
set(CMAKE_CUDA_FLAGS "${CMAKE_CUDA_FLAGS} -flto")

add_executable(test bs.cu)
set_property(TARGET test PROPERTY CXX_STANDARD 20)
target_link_libraries(test PRIVATE matx::matx)
