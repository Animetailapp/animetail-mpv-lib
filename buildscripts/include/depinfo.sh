#!/bin/bash -e

## Dependency versions
# Make sure to keep v_ndk and v_ndk_n in sync, the numeric version can be found in source.properties
# also remember to update path.sh

v_sdk=11076708_latest
v_ndk=r26d
v_ndk_n=26.3.11579264
v_sdk_platform=34
v_sdk_build_tools=34.0.0

v_lua=5.2.4
v_unibreak=6.1
v_harfbuzz=8.4.0
v_fribidi=1.0.14
v_freetype=2-13-2
v_mbedtls=3.6.0
v_libxml2=2.12.6
v_ffmpeg=n7.0
v_mpv=67644888e768f5521c406b7662dc2830d86afbb4


## Dependency tree
# I would've used a dict but putting arrays in a dict is not a thing

dep_mbedtls=()
dep_libxml2=()
dep_dav1d=()
dep_ffmpeg=(mbedtls dav1d libxml2)
dep_freetype2=()
dep_fribidi=()
dep_harfbuzz=()
dep_unibreak=()
dep_libass=(freetype2 fribidi harfbuzz unibreak)
dep_lua=()
dep_libplacebo=()
dep_mpv=(ffmpeg libass lua libplacebo)
dep_mpv_android=(mpv)


## Travis-related

# pinned ffmpeg commit used by CI
v_travis_ffmpeg=n6.1

# filename used to uniquely identify a build prefix
travis_tarball="prefix-ndk-${v_ndk}-lua-${v_lua}-unibreak-${v_unibreak}-harfbuzz-${v_harfbuzz}-fribidi-${v_fribidi}-freetype-${v_freetype}-mbedtls-${v_mbedtls}-ffmpeg-${v_travis_ffmpeg}.tgz"
