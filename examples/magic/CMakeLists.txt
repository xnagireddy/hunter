# Copyright (c) 2016-2018, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.0)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-magic)

# DOCUMENTATION_START {
hunter_add_package(magic)
find_package(magic CONFIG REQUIRED)

add_executable(magic_test magic_test.cpp)
target_link_libraries(magic_test PUBLIC magic::magic)
# DOCUMENTATION_END }
