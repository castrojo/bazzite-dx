#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

dnf5 install dnf-plugins-core
dnf5 copr enable ublue-os/akmods
dnf5 install jupiter


# this installs a package from fedora repos
dnf5 install adobe-source-code-pro-fonts android-tools bpftop \
edk2-ovmf flatpak-builder genisoimage iotop libvirt libvirt-nss p7zip-plugins p7zip podman-compose \
podman-tui podmansh powertop qemu-char-spice qemu-device-display-virtio-gpu qemu-device-display-virtio-vga \
qemu-device-usb-redirect qemu-img qemu-system-x86-core qemu-user-binfmt qemu-user-static qemu rocm-hip \
rocm-opencl rocm-smi udica virt-manager virt-viewer ydotool dbus-x11 

#				"docker-ce",
#				"docker-ce-cli",
#				"docker-buildx-plugin",
#				"docker-compose-plugin",
#				"edk2-ovmf",
#				"flatpak-builder",
# devpod and fonts are also missing				
    
# this would install a package from rpmfusion
# rpm-ostree install vlc

#### Example for enabling a System Unit File

systemctl enable podman.socket
