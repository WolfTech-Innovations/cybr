# Welcome to Cybr - Gaming. Reimagined.
![WTLogo](https://github.com/WolfTech-Innovations/cybr/blob/51e1cbc62285ed52d3deb320b47af5670b163d6e/images/Screenshot_20260120-190710.png)
[![Cybr Build System](https://github.com/WolfTech-Innovations/cybr/actions/workflows/build.yaml/badge.svg)](https://github.com/WolfTech-Innovations/cybr/actions/workflows/build.yaml)

Cybr is a Linux distribution built for gaming on any device - handhelds, tablets, desktops, and everything in between. Combining Debian's rock-solid foundation with i3's powerful tiling window management, Latte Dock's beautiful interface, and extreme compression technology, Cybr delivers desktop-class gaming in an incredibly compact package.

**Perfect for:** Steam Deck alternatives, GPD devices, AYANEO handhelds, gaming tablets, 2-in-1 laptops, and traditional gaming PCs.

## Features

- **Base**: Debian 12 Bookworm (stable, secure, minimal)
- **Desktop**: i3 tiling window manager + Latte Dock + Dolphin file manager
- **Size**: Under 500MB ISO with aggressive UPX + XZ compression
- **Gaming**: Steam pre-installed with Vulkan support
- **Installer**: Calamares (beautiful, user-friendly)
- **Keyboard**: Squeekboard on-screen keyboard for touch devices
- **Performance**: MangoHud for FPS monitoring
- **Communications**: Discord pre-installed

## What's Included

### Desktop Environment
- **i3 Window Manager**: Lightweight tiling WM for maximum performance
- **Latte Dock**: Beautiful macOS-style dock with smooth animations
- **Dolphin**: Full-featured KDE file manager
- **LightDM**: Fast, lightweight display manager with auto-login
- **Squeekboard**: Touch-friendly on-screen keyboard
- **Rofi**: Application launcher (Win+D)
- **Picom**: Compositor for smooth visuals

### Pre-installed Applications
- **Web Browser**: Firefox ESR
- **Gaming Platform**: Steam with complete runtime libraries
- **Communications**: Discord
- **Performance Overlay**: MangoHud for FPS and system stats
- **Terminal**: Alacritty (fast, GPU-accelerated)
- **Partition Editor**: GParted
- **File Manager**: Dolphin

### Gaming Optimizations
- **Vulkan Drivers**: Mesa Vulkan drivers for AMD and Intel GPUs
- **Steam Ready**: Pre-configured with all dependencies
- **MangoHud**: Real-time performance monitoring overlay
- **UPX Compressed**: All binaries compressed with UPX --best --lzma (50-70% size reduction)
- **Proton Compatible**: Ready for Windows games via Steam Play

### Touch & Mobile Features
- **Squeekboard**: On-screen keyboard (launch with Win+K or auto-start)
- **Touch-Optimized**: Works great on tablets and convertibles
- **Latte Dock**: Mouse and touch-friendly application launcher
- **Window Gestures**: Smooth window management on touch screens

## System Requirements

- **RAM**: 2GB minimum (4GB+ recommended for gaming)
- **Storage**: 16GB minimum (64GB+ recommended for game library)
- **Processor**: 64-bit x86 processor (AMD64/Intel64)
- **Graphics**: Any GPU with KMS support (AMD/Intel recommended, NVIDIA supported)
- **Boot**: UEFI or Legacy BIOS (GRUB for UEFI, ISOLINUX for BIOS)
- **Display**: Any display (touch screen support included)

## Installation

### Step 1: Download
Download the latest ISO from the [SourceForge Mirror](https://sourceforge.net/projects/wolfos/files/gaming/)

### Step 2: Create Bootable Media
Create a bootable USB drive using:
- **Windows**: Rufus or Etcher
- **Linux/macOS**: Etcher or `dd`

Example with dd:
```bash
sudo dd if=cybr-gaming-v*.iso of=/dev/sdX bs=4M status=progress && sync
```

### Step 3: Boot and Install
1. Boot your device from the USB drive
2. The live environment starts with auto-login as "cybruser"
3. Click "Install Cybr" icon on desktop to launch Calamares installer
4. Follow the installation wizard:
   - Select your language and timezone
   - Choose your target installation drive
   - Set up partitions (automatic or manual)
   - Create your user account
   - Review and install
5. Reboot and enjoy Cybr!

## First Boot

On first boot, Cybr is ready with:
- i3 window manager with Latte Dock
- Steam ready to launch
- Discord ready for voice chat
- Squeekboard available for on-screen keyboard (Win+K)
- MangoHud installed for performance monitoring
- Network connectivity configured
- All gaming codecs and drivers installed

## Gaming on Cybr

### Steam
Steam is pre-installed and compressed:
1. Click Steam icon in Latte Dock or press Win+D and type "steam"
2. Sign in to your Steam account
3. Enable Proton in Steam Settings → Compatibility for Windows games
4. Configure controller support in Settings → Controller
5. Optional: Enable Big Picture Mode for controller navigation
6. Start gaming!

### MangoHud Performance Overlay
Monitor FPS and system stats while gaming:
```bash
# Launch any game with MangoHud
mangohud %command%

# In Steam, add to launch options:
mangohud %command%
```

### Controller Support
- Native Steam Input support
- Xbox, PlayStation, Nintendo controllers work out of the box
- Built-in handheld controls supported

### Discord
Discord comes pre-installed and UPX compressed:
- Launch from Latte Dock or Win+D → "discord"
- Screen share support for streaming gameplay
- Voice chat optimized for gaming

## Keyboard Shortcuts

### i3 Window Manager
- **Win + Enter**: Launch terminal (Alacritty)
- **Win + D**: Application launcher (Rofi)
- **Win + K**: Toggle on-screen keyboard (Squeekboard)
- **Win + Shift + Q**: Close focused window
- **Win + H/J/K/L**: Navigate windows (Vim-style)
- **Win + 1/2/3/4**: Switch workspaces
- **Win + F**: Fullscreen toggle
- **Win + Shift + C**: Reload i3 config
- **Win + Shift + R**: Restart i3

### System
- **Win + Shift + E**: Exit/logout menu

## Use Cases

Cybr is designed for:
- **Handheld Gaming**: GPD Win, AYANEO, OneXPlayer, Steam Deck alternatives
- **Gaming Tablets**: x86 tablets with touch screens
- **2-in-1 Laptops**: Convertible devices for gaming and productivity
- **Desktop Gaming**: Traditional gaming PCs wanting a lean, fast system
- **Low-Spec Hardware**: Older machines that need lightweight but functional gaming OS
- **Touch-First Devices**: Any device with a touch screen

## Building from Source

Build your own Cybr ISO using our automated system:

```bash
# Clone the repository
git clone https://github.com/WolfTech-Innovations/cybr.git
cd cybr

# Build runs automatically via GitHub Actions
# Or trigger manually from the Actions tab
```

The build process creates a bootable ISO with:
- Debian 12 Bookworm minimal base
- i3 + Latte Dock + Dolphin desktop
- Steam, Discord, and gaming libraries
- Calamares installer
- All Cybr customizations and branding
- **Extreme compression**: UPX + XZ maximum compression
- **Dual boot support**: GRUB (UEFI) and ISOLINUX (BIOS)

### Build Features
- Fully automated GitHub Actions workflow
- Docker-based clean build environment
- Reproducible builds
- UPX compression of all binaries (50-70% reduction)
- ZSTD level 22 squashfs compression
- Automatic checksum generation
- SourceForge upload integration
- ISO size target: Under 500MB

## Advanced Features

### Extreme Compression Technology
Cybr uses multiple compression layers:
1. **UPX --best --lzma**: Compresses all executables and libraries (50-70% reduction)
2. **XZ Compression**: Squashfs with maximum XZ compression and BCJ x86 filter
3. **1MB Block Size**: Optimal compression ratio
4. **Aggressive Cleanup**: Removes docs, man pages, unnecessary locales

Result: **Full gaming system in under 500MB** with maximum compression!

### Touch Screen Support
- **Squeekboard**: Modern on-screen keyboard
- **Latte Dock**: Touch-friendly app launcher
- **i3**: Touch-compatible window management
- Auto-start keyboard option available

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

### Customizing i3
Edit `~/.config/i3/config` to customize:
- Keybindings
- Workspace layouts
- Auto-start applications
- Status bar settings

### Customizing Latte Dock
Right-click Latte Dock to:
- Add/remove application shortcuts
- Change position and size
- Adjust animation settings
- Configure transparency

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
- Try "Safe Graphics" boot option
- Check BIOS/UEFI boot settings
- Verify ISO checksum after download

### Steam Not Launching
- Run: `sudo apt install --reinstall steam-installer`
- Check graphics drivers: `glxinfo | grep OpenGL`

### On-Screen Keyboard Not Appearing
- Press Win+K to toggle Squeekboard
- Run manually: `squeekboard &`
- Add to i3 autostart in config

### Discord or Steam Slow to Start
- First launch may be slower (UPX decompression)
- Subsequent launches will be normal speed
- This is expected with extreme compression

### Latte Dock Not Starting
- Run manually: `latte-dock &`
- Check i3 config for autostart entry
- Restart i3 with Win+Shift+R

## Credits

Cybr is built on amazing open source projects:
- **Debian Project** - Rock-solid base system
- **i3 Window Manager** - Efficient tiling WM
- **KDE Project** - Latte Dock, Dolphin, and frameworks
- **Valve** - Steam platform and Proton
- **Calamares Team** - Beautiful installer
- **Squeekboard Developers** - On-screen keyboard
- **MangoHud Team** - Performance overlay
- **UPX Developers** - Executable compression
- **All open source contributors**

## Our Team

- **Christopher L Fox Jr** - CEO and Head of Development
- **Joseph Daniels Stratton** - Head of HR and Marketing
- **Christopher Ray Fricks** - Programming Department and Finance

## Legal

Cybr is free and open source software.

**You are free to:**
- Use Cybr for any purpose
- Study and modify the source code
- Distribute copies
- Distribute modified versions

This project is community-driven and welcomes contributions.

[![Copyrighted.com Registered & Protected](https://static.copyrighted.com/badges/125x75/04.png)](https://app.copyrighted.com/work/GW0cSbajaE2ZDg9X "Copyrighted.com Registered & Protected")

---

**Note**: Cybr is not affiliated with or endorsed by Debian, i3, KDE, Valve, Discord, or any upstream projects. All trademarks belong to their respective owners. Steam and the Steam logo are trademarks of Valve Corporation.

**Made with ❤️ for the gaming community**