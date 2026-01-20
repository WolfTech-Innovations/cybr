# Welcome to Cybr Linux - Simple. Powerful. Debian-based.

![cybr screenshot](https://raw.githubusercontent.com/WolfTech-Innovations/cybr/master/images/Screenshot_2026-01-18_181457.png)
[![Cybr Build System](https://github.com/WolfTech-Innovations/cybr/actions/workflows/build.yaml/badge.svg)](https://github.com/WolfTech-Innovations/cybr/actions/workflows/build.yaml)

Cybr Linux is a Debian-based distribution designed for all users, from newcomers to professionals. Built on the rock-solid foundation of Debian Bookworm with KDE Plasma, Cybr provides a polished, ready-to-use desktop experience.

## Features

- **Base**: Debian Bookworm (stable)
- **Desktop**: KDE Plasma with Wayland and X11 support
- **Installer**: Calamares graphical installer
- **Audio**: PipeWire with full multimedia support
- **Networking**: NetworkManager and Bluetooth ready out of the box
- **Package Management**: APT + Flatpak support

## What's Included

### Desktop Environment
- KDE Plasma Desktop with dark theme
- SDDM display manager
- Papirus icon theme
- Breeze GTK theme

### Pre-installed Applications
- **Web Browser**: Firefox ESR
- **File Manager**: Dolphin
- **Terminal**: Konsole
- **Text Editor**: Kate
- **Image Viewer**: Gwenview
- **Archive Manager**: Ark
- **Calculator**: KCalc
- **Screenshot Tool**: Spectacle
- **Partition Editor**: GParted

## System Requirements

- **RAM**: 2GB minimum (4GB recommended)
- **Storage**: 20GB minimum (40GB recommended)
- **Processor**: 64-bit x86 processor
- **Graphics**: Any GPU with KMS support
- **Boot**: UEFI or Legacy BIOS

## Installation

### Step 1: Download
Download the ISO from the [SourceForge Mirror](https://sourceforge.net/projects/wolfos/files/plasma/)

### Step 2: Create Bootable Media
Create a bootable USB drive using:
- **Windows**: Rufus or Etcher
- **Linux/macOS**: Etcher or `dd`

Example with dd:
```bash
sudo dd if=cybr-linux-v*.iso of=/dev/sdX bs=4M status=progress && sync
```

### Step 3: Boot and Install
1. Boot your computer from the USB drive
2. The live environment will start automatically
3. Click "Install Cybr Linux" on the desktop
4. Follow the Calamares installer wizard:
   - Select your language and keyboard layout
   - Partition your disk (guided or manual)
   - Create your user account
   - Confirm and install
5. Reboot and enjoy Cybr Linux!

## First Boot

On first boot, Cybr is ready to use with:
- Dark theme configured system-wide
- Flatpak ready (Flathub repository enabled)
- All essential codecs and drivers installed
- Network connectivity configured

## Building from Source

Want to build your own Cybr Linux ISO? Check out our automated build system:

```bash
# Clone the repository
git clone https://github.com/WolfTech-Innovations/cybr.git
cd cybr

# Build runs automatically via GitHub Actions
# Or trigger manually from the Actions tab
```

The build process uses Docker and creates a bootable ISO with:
- Debian Bookworm base system
- KDE Plasma desktop
- Calamares installer
- All Cybr customizations

## Downloads

- [SourceForge](https://sourceforge.net/projects/wolfos/files/plasma/) - Primary download mirror
- [GitHub Actions](https://github.com/WolfTech-Innovations/cybr/actions) - Development builds

## Support & Community

- **Website**: [https://wolfos.uk](https://wolfos.uk)
- **GitHub Issues**: Report bugs or request features
- **Status Page**: [https://status.wolfos.uk](https://status.wolfos.uk)

## Credits

- Debian Project for the stable base system
- KDE Community for Plasma Desktop
- Calamares team for the installer
- Papirus team for the icon theme

## Our Team

- **Christopher L Fox Jr** - CEO and Head of Development
- **Joseph Daniels Stratton** - Head of HR and Marketing
- **Christopher Ray Fricks** - Programming Department

## Legal

Cybr Linux is GPL Licensed and managed by WolfTech Innovations.

This is free and open source software. You are free to use, modify, and distribute it under the terms of the GPL license.

[![Copyrighted.com Registered & Protected](https://static.copyrighted.com/badges/125x75/04.png)](https://app.copyrighted.com/work/GW0cSbajaE2ZDg9X "Copyrighted.com Registered & Protected")

---

**Note**: Cybr Linux is not affiliated with or endorsed by Debian, KDE, or any upstream projects. All trademarks belong to their respective owners.
