#!/bin/bash

set -ex

pacman -Syu --noconfirm base-devel git \
    gtk3 nss alsa-lib xdg-utils libxss libcups libgcrypt \
    ttf-liberation systemd dbus libpulse pciutils json-glib \
    desktop-file-utils hicolor-icon-theme \
    python python2 gperf mesa ninja nodejs git libva \
    libpipewire02 clang lld gn java-runtime-headless \
    python2-setuptools \
    snappy ffmpeg libwebp minizip opus re2 libxslt

echo 'MAKEFLAGS="-j2"' >> /etc/makepkg.conf

git clone https://aur.archlinux.org/ungoogled-chromium.git
pushd ungoogled-chromium

chown -R nobody:nobody .
sudo -u nobody makepkg --noconfirm --noprogressbar
rm -rf src pkg

