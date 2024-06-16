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

# Install Azure data studio
wget -O /tmp/azuredatastudio.rpm https://go.microsoft.com/fwlink/?linkid=2261574
rpm-ostree install /tmp/azuredatastudio.rpm

# Install useful gnome utilities
rpm-ostree install \
        gparted \
        gnome-disk-utility \
        gnome-system-monitor\
        gedit
        
#### Example for enabling a System Unit File

# systemctl enable podman.socket
