#!/usr/bin/env bash

# update the system
pacman -Syu

# programs to remove
pacman -Rcns konsole yakuake krunner --noconfirm
pacman -S neovim termite git go rust nodejs --noconfirm


