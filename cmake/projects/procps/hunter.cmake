# Copyright (c) 2016-2018, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    procps
    VERSION
    3.3.12
    URL
    "https://gitlab.com/xnagireddy/procps/-/archive/hunterized/procps-hunterized.tar.gz"
    SHA1
    cf2e0a52db464e24e21a2cd04a32fe0045407ab5
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(procps)
hunter_download(PACKAGE_NAME procps)
