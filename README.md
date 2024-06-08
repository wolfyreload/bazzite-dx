# Bazzite Wolfy Custom

This is my own custom Universal Blue image, that is based off of the bazzite-nvidia image. I have customised the <https://github.com/ublue-os/image-template> template to build this image.

# Custom software

- **Visual Studio Code** - The rpm-ostree version has better integration than the flatpak version
- **Azure Data Studio** - I use this for connecting to MS SQL, Azure SQL, PostgreSQL and MySQL
- **gparted** - I prefer this one to the KDE tools
- **gedit** - I want a simple text editor not something trying to be an IDE like Kate
- **gnome-disk-utility** - Needed for auto mounting disks from a GUI
- **gnome-system-monitor** - The KDE system monitor is not great at all
- **docker** - I would like to use either docker or podman, it's nice to have the choice

# VM Image

- **Virtual Machine Manager** - Needed for running Windows for some software

# Rebasing to this image

Feel free to use this image if you wish, but I will not be providing support for this image

```bash
rpm-ostree rebase ostree-unverified-registry:ghcr.io/wolfyreload/bazzite-wolfy:stable
```

or the larger VM image

```bash
rpm-ostree rebase ostree-unverified-registry:ghcr.io/wolfyreload/bazzite-wolfy-vm:stable
```
