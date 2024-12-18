#!/bin/bash

set -ouex pipefail

dnf group install -y GNOME

 systemctl enable \
    gdm.service


#### Example for enabling a System Unit File
# systemctl enable podman.socket
