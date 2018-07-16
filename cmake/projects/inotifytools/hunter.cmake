# Copyright (c) 2018-2018, X Nagireddy
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    inotifytools
    VERSION
    3.20.1
    URL
    "https://github.com/xnagireddy/inotify-tools/archive/hunterized.tar.gz"
    SHA1
    6ab38f06fe3aa3d144def595c45d2e5c5ac3699b
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(inotifytools)
hunter_download(PACKAGE_NAME inotifytools)
