cmake_minimum_required(VERSION 3.11)

include(FetchContent)

set(FETCHCONTENT_UPDATES_DISCONNECTED TRUE)

# --- Fetch matx --------------------------------------------------------------

FetchContent_Declare(matx
  GIT_REPOSITORY https://github.com/NVIDIA/MatX.git
  GIT_TAG main
)

FetchContent_GetProperties(arrayfire)
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

set(CMAKE_CUDA_COMPILER /usr/local/cuda/bin/nvcc)

add_executable(test test.cu)
set_property(TARGET test PROPERTY CXX_STANDARD 20)
target_link_libraries(test PRIVATE matx::matx)
