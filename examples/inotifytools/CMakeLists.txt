# Copyright (c) 2018-2018, X Nagireddy
# All rights reserved.

cmake_minimum_required(VERSION 3.0)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-inotifytools)

# DOCUMENTATION_START {
hunter_add_package(inotifytools)
find_package(inotifytools CONFIG REQUIRED)

add_executable(inotifytest inotifytest.cpp)
# target_link_libraries(inotify-test PUBLIC inotify-tools::inotify-tools)
target_link_libraries(inotifytest PUBLIC inotifytools::inotifytools)
# DOCUMENTATION_END }
