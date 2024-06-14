#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# Install vscode
rpm-ostree install code

# Enable nvidia driver
sed -i 's@enabled=0@enabled=1@g' /etc/yum.repos.d/_copr_sentry-kernel-fsync.repo
sed -i 's@enabled=0@enabled=1@g' /etc/yum.repos.d/_copr_ublue-os-akmods.repo 
sed -i 's@enabled=0@enabled=1@g' /etc/yum.repos.d/rpmfusion-nonfree-nvidia-driver.repo
rpm-ostree install nvidia-driver nvidia-driver-libs nvidia-libXNVCtrl nvidia-kmod-common nvidia-modprobe nvidia-settings nvidia-xconfig akmod-nvidia nvidia-driver-cuda nvidia-driver-cuda-libs
sed -i 's@enabled=1@enabled=0@g' /etc/yum.repos.d/_copr_sentry-kernel-fsync.repo
sed -i 's@enabled=1@enabled=0@g' /etc/yum.repos.d/_copr_ublue-os-akmods.repo 
sed -i 's@enabled=1@enabled=0@g' /etc/yum.repos.d/rpmfusion-nonfree-nvidia-driver.repo
rm -f /usr/share/vulkan/icd.d/nouveau_icd.*.json

#### Example for enabling a System Unit File

# systemctl enable podman.socket
