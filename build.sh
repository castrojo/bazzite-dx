#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


dnf group install -y --nobest Workstation

dnf install -y \
	gnome-tweaks \
	gnome-extensions-app \
	gnome-shell-extension-appindicator \

 systemctl enable \
    gdm.service


#### Example for enabling a System Unit File
# systemctl enable podman.socket
