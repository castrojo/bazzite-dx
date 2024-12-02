#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

dnf5 copr enable -y ublue-os/akmods
dnf5 group install -y domain-client


#### Example for enabling a System Unit File
# systemctl enable podman.socket
