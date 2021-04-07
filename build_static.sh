#!/bin/sh

# # # # # sudo docker run --rm=true -itv $PWD:/mnt alpine:latest /mnt/build_static.sh

set -ex

apk update
apk add make gcc musl-dev ncurses-libs ncurses-static ncurses-dev

cd /mnt
make clean
make install
make clean
make distclean
