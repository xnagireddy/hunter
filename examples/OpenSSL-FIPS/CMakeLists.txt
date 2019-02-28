# Copyright (c) 2014, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.0)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-openssl-fips)

hunter_add_package(OpenSSL-FIPS)
find_package(OpenSSL-FIPS REQUIRED)

add_executable(foo foo.cpp)
# target_link_libraries(foo PUBLIC OpenSSL-FIPS::SSL OpenSSL-FIPS::Crypto)
