#!/bin/bash

set -ouex pipefail

dnf install -y \
    gnome-extensions-app \
    gnome-shell-extension-appindicator \
    gnome-shell-extension-dash-to-dock


# Convince the installer we are in CI
touch /.dockerenv

# Workarounds
mkdir -p /var/home
mkdir -p /var/roothome

# Homebrew
curl --retry 3 -Lo /tmp/brew-install https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
chmod +x /tmp/brew-install
/tmp/brew-install
tar --zstd -cvf /usr/share/homebrew.tar.zst /home/linuxbrew/.linuxbrew

# Services
systemctl enable dconf-update.service
