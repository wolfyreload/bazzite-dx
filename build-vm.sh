#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

# Install virtual machine software
rpm-ostree install \
        virt-manager \
        edk2-ovmf \
        qemu

