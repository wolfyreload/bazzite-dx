#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

# Install virtual machine software
wget -O /tmp/virtualbox.rpm https://download.virtualbox.org/virtualbox/7.0.18/VirtualBox-7.0-7.0.18_162988_fedora40-1.x86_64.rpm
rpm-ostree install /tmp/virtualbox.rpm

