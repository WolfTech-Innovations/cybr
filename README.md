# Welcome to Cybr - Mobile Gaming Edition
![WTLogo](https://github.com/WolfTech-Innovations/cybr/blob/51e1cbc62285ed52d3deb320b47af5670b163d6e/images/Screenshot_20260120-190710.png)
[![Cybr Build System](https://github.com/WolfTech-Innovations/cybr/actions/workflows/build.yaml/badge.svg)](https://github.com/WolfTech-Innovations/cybr/actions/workflows/build.yaml)

Cybr is a Linux distribution built for mobile gaming on handheld devices, tablets, and touch-enabled systems. Combining Debian's rock-solid foundation with Phosh's modern mobile interface and the high-performance Liquorix kernel, Cybr delivers a touch-first gaming experience with an ultra-minimal network installer.

**Perfect for:** Handheld gaming devices, GPD devices, AYANEO handhelds, gaming tablets, 2-in-1 laptops, and Steam Deck alternatives.

## Features

- **Base**: Debian 12 Bookworm (stable, secure, minimal)
- **Desktop**: Phosh (GNOME-based mobile interface)
- **Display Manager**: GDM3 with auto-login
- **Kernel**: Liquorix (optimized for gaming and low latency)
- **Installer**: Network-based (~50MB ISO)
- **Size**: Ultra-minimal installer, downloads latest base during install
- **Gaming**: Steam pre-installed with full 32-bit support and Vulkan
- **Communications**: Discord pre-installed

## What's Included

### Desktop Environment
- **Phosh**: Modern mobile desktop with touch gestures
- **GDM3**: GNOME Display Manager with auto-login
- **Touch-Optimized**: Native gesture support and adaptive apps
- **Mobile-Friendly**: Designed for handheld and touch devices

### Pre-installed Applications
- **Web Browser**: Firefox ESR
- **Gaming Platform**: Steam with complete 32-bit runtime libraries
- **Communications**: Discord
- **Partition Editor**: GParted
- **Network**: NetworkManager with WiFi support

### Gaming Optimizations
- **Liquorix Kernel**: High-performance kernel optimized for gaming
- **Vulkan Drivers**: Mesa Vulkan drivers for AMD and Intel GPUs (32-bit + 64-bit)
- **Steam Ready**: Pre-configured with all dependencies
- **32-bit Support**: Full multilib for Windows game compatibility
- **Proton Compatible**: Ready for Windows games via Steam Play

### Mobile Features
- **Touch Interface**: Native touch gesture support throughout
- **Adaptive Layout**: Interface adjusts to device orientation
- **On-Screen Keyboard**: Integrated mobile keyboard
- **Desktop Shortcuts**: Steam and Discord ready on desktop

## System Requirements

- **RAM**: 2GB minimum (4GB+ recommended for gaming)
- **Storage**: 16GB minimum (64GB+ recommended for game library)
- **Processor**: 64-bit x86 processor (AMD64/Intel64)
- **Graphics**: Any GPU with KMS support (AMD/Intel recommended, NVIDIA supported)
- **Network**: WiFi or Ethernet required for installation
- **Boot**: UEFI (dual-boot support with GRUB)

## Installation

### Step 1: Download
Download the latest network installer ISO (~50MB) from [SourceForge Mirror](https://sourceforge.net/projects/wolfos/files/gaming/)

### Step 2: Create Bootable Media
Create a bootable USB drive using:
- **Windows**: Rufus or Etcher
- **Linux/macOS**: Etcher or `dd`

Example with dd:
```bash
sudo dd if=cybr-netinstall-v*.iso of=/dev/sdX bs=4M status=progress && sync
```

### Step 3: Boot from USB
1. Boot your device from the USB drive
2. You'll see the Cybr Network Installer command line interface

### Step 4: Connect to WiFi
```bash
cybr> wifi
Enter SSID: YourNetworkName
Enter password: ********
[OK] Connected!
```

### Step 5: Install to Disk
```bash
cybr> install
Available disks:
/dev/sda: 512GB SSD
Enter disk (e.g., sda): sda
WARNING: Erase /dev/sda?
Type YES: YES

[1/6] Partitioning...
[2/6] Formatting...
[3/6] Mounting...
[4/6] Downloading base system...
[5/6] Extracting (this takes a while)...
[6/6] Installing bootloader...

=======================================
  Installation Complete!
  Remove USB and reboot
=======================================
```

### Alternative: Shell Access
For advanced users:
```bash
cybr> shell
```

## First Boot

On first boot, Cybr is ready with:
- Phosh mobile desktop environment
- Auto-login as "cybruser" (password: cybr)
- Steam ready to launch from desktop
- Discord ready for voice chat
- Network connectivity configured
- All gaming codecs and drivers installed
- Liquorix kernel for optimal gaming performance

## Default Credentials

- **Username**: cybruser
- **Password**: cybr
- **Root Password**: root

**Important**: Change these passwords after first login:
```bash
passwd  # Change user password
sudo passwd root  # Change root password
```

## Gaming on Cybr

### Steam
Steam is pre-installed with desktop shortcut:
1. Click Steam icon on desktop or in app drawer
2. Sign in to your Steam account
3. Enable Proton in Steam Settings → Compatibility for Windows games
4. Configure controller support in Settings → Controller
5. Start gaming!

### Controller Support
- Native Steam Input support
- Xbox, PlayStation, Nintendo controllers work out of the box
- Built-in handheld controls supported

### Discord
Discord is pre-installed with desktop shortcut:
- Launch from desktop or app drawer
- Screen share support for streaming gameplay
- Voice chat optimized for gaming

## Use Cases

Cybr is designed for:
- **Handheld Gaming**: GPD Win, AYANEO, OneXPlayer, Steam Deck alternatives
- **Gaming Tablets**: x86 tablets with touch screens
- **2-in-1 Laptops**: Convertible devices for gaming and productivity
- **Touch-First Devices**: Any device with a touch screen
- **Mobile Gaming**: Portable gaming on handheld devices

## Building from Source

Build your own Cybr ISO using our automated system:

```bash
# Clone the repository
git clone https://github.com/WolfTech-Innovations/cybr.git
cd cybr

# Build runs automatically via GitHub Actions
# Or trigger manually from the Actions tab
```

The build process creates:
1. **Network Installer ISO** (~50MB): Ultra-minimal bootable installer
2. **Base System** (squashfs): Complete Cybr system downloaded during install

### Build Features
- Fully automated GitHub Actions workflow
- Docker-based clean build environment
- Reproducible builds
- Network installer approach (always fresh installs)
- Liquorix kernel compilation
- Automatic checksum generation
- SourceForge upload integration

### Build Process
1. **Build Base System**:
   - Debootstrap Debian Bookworm
   - Install Liquorix kernel from official repo
   - Install Phosh desktop environment
   - Add Steam with 32-bit support
   - Install Discord
   - Configure auto-login and branding
   - Create squashfs image

2. **Build Network Installer**:
   - Compile minimal Linux kernel (tinyconfig + essentials)
   - Build static BusyBox
   - Create initramfs with installer script
   - Include WiFi firmware
   - Generate bootable ISO with GRUB (UEFI)

## Network Installer Features

The network installer is ultra-minimal but includes:
- **WiFi Support**: iwlwifi, Realtek, Atheros firmware
- **Commands**: `wifi`, `install`, `shell`
- **Automatic**: Downloads latest base from SourceForge
- **Partitioning**: Automated GPT partitioning (EFI + root)
- **Bootloader**: GRUB installation for UEFI systems
- **Progress**: 6-step installation with clear feedback

## Customization

### Installing Additional Software
```bash
# Update package lists
sudo apt update

# Install from Debian repos
sudo apt install <package>

# Enable Flatpak (optional)
sudo apt install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

### Adding More Games
- **Steam**: Install games directly through Steam
- **Flatpak**: Flathub has many games
- **Lutris**: Install via `apt install lutris` for non-Steam games
- **Heroic**: For Epic Games and GOG

### Customizing Phosh
- Settings app for system configuration
- Appearance settings for themes
- Touch gesture configuration
- Application drawer customization

## Downloads

- [SourceForge](https://sourceforge.net/projects/wolfos/files/gaming/) - Stable releases
- [GitHub Releases](https://github.com/WolfTech-Innovations/cybr/releases) - Version archives
- [GitHub Actions](https://github.com/WolfTech-Innovations/cybr/actions) - Development builds

## Support & Community

- **Website**: [https://getcybr.org](https://getcybr.org)
- **GitHub Issues**: Report bugs or request features
- **GitHub Discussions**: Community help and questions

## Troubleshooting

### Boot Issues
- Verify UEFI boot mode in BIOS
- Check boot order settings
- Verify ISO checksum after download

### WiFi Not Working During Install
- Check if your WiFi card is supported
- Try USB WiFi adapter if built-in fails
- Use Ethernet connection as alternative

### Installation Fails to Download Base
- Verify internet connection with `ping 8.8.8.8`
- Check SourceForge status
- Retry installation

### Steam Not Launching
- Run: `sudo apt install --reinstall steam-installer`
- Check graphics drivers: `glxinfo | grep OpenGL`
- Verify 32-bit libraries: `dpkg --print-foreign-architectures`

### Slow Performance
- Liquorix kernel should provide optimal performance
- Check running processes with `top`
- Verify graphics drivers are loaded: `lsmod | grep -E "i915|amdgpu|nouveau"`

## Credits

Cybr is built on amazing open source projects:
- **Debian Project** - Rock-solid base system
- **Phosh** - Modern mobile desktop interface
- **GNOME Project** - Desktop environment components
- **Liquorix** - High-performance gaming kernel
- **Valve** - Steam platform and Proton
- **BusyBox** - Minimal installer utilities
- **Linux Kernel** - Core operating system
- **All open source contributors**

## Our Team

- **Christopher L Fox Jr** - CEO and Lead Developer
- **Joseph Daniels Stratton** - HR and Marketing
- **Christopher Ray Fricks** - Programming and Finance

## Legal

Cybr is free and open source software.

**You are free to:**
- Use Cybr for any purpose
- Study and modify the source code
- Distribute copies
- Distribute modified versions

This project is licensed under GPL-3.0 and welcomes contributions.

[![Copyrighted.com Registered & Protected](https://static.copyrighted.com/badges/125x75/04.png)](https://app.copyrighted.com/work/GW0cSbajaE2ZDg9X "Copyrighted.com Registered & Protected")

---

**Note**: Cybr is not affiliated with or endorsed by Debian, GNOME, Phosh, Liquorix, Valve, Discord, or any upstream projects. All trademarks belong to their respective owners. Steam and the Steam logo are trademarks of Valve Corporation.

**Made for the mobile gaming community**