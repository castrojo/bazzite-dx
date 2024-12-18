#!/bin/bash

set -ouex pipefail

dnf config-manager --set-enabled crb
dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm

dnf group install -y --nobest Workstation

dnf install -y \
    gnome-extensions-app \
    gnome-shell-extension-appindicator

systemctl enable \
    gdm.service


#### Example for enabling a System Unit File
# systemctl enable podman.socket
