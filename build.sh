#!/bin/bash

set -ouex pipefail

dnf config-manager --set-enabled crb
dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm

dnf group install -y --nobest Workstation

systemctl enable \
    gdm.service


#### Example for enabling a System Unit File
# systemctl enable podman.socket
