# Bazzite DX Custom

This is my own custom Universal Blue image, that is based off of the bazzite-nvidia image. I have customised the <https://github.com/ublue-os/image-template> template to build this image.

# Custom software

- **Visual Studio Code** - The rpm-ostree version has better integration than the flatpak version
- **Azure Data Studio** - I use this for connecting to MS SQL, Azure SQL, PostgreSQL and MySQL
- **Virtual Machine Manager** - Needed for running Windows for some software
- **gparted** - I prefer this one to the KDE tools
- **gnome-disk-utility** - Needed for auto mounting disks from a GUI

# Rebasing to this image

Feel free to use this image if you wish, but I will not be providing support for this image

```bash
rpm-ostree rebase rpm-ostree rebase ostree-unverified-registry:ghcr.io/wolfyreload/bazzite-dx:stable
```
