#!/bin/bash

set -ex

pacman -Syu --noconfirm base-devel git

git clone https://aur.archlinux.org/ungoogled-chromium.git
pushd ungoogled-chromium

makepkg -s --noconfirm --noprogressbar
