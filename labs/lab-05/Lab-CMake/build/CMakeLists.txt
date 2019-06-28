cmake_minimum_required(VERSION 3.0)
project(lab05 C)

add_library(libstatic STATIC ../source/block.c ../headers/block.h)
add_library(libshared SHARED ../source/block.c ../headers/block.h)

add_executable(static_block ../program.c)
target_link_libraries(static_block libstatic)

add_executable(dynamic_block ../program.c)
target_link_libraries(dynamic_block libshared)
