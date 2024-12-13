#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


dnf group install -y Workstation


#### Example for enabling a System Unit File
# systemctl enable podman.socket
