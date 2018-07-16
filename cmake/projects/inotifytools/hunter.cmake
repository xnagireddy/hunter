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
    0c9e38576bf29d1a880fb048ba2842c3fd71bce9
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(inotifytools)
hunter_download(PACKAGE_NAME inotifytools)
