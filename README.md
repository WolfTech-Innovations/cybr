# Welcome to Cybr - Simple. Powerful. Mobile-Ready.

![WTLogo]()
[![Cybr Build System](https://github.com/WolfTech-Innovations/cybr/actions/workflows/build.yaml/badge.svg)](https://github.com/WolfTech-Innovations/cybr/actions/workflows/build.yaml)

Cybr is a Debian-based gaming distribution designed for mobile and desktop users. Built on Debian Bookworm with Phosh mobile desktop, Liquorix gaming kernel, and Steam pre-installed, Cybr delivers a touch-optimized, gaming-ready experience.

## Features

- **Base**: Debian Bookworm (stable)
- **Desktop**: Phosh (GNOME-based mobile shell)
- **Kernel**: Liquorix (optimized for gaming with 1000Hz tick rate)
- **Gaming**: Steam pre-installed with Vulkan support
- **Installer**: Calamares graphical installer
- **Display Server**: Wayland (Phoc compositor)
- **Package Management**: APT + Flatpak support

## What's Included

### Desktop Environment
- Phosh mobile-optimized interface
- GDM3 display manager
- Squeekboard on-screen keyboard
- Touch-friendly UI elements

### Pre-installed Applications
- **Web Browser**: Firefox ESR
- **Gaming Platform**: Steam with 32-bit library support
- **Mobile Apps**: GNOME Contacts, GNOME Calls, Chatty
- **Partition Editor**: GParted

### Gaming Optimizations
- **Liquorix Kernel**: Low-latency kernel optimized for gaming
- **Vulkan Drivers**: Mesa Vulkan drivers for both 64-bit and 32-bit
- **Steam Ready**: Pre-configured with all necessary dependencies
- **Performance Tuning**: 1000Hz tick rate, hard kernel preemption

## System Requirements

- **RAM**: 2GB minimum (4GB recommended for gaming)
- **Storage**: 25GB minimum (50GB+ recommended for games)
- **Processor**: 64-bit x86 processor
- **Graphics**: Any GPU with KMS support (AMD/Intel/NVIDIA)
- **Boot**: UEFI or Legacy BIOS

## Installation

### Step 1: Download
Download the ISO from the [SourceForge Mirror](https://sourceforge.net/projects/wolfos/files/gaming/)

### Step 2: Create Bootable Media
Create a bootable USB drive using:
- **Windows**: Rufus or Etcher
- **Linux/macOS**: Etcher or `dd`

Example with dd:
```bash
sudo dd if=cybr-v*.iso of=/dev/sdX bs=4M status=progress && sync
```

### Step 3: Boot and Install
1. Boot your computer from the USB drive
2. The live environment will start automatically
3. Click "Install Cybr" on the desktop
4. Follow the Calamares installer wizard:
   - Select your language and keyboard layout
   - Partition your disk (guided or manual)
   - Create your user account
   - Confirm and install
5. Reboot and enjoy Cybr!

## First Boot

On first boot, Cybr is ready to use with:
- Phosh mobile interface configured
- Steam pre-installed and ready to launch
- Liquorix gaming kernel active
- Flatpak ready (Flathub repository enabled)
- All essential codecs and drivers installed
- Network connectivity configured

## Gaming on Cybr

### Steam
Steam is pre-installed and ready to use:
1. Launch Steam from the applications menu
2. Sign in to your Steam account
3. Enable Proton in Steam Settings > Steam Play for Windows games
4. Start gaming!

### Performance
The Liquorix kernel provides:
- Low-latency audio and input response
- Optimized scheduler for gaming workloads
- Better frame pacing and reduced stuttering
- 1000Hz tick rate for responsive gameplay

## Building from Source

Want to build your own Cybr ISO? Check out our automated build system:

```bash
# Clone the repository
git clone https://github.com/WolfTech-Innovations/cybr.git
cd cybr

# Build runs automatically via GitHub Actions
# Or trigger manually from the Actions tab
```

The build process uses Docker and creates a bootable ISO with:
- Debian Bookworm base system
- Phosh mobile desktop
- Liquorix gaming kernel
- Steam and gaming libraries
- Calamares installer
- All Cybr customizations
- **NO GRUB** - uses SYSLINUX for both BIOS and UEFI boot

## Downloads

- [SourceForge](https://sourceforge.net/projects/wolfos/files/gaming/) - Primary download mirror
- [GitHub Actions](https://github.com/WolfTech-Innovations/cybr/actions) - Development builds

## Support & Community

- **Website**: [https://wolfos.uk](https://wolfos.uk)
- **GitHub Issues**: Report bugs or request features
- **Status Page**: [https://status.wolfos.uk](https://status.wolfos.uk)

## Credits

- Debian Project for the stable base system
- GNOME and Phosh teams for the mobile desktop
- Liquorix team for the gaming-optimized kernel
- Valve for Steam and Proton
- Calamares team for the installer

## Our Team

- **Christopher L Fox Jr** - CEO and Head of Development
- **Joseph Daniels Stratton** - Head of HR and Marketing
- **Christopher Ray Fricks** - Programming Department and Finance

## Legal

Cybr is GPL Licensed and managed by WolfTech Innovations.

This is free and open source software. You are free to use, modify, and distribute it under the terms of the GPL license.

[![Copyrighted.com Registered & Protected](https://static.copyrighted.com/badges/125x75/04.png)](https://app.copyrighted.com/work/GW0cSbajaE2ZDg9X "Copyrighted.com Registered & Protected")

---

**Note**: Cybr is not affiliated with or endorsed by Debian, GNOME, Phosh, Liquorix, Valve, or any upstream projects. All trademarks belong to their respective owners.
