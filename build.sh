#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

dnf5 group install -y cosmic-desktop cosmic-desktop-apps window-managers


#### Example for enabling a System Unit File
# systemctl enable podman.socket
