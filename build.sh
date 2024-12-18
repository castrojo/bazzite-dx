#!/bin/bash

set -ouex pipefail

dnf install -y \
    gnome-extensions-app \
    gnome-shell-extension-appindicator \
    gnome-shell-extension-dash-to-dock

dnf remove -y $(dnf repoquery --installonly --latest-limit 1 -q)

systemctl enable \
    gdm.service


#### Example for enabling a System Unit File
# systemctl enable podman.socket
