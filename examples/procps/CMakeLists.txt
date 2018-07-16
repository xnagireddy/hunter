# Copyright (c) 2016-2018, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.0)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-procps)

# DOCUMENTATION_START {
hunter_add_package(procps)
find_package(procps CONFIG REQUIRED)

add_executable(procpstest procpstest.cpp)
target_link_libraries(procpstest PUBLIC procps::procps)
# DOCUMENTATION_END }
