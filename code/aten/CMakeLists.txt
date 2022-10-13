cmake_minimum_required(VERSION 3.11)

include(FetchContent)

set(FETCHCONTENT_UPDATES_DISCONNECTED TRUE)

# --- Fetch aten --------------------------------------------------------------

FetchContent_Declare(aten
  GIT_REPOSITORY https://github.com/codereport/aten.git
  GIT_TAG main
)

FetchContent_GetProperties(arrayfire)
if(NOT aten_POPULATED)
  FetchContent_Populate(aten)
  add_subdirectory(${aten_SOURCE_DIR} ${aten_BINARY_DIR} EXCLUDE_FROM_ALL)
endif()

# ----------------------------------------------------------------------------

project(backends
  LANGUAGES CXX
)

if (NOT CMAKE_CXX_COMPILER)
    set(CMAKE_CXX_COMPILER "/usr/bin/g++")
endif()

add_executable(test test.cpp)
set_property(TARGET test PROPERTY CXX_STANDARD 20)
include_directories(aten/src)
