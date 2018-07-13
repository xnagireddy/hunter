# Copyright (c) 2018-2018, X Nagireddy
# All rights reserved.

cmake_minimum_required(VERSION 3.0)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-inotify-tools)

# DOCUMENTATION_START {
hunter_add_package(inotify-tools)
find_package(inotify-tools CONFIG REQUIRED)

add_executable(inotify-test inotify-test.cpp)
target_link_libraries(boo PUBLIC inotify-tools::inotify-tools)
# DOCUMENTATION_END }
