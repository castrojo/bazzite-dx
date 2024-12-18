#!/bin/bash

set -ouex pipefail


dnf group install -y --nobest Workstation

systemctl enable \
    gdm.service


#### Example for enabling a System Unit File
# systemctl enable podman.socket
