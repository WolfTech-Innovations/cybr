# Welcome to Cybr LXDE - Desktop Edition
![WTLogo](https://github.com/WolfTech-Innovations/cybr/blob/51e1cbc62285ed52d3deb320b47af5670b163d6e/images/Screenshot_20260120-190710.png)
[![Cybr Build System](https://github.com/WolfTech-Innovations/cybr/actions/workflows/build.yaml/badge.svg)](https://github.com/WolfTech-Innovations/cybr/actions/workflows/build.yml)

Cybr LXDE is a lightweight Linux distribution featuring the LXDE Desktop Environment - a fast, energy-efficient desktop built on standard X11 components. Built on Debian's rock-solid foundation with minimal bloat, Cybr LXDE delivers a snappy, reliable desktop experience.

**Perfect for:** Desktop users seeking a lightweight, proven DE with excellent performance and low resource usage.

## Features

- **Base**: Debian 12 Bookworm (stable, secure, minimal)
- **Desktop**: LXDE (Lightweight X11 Desktop Environment)
- **Display Manager**: LXDM with auto-login
- **Filesystem**: Standard Filesystem Hierarchy (FHS compliant)
- **Installer**: Live ISO boots directly into LXDE
- **Size**: Minimal installation with only essential packages
- **Performance**: Extremely lightweight and optimized for speed
- **Maturity**: Battle-tested, stable desktop environment

## What's Included

### LXDE Desktop Environment
- **Openbox**: Lightweight, standards-compliant window manager
- **LXDM**: Simple, lightweight display manager with auto-login
- **PCManFM**: Fast and lightweight file manager
- **LXPanel**: Feature-rich desktop panel
- **LXTerminal**: Lightweight VTE-based terminal emulator
- **Proven Stability**: Mature codebase used by millions

### System Features
- **Minimal Xorg**: Only essential X11 packages installed
- **Network Support**: NetworkManager with WiFi and Ethernet
- **Partition Tools**: GParted for disk management
- **File System Support**: ext4, NTFS, and more
- **Text Editors**: nano and vim included
- **Web Browser**: Firefox ESR pre-installed

### LXDE Components
- **Openbox Window Manager**: Fast, customizable WM
- **PCManFM File Manager**: Quick file browsing and management
- **LXPanel**: Application launcher and system tray
- **LXTerminal**: Lightweight terminal emulator
- **LXDM Display Manager**: Simple login manager

## System Requirements

- **RAM**: 512MB minimum (1GB+ recommended)
- **Storage**: 4GB minimum (8GB+ recommended)
- **Processor**: 64-bit x86 processor (AMD64/Intel64)
- **Graphics**: Any GPU with KMS support
- **Network**: Not required for live boot, needed for updates
- **Boot**: UEFI and Legacy BIOS supported

## Installation

### Step 1: Download
Download the latest ISO from [SourceForge Mirror](https://sourceforge.net/projects/wolfos/files/gaming/lxde/)

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
2. Select "Cybr LXDE Live" from GRUB menu
3. LXDE Desktop Environment will start automatically

### Step 4: Live System
The ISO boots into a fully functional live system:
- All changes are stored in RAM (non-persistent)
- Perfect for testing before installation
- Full LXDE desktop experience
- Network connectivity available

## Default Credentials

- **Username**: lxdeuser
- **Password**: lxde
- **Root Password**: root

**Live System Note**: The live system runs from RAM with an overlay filesystem. Changes persist during the session but are lost on reboot.

## Using LXDE Desktop Environment

### First Launch
When LXDE starts, you'll see:
- Clean desktop with desktop icons
- LXPanel at the bottom with application menu
- System tray with network and volume controls
- PCManFM file manager available

### Opening Applications
1. Click the application menu icon in LXPanel
2. Browse categories (Accessories, Internet, System Tools, etc.)
3. Click applications to launch them
4. Right-click desktop for quick menu

### File Management
- PCManFM file manager for browsing files
- Drag and drop support
- Tabbed browsing
- Built-in search

### System Configuration
- Preferences menu for desktop settings
- Monitor settings for display configuration
- Keyboard and mouse configuration
- Appearance customization

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
   - Install LXDE desktop environment from Debian repos
   - Configure LXDM display manager
   - Configure auto-login and session
   - Apply system branding

2. **Create Live ISO**:
   - Build initramfs with live boot support
   - Create SquashFS from root filesystem
   - Configure overlay filesystem
   - Generate bootable ISO with GRUB (UEFI + BIOS)
   - Package everything into hybrid ISO

## LXDE Desktop Environment

### About LXDE
LXDE (Lightweight X11 Desktop Environment) is a fast and energy-saving desktop environment featuring:
- Openbox window manager
- Lightweight GTK+ interface
- Minimal resource usage
- Modular components
- PCMANFM file manager
- Excellent performance on older hardware

### LXDE Architecture
- **Window Manager**: Openbox (fast, standards-compliant)
- **Panel**: LXPanel with application launcher and system tray
- **File Manager**: PCManFM with tabbed browsing
- **Terminal**: LXTerminal (VTE-based)
- **Display Manager**: LXDM with auto-login

### LXDE Features
- Extremely lightweight and fast
- Modular and customizable
- International keyboard support
- Tabbed file browsing
- Volume management
- Minimal dependencies
- Proven stability

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

- [SourceForge](https://sourceforge.net/projects/wolfos/files/gaming/lxde/) - Stable releases
- [GitHub Releases](https://github.com/WolfTech-Innovations/cybr/releases) - Version archives
- [GitHub Actions](https://github.com/WolfTech-Innovations/cybr/actions) - Development builds

## Support & Community

- **Website**: [https://getcybr.org](https://getcybr.org)
- **LXDE Project**: [https://lxde.org](https://lxde.org)
- **GitHub Issues**: Report bugs or request features
- **GitHub Discussions**: Community help and questions

## Troubleshooting

### Boot Issues
- Verify ISO checksum after download
- Try both UEFI and Legacy BIOS boot modes
- Check boot order settings in BIOS

### LXDE Not Starting
- Check Xorg logs: `cat /var/log/Xorg.0.log`
- Verify X11 dependencies are installed
- Check LXDM status: `systemctl status lxdm`
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
- LXDE is extremely lightweight by design
- Check running processes: `top` or `htop`
- Verify sufficient RAM available
- Check for unnecessary background services

## Roadmap

Future enhancements planned:
- Automated disk installer
- Persistent live USB option
- Additional LXDE customization options
- Pre-configured themes and appearance
- More integrated applications
- System configuration tools

## Credits

Cybr LXDE is built on amazing open source projects:
- **Debian Project** - Rock-solid base system
- **LXDE Project** - Lightweight Desktop Environment
- **Openbox** - Window manager
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

Cybr LXDE is free and open source software.

**You are free to:**
- Use Cybr LXDE for any purpose
- Study and modify the source code
- Distribute copies
- Distribute modified versions

This project is licensed under GPL-3.0 and welcomes contributions.

[![Copyrighted.com Registered & Protected](https://static.copyrighted.com/badges/125x75/04.png)](https://app.copyrighted.com/work/GW0cSbajaE2ZDg9X "Copyrighted.com Registered & Protected")

---

**Note**: Cybr LXDE is not affiliated with or endorsed by Debian, LXDE, X.Org, or any upstream projects. All trademarks belong to their respective owners.

**Made with ❤️ for the Linux desktop community**
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
