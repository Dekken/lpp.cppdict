#!/usr/bin/env bash
set -e
CWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
VERSION="master"
DIR="c"
GIT_URL="https://github.com/nicolasaunai/cppdict"
HAS=1
[ ! -d "$CWD/$DIR" ] && HAS=0 && git clone --depth 1 $GIT_URL -b $VERSION $DIR --recursive
cd $CWD/$DIR
[ $HAS -eq 1 ] && git pull --recurse-submodules origin $VERSION
