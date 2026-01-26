# Welcome to Cybr K9 - Desktop Edition
![WTLogo](https://github.com/WolfTech-Innovations/cybr/blob/51e1cbc62285ed52d3deb320b47af5670b163d6e/images/Screenshot_20260120-190710.png)
[![Cybr Build System](https://github.com/WolfTech-Innovations/cybr/actions/workflows/build.yaml/badge.svg)](https://github.com/WolfTech-Innovations/cybr/actions/workflows/build.yaml)

Cybr K9 is a lightweight Linux distribution featuring the K9 Desktop Environment - a modern, sleek X11-based desktop with rounded window decorations, blur effects, and smooth window management. Built on Debian's rock-solid foundation with minimal bloat, Cybr K9 delivers a fast, efficient desktop experience.

**Perfect for:** Desktop users seeking a lightweight, modern DE with elegant visuals and efficient performance.

## Features

- **Base**: Debian 12 Bookworm (stable, secure, minimal)
- **Desktop**: K9 Desktop Environment (custom X11-based DE)
- **Window Manager**: Built-in compositor with blur effects
- **Filesystem**: Standard Filesystem Hierarchy (FHS compliant)
- **Installer**: Live ISO boots directly into K9 DE
- **Size**: Minimal installation with only essential packages
- **Visual Effects**: Rounded windows, blur effects, smooth animations
- **Performance**: Lightweight and optimized for speed

## What's Included

### K9 Desktop Environment
- **Custom Window Manager**: X11-based with integrated compositor
- **Blur Effects**: XRender-powered background blur for modern aesthetics
- **Rounded Windows**: Smooth, rounded window decorations
- **System Panel**: Built-in panel for system management
- **System Menu**: Quick access via right-click or Super key
- **Auto-login**: Boots directly into K9 desktop

### System Features
- **Minimal Xorg**: Only essential X11 packages installed
- **Network Support**: NetworkManager with WiFi and Ethernet
- **Partition Tools**: GParted for disk management
- **File System Support**: ext4, NTFS, and more
- **Text Editors**: nano and vim included

### K9 Keybindings
- `Super+I`: Open system information popup
- `Super+M`: Open system menu
- Right-click: Context menu access
- Window management via mouse and keyboard

## System Requirements

- **RAM**: 512MB minimum (1GB+ recommended)
- **Storage**: 4GB minimum (8GB+ recommended)
- **Processor**: 64-bit x86 processor (AMD64/Intel64)
- **Graphics**: Any GPU with KMS support
- **Network**: Not required for live boot, needed for updates
- **Boot**: UEFI and Legacy BIOS supported

## Installation

### Step 1: Download
Download the latest ISO from [SourceForge Mirror](https://sourceforge.net/projects/wolfos/files/gaming/k9/)

### Step 2: Create Bootable Media
Create a bootable USB drive using:
- **Windows**: Rufus or Etcher
- **Linux/macOS**: Etcher or `dd`

Example with dd:
```bash
sudo dd if=cybr-k9-v*.iso of=/dev/sdX bs=4M status=progress && sync
```

### Step 3: Boot from USB
1. Boot your device from the USB drive
2. Select "Cybr K9 Live" from GRUB menu
3. K9 Desktop Environment will start automatically

### Step 4: Live System
The ISO boots into a fully functional live system:
- All changes are stored in RAM (non-persistent)
- Perfect for testing before installation
- Full K9 desktop experience
- Network connectivity available

## Default Credentials

- **Username**: k9user
- **Password**: k9
- **Root Password**: root

**Live System Note**: The live system runs from RAM with an overlay filesystem. Changes persist during the session but are lost on reboot.

## Using K9 Desktop Environment

### First Launch
When K9 starts, you'll see:
- Clean desktop with rounded window decorations
- System panel for quick access to applications
- Blur effects on window backgrounds
- Smooth window animations

### Opening Applications
1. Press `Super+M` or right-click desktop for system menu
2. Access terminal, file manager, and system tools
3. Launch applications from menu

### System Information
- Press `Super+I` to view system details
- Shows K9 registration as desktop environment
- Displays system resources and information

### Window Management
- Drag windows with mouse
- Resize from window edges
- Minimize, maximize, close buttons on title bar
- Alt+Tab for window switching (if implemented)

## Customization

### Installing Additional Software
```bash
# Update package lists
sudo apt update

# Install from Debian repos
sudo apt install <package>

# Common additions
sudo apt install firefox-esr libreoffice gimp
```

### Network Configuration
```bash
# WiFi setup
nmcli device wifi list
nmcli device wifi connect "SSID" password "password"

# Check connection
nmcli connection show
```

### Installing Desktop Applications
```bash
# Web browsers
sudo apt install firefox-esr chromium

# Office suite
sudo apt install libreoffice

# Media players
sudo apt install vlc mpv

# Graphics
sudo apt install gimp inkscape
```

### K9 Development
Interested in K9 development? Check out the source:
- **K9 Repository**: [https://github.com/WolfTech-Innovations/K9](https://github.com/WolfTech-Innovations/K9)
- Build from source for latest features
- Contribute improvements and bug fixes

## Building from Source

Build your own Cybr K9 ISO using our automated system:

```bash
# Clone the repository
git clone https://github.com/WolfTech-Innovations/cybr.git
cd cybr

# Build runs automatically via GitHub Actions
# Or trigger manually from the Actions tab
```

### Build Features
- Fully automated GitHub Actions workflow
- Docker-based clean build environment
- Reproducible builds
- Live ISO with persistent overlay
- K9 built from source during build process
- Automatic checksum generation
- SourceForge upload integration

### Build Process
1. **Create Base System**:
   - Debootstrap Debian Bookworm
   - Install minimal Xorg and dependencies
   - Clone and compile K9 from GitHub
   - Install K9 system-wide
   - Configure auto-login and session
   - Apply K9 branding

2. **Create Live ISO**:
   - Build initramfs with live boot support
   - Create SquashFS from root filesystem
   - Configure overlay filesystem
   - Generate bootable ISO with GRUB (UEFI + BIOS)
   - Package everything into hybrid ISO

## K9 Desktop Environment

### About K9
K9 is a lightweight, modern X11-based desktop environment featuring:
- Custom window management and compositing
- XRender-based blur effects
- Rounded window decorations
- Integrated system panel
- Minimal resource usage
- Built for performance and aesthetics

### K9 Architecture
- **Window Manager**: Custom X11 WM with compositing
- **Compositor**: Integrated blur and transparency effects
- **Panel**: Built-in system panel with menu access
- **Libraries**: libx11, libxrender, libxext, libxrandr, libxft, libxcomposite

### K9 Features
- Blur background effects for modern look
- Smooth window animations
- System info popup (Super+I)
- Configurable keybindings
- Lightweight and fast
- Minimal dependencies

## Live System Details

### How Live Boot Works
1. ISO boots with initramfs
2. SquashFS filesystem mounted read-only
3. Overlay filesystem created in RAM
4. Changes stored in overlay (temporary)
5. Full desktop functionality available

### Advantages of Live System
- Test before installing
- Safe system recovery
- Portable desktop environment
- No installation required
- Fresh start every boot

### Making It Persistent
Currently, the live system is non-persistent. For a permanent installation, you can:
1. Boot the live system
2. Use GParted to partition your disk
3. Manually rsync the system to disk
4. Install GRUB bootloader
5. Configure for permanent boot

(Automated installer coming in future releases)

## Downloads

- [SourceForge](https://sourceforge.net/projects/wolfos/files/gaming/k9/) - Stable releases
- [GitHub Releases](https://github.com/WolfTech-Innovations/cybr/releases) - Version archives
- [GitHub Actions](https://github.com/WolfTech-Innovations/cybr/actions) - Development builds

## Support & Community

- **Website**: [https://getcybr.org](https://getcybr.org)
- **K9 Repository**: [https://github.com/WolfTech-Innovations/K9](https://github.com/WolfTech-Innovations/K9)
- **GitHub Issues**: Report bugs or request features
- **GitHub Discussions**: Community help and questions

## Troubleshooting

### Boot Issues
- Verify ISO checksum after download
- Try both UEFI and Legacy BIOS boot modes
- Check boot order settings in BIOS

### K9 Not Starting
- Check Xorg logs: `cat /var/log/Xorg.0.log`
- Verify X11 dependencies are installed
- Try starting manually: `startx`

### Display Issues
- Verify graphics drivers: `lsmod | grep -E "i915|amdgpu|nouveau|radeon"`
- Check display configuration: `xrandr`
- Try safe mode boot option

### Network Not Working
- Check interface status: `ip link show`
- Use NetworkManager: `nmcli device status`
- Verify drivers: `lspci -k | grep -A3 Network`

### Performance Issues
- K9 is lightweight by design
- Check running processes: `top` or `htop`
- Disable blur effects if needed (modify K9 config)

## Roadmap

Future enhancements planned:
- Automated disk installer
- Persistent live USB option
- Additional K9 themes and customization
- Enhanced system panel features
- More integrated applications
- Improved window management features

## Credits

Cybr K9 is built on amazing open source projects:
- **Debian Project** - Rock-solid base system
- **K9 Desktop Environment** - Custom DE by WolfTech Innovations
- **X.Org** - X11 windowing system
- **Linux Kernel** - Core operating system
- **BusyBox** - Minimal system utilities
- **GRUB** - Bootloader
- **All open source contributors**

## Our Team

- **Christopher L Fox Jr** - CEO and Lead Developer
- **Joseph Daniels Stratton** - HR and Marketing
- **Christopher Ray Fricks** - Programming and Finance

## Legal

Cybr K9 is free and open source software.

**You are free to:**
- Use Cybr K9 for any purpose
- Study and modify the source code
- Distribute copies
- Distribute modified versions

This project is licensed under GPL-3.0 and welcomes contributions.

[![Copyrighted.com Registered & Protected](https://static.copyrighted.com/badges/125x75/04.png)](https://app.copyrighted.com/work/GW0cSbajaE2ZDg9X "Copyrighted.com Registered & Protected")

---

**Note**: Cybr K9 is not affiliated with or endorsed by Debian, X.Org, or any upstream projects. All trademarks belong to their respective owners.

**Made with ❤️ for the Linux desktop community**