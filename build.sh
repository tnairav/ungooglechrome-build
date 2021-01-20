#!/bin/bash

set -ex

pacman -Syu --noconfirm base-devel git \
    snappy ffmpeg libwebp minizip opus re2 libxslt

git clone https://aur.archlinux.org/ungoogled-chromium.git
pushd ungoogled-chromium

chown -R nobody:nobody .
sudo -u nobody makepkg --noconfirm --noprogressbar
rm -rf src pkg

