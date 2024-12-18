#!/bin/bash

set -ouex pipefail

dnf install -y \
    distrobox \
    gnome-extensions-app \
    gnome-shell-extension-appindicator \
    gnome-shell-extension-dash-to-dock

# Test ublue coprs
dnf config-manager --add-repo https://copr.fedorainfracloud.org/coprs/ublue-os/staging/repo/centos-stream-10/ublue-os-staging-centos-stream-10.repo
dnf install -y \
    gnome-shell-extension-logo-menu
# dnf --enablerepo epel-testing install gnome-shell-extension-blur-my-shell # Will work on 19/12

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
