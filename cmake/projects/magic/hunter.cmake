# Copyright (c) 2016-2018, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    magic
    VERSION
    5.18
    URL
    "https://github.com/xnagireddy/libmagic/archive/hunterized.tar.gz"
    SHA1
    f17b036d7694bd1a637de6e34c6bf7395d24d91f
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(magic)
hunter_download(PACKAGE_NAME magic)
