#!/bin/bash

set -ouex pipefail

dnf install -y \
    gnome-extensions-app \
    gnome-shell-extension-appindicator \
    gnome-shell-extension-dash-to-dock
