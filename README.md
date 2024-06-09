# Bazzite Wolfy Custom

This is my own custom Universal Blue image, that is based off of the bazzite-nvidia image. I have customised the <https://github.com/ublue-os/image-template> template to build this image.

# Custom software

- **Visual Studio Code** - While both flatpak and rpm-ostree options are available, the rpm-ostree version offers better integration with the system.
- **Azure Data Studio** - This is my go-to tool for connecting to various databases, including MS SQL, Azure SQL, PostgreSQL, and MySQL.
- **gparted** - This lightweight partition editor is my preference over the KDE alternative.
- **gnome-disk-utility** - A handy GUI tool for managing automounting of disks.
- **gedit** - Sometimes I need a simple text editor not something trying to be an IDE like Kate
- **gnome-system-monitor** - This tool provides a clear overview of system resources, unlike the less user-friendly KDE system monitor.
- **docker** - Both Docker and Podman are great options for containerization, I've added docker to add flexibility in choice.

# VM Image

- **VirtualBox** - Needed for running Windows in a VM or for testing Bazzite ISOs

# Rebasing to this image

Feel free to use this image if you wish, but I will not be providing support for this image

```bash
rpm-ostree rebase ostree-unverified-registry:ghcr.io/wolfyreload/bazzite-wolfy:stable
```

or the larger image which includes Virtual Machine Manager and it's dependencies

```bash
rpm-ostree rebase ostree-unverified-registry:ghcr.io/wolfyreload/bazzite-wolfy-vm:stable
```
