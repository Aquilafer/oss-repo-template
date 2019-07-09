cmake_minimum_required(VERSION 3.0)
project(lab05 C)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/lib/")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/lib/")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/bin/")


add_library(static STATIC ../source/block.c ../headers/block.h)
add_library(shared SHARED ../source/block.c ../headers/block.h)

add_executable(static_block ../program.c)
target_link_libraries(static_block static)

add_executable(dynamic_block ../program.c)
target_link_libraries(dynamic_block shared)
