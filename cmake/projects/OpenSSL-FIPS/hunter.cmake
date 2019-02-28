# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_check_toolchain_definition)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    OpenSSL-FIPS
    VERSION
    "2.0.16"
    URL
    "https://www.openssl.org/source/openssl-fips-2.0.16.tar.gz"
    SHA1
    6bf6503339aed2c7fe0aa233a059c7cf49ce94b4
)

hunter_cacheable(OpenSSL-FIPS)
hunter_pick_scheme(DEFAULT url_sha1_openssl-fips)
hunter_download(PACKAGE_NAME OpenSSL-FIPS PACKAGE_INTERNAL_DEPS_ID "1")

