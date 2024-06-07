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

# Install opensnitch
wget -O /tmp/opensnitch.rpm https://github.com/evilsocket/opensnitch/releases/download/v1.6.5/opensnitch-1.6.5-1.x86_64.rpm
wget -O /tmp/opensnitch-ui.rpm https://github.com/evilsocket/opensnitch/releases/download/v1.6.5.1/opensnitch-ui-1.6.5.1-1.noarch.rpm
rpm-ostree install \
        /tmp/opensnitch.rpm \
        /tmp/opensnitch-ui.rpm
sudo systemctl enable opensnitch.service
        
#### Example for enabling a System Unit File

# systemctl enable podman.socket
