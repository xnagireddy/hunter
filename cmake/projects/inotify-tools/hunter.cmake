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
    "https://github.com/xnagireddy/inotify-tools/archive/3.20.1.tar.gz"
    SHA1
    427bf3e14c8d6291a45baea581f16a39df7ba9ac
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(inotify-tools)
hunter_download(PACKAGE_NAME inotify-tools)
