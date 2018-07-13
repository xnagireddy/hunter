# Copyright (c) 2018-2018, X Nagireddy
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    inotify-tools
    VERSION
    3.20.1
    URL
    "https://github.com/xnagireddy/inotify-tools/archive/hunterized.tar.gz"
    SHA1
    9f9d2d3af3020fbb8902c46e99ea28e92b580106
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(inotify-tools)
hunter_download(PACKAGE_NAME inotify-tools)