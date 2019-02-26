# Copyright (c) 2013-2014, Ruslan Baratov
# All rights reserved.

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

if(MINGW)
  hunter_pick_scheme(DEFAULT url_sha1_openssl-fips)
elseif(WIN32)
  if("${HUNTER_OpenSSL_VERSION}" VERSION_LESS "1.1")
    hunter_pick_scheme(DEFAULT url_sha1_openssl-fips_windows)
  else()
    hunter_pick_scheme(DEFAULT url_sha1_openssl-fips_windows_1_1_plus)
  endif()
elseif(APPLE)
  if(IOS)
    hunter_pick_scheme(DEFAULT url_sha1_openssl-fips_ios)
  else()
    hunter_pick_scheme(DEFAULT url_sha1_openssl-fips_macos)
  endif()
else()
  hunter_pick_scheme(DEFAULT url_sha1_openssl-fips)
endif()

if(MINGW)
  hunter_check_toolchain_definition(NAME "__MINGW64__" DEFINED _hunter_mingw64)
  if(_hunter_mingw64)
    hunter_cmake_args(OpenSSL-FIPS CMAKE_ARGS HUNTER_OPENSSL-FIPS_MINGW64=TRUE)
  endif()
endif()

hunter_cacheable(OpenSSL-FIPS)
hunter_download(PACKAGE_NAME OpenSSL-FIPS PACKAGE_INTERNAL_DEPS_ID "1")
