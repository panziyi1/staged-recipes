#!/bin/bash

set -e
set -x

export CFLAGS="${CFLAGS}"
export CXXFLAGS="${CFLAGS}"
export LDFLAGS="${LDFLAGS}"

# explicitly call out pylibfdt target because the detection in the makefile isn't working
# dtc's makefile clobbers the env vars so pass them on cmdline
make all pylibfdt V=1 \
    CFLAGS="$CFLAGS" \
    CPPFLAGS="-I libfdt $CPPFLAGS"
