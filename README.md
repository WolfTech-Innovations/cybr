# Welcome to Cybr - Mobile Gaming. Reimagined.

![WTLogo](https://github.com/WolfTech-Innovations/cybr/blob/51e1cbc62285ed52d3deb320b47af5670b163d6e/images/Screenshot_20260120-190710.png)
[![Cybr Build System](https://github.com/WolfTech-Innovations/cybr/actions/workflows/build.yaml/badge.svg)](https://github.com/WolfTech-Innovations/cybr/actions/workflows/build.yaml)

Cybr is the first Linux distribution built specifically for handheld gaming PCs and convertible devices. Combining Debian's rock-solid foundation with Plasma Mobile's touch-optimized interface, Liquorix's gaming-tuned kernel, and Steam pre-configured, Cybr delivers desktop-class gaming in a mobile-first package.

**Perfect for:** Steam Deck alternatives, GPD devices, AYANEO handhelds, gaming tablets, and 2-in-1 laptops.

## Features

- **Base**: Debian Bookworm (stable, secure, compatible)
- **Desktop**: Plasma Mobile (KDE's touch-optimized shell)
- **Kernel**: Liquorix (gaming-optimized, low-latency, 1000Hz tick rate)
- **Gaming**: Steam pre-installed with full Vulkan support
- **Installer**: Refractainstaller (lightweight, reliable)
- **Display Server**: Wayland (KWin compositor)
- **Communications**: Discord with Vencord support
- **Package Management**: APT + Flatpak support

## What's Included

### Desktop Environment
- Plasma Mobile touch-optimized interface
- SDDM display manager with auto-login
- Qt Virtual Keyboard for on-screen input
- Gesture-friendly navigation
- Desktop and tablet modes

### Pre-installed Applications
- **Web Browser**: Firefox ESR
- **Gaming Platform**: Steam with complete 32-bit library support
- **Communications**: Discord (Vencord-ready for customization)
- **File Manager**: Dolphin
- **Text Editor**: Kate
- **Terminal**: Konsole
- **Partition Editor**: GParted
- **System Info**: Neofetch (auto-launches in terminal)

### Gaming Optimizations
- **Liquorix Kernel**: Ultra-low latency kernel built for gaming workloads
- **Vulkan Drivers**: Mesa Vulkan drivers for both 64-bit and 32-bit applications
- **Steam Ready**: Pre-configured with all dependencies and runtime libraries
- **Performance Tuning**: 1000Hz tick rate, hard kernel preemption, optimized scheduler
- **Proton Compatible**: Ready for Windows games via Steam Play

### Mobile-First Features
- Touch-optimized UI designed for handheld gaming
- Automatic screen rotation support
- Power management optimized for portability
- Virtual keyboard for docked mode
- Seamless desktop/tablet mode switching

## System Requirements

- **RAM**: 4GB minimum (8GB recommended for modern games)
- **Storage**: 32GB minimum (128GB+ recommended for game library)
- **Processor**: 64-bit x86 processor (AMD64/Intel64)
- **Graphics**: Any GPU with KMS support (AMD/Intel/NVIDIA with Mesa or proprietary drivers)
- **Boot**: UEFI or Legacy BIOS (SYSLINUX bootloader)
- **Display**: Touch screen recommended but not required

## Installation

### Step 1: Download
Download the latest ISO from the [SourceForge Mirror](https://sourceforge.net/projects/wolfos/files/gaming/)

### Step 2: Create Bootable Media
Create a bootable USB drive or SD card using:
- **Windows**: Rufus or Etcher
- **Linux/macOS**: Etcher or `dd`

Example with dd:
```bash
sudo dd if=cybr-linux-v*.iso of=/dev/sdX bs=4M status=progress && sync
```

### Step 3: Boot and Install
1. Boot your device from the USB/SD card
2. The live environment will start automatically with auto-login
3. The installer launches automatically after 5 seconds (or click "Install Cybr Linux" on desktop)
4. Follow the Refractainstaller wizard:
   - Select your target installation drive
   - Choose your partitioning scheme
   - Configure GRUB bootloader
   - Set your username and password
   - Confirm and install
5. Reboot and enjoy Cybr!

## First Boot

On first boot, Cybr is ready to game with:
- Plasma Mobile interface configured for touch
- Steam pre-installed and ready to launch
- Discord ready for voice chat with friends
- Liquorix gaming kernel active
- Flatpak ready (configure Flathub for additional apps)
- All essential gaming codecs and drivers installed
- Network connectivity pre-configured
- Neofetch showing system info in terminal

## Gaming on Cybr

### Steam
Steam is pre-installed and ready to use:
1. Launch Steam from the applications menu or desktop
2. Sign in to your Steam account
3. Enable Proton in Steam Settings → Steam Play for Windows games
4. Install Steam Input for controller support
5. Configure Big Picture Mode for handheld-friendly navigation
6. Start gaming!

### Controller Support
- Native Steam Input support for most controllers
- Xbox, PlayStation, Nintendo Switch controllers work out of the box
- Built-in controller support for handheld devices

### Performance
The Liquorix kernel provides:
- Ultra-low latency audio and input response
- Gaming-optimized process scheduler (MuQSS)
- Better frame pacing and reduced micro-stuttering
- 1000Hz tick rate for ultra-responsive gameplay
- Reduced input lag for competitive gaming

### Discord with Vencord
Discord comes pre-installed and ready for voice chat:
- Launch Discord from applications menu or desktop
- Optional: Install Vencord for enhanced features (custom themes, plugins, performance improvements)
- Screen share support for streaming gameplay
- Overlay support for in-game chat

## Use Cases

Cybr is designed for:
- **Handheld Gaming PCs**: GPD Win, AYANEO, OneXPlayer, Steam Deck alternatives
- **Gaming Tablets**: x86 tablets with controllers or docks
- **2-in-1 Laptops**: Convertible devices used in tablet mode for gaming
- **Docked Mobile Gaming**: Tablets/handhelds with desktop docking stations
- **Touch-First Gaming**: Any touch-enabled gaming device

## Building from Source

Want to build your own Cybr ISO? Our automated build system makes it easy:

```bash
# Clone the repository
git clone https://github.com/WolfTech-Innovations/cybr.git
cd cybr

# Build runs automatically via GitHub Actions
# Or trigger manually from the Actions tab
```

The build process uses Docker and creates a bootable ISO with:
- Debian Bookworm base system
- Plasma Mobile desktop environment
- Liquorix gaming kernel
- Steam, Discord, and gaming libraries
- Refractainstaller
- All Cybr customizations and branding
- **SYSLINUX bootloader** for both BIOS and UEFI (no GRUB dependency)

### Build Features
- Fully automated GitHub Actions workflow
- Clean room Docker-based build environment
- Reproducible builds
- Automatic ISO generation and checksums
- SourceForge upload integration

## Downloads

- [SourceForge](https://sourceforge.net/projects/wolfos/files/gaming/) - Stable releases
- [GitHub Actions](https://github.com/WolfTech-Innovations/cybr/actions) - Development builds and artifacts

## Customization

### Installing Vencord (Discord Enhancement)
Vencord provides themes, plugins, and performance improvements for Discord:
```bash
# The installer script is pre-downloaded during ISO creation
# Users can run it manually to install Vencord mods
sh /tmp/vencord-installer.sh
```

### Adding More Games
- **Steam**: Install games directly through Steam client
- **Flatpak**: Install Flathub games (`flatpak install flathub <game>`)
- **Lutris**: Install via Flatpak for non-Steam game management
- **Heroic Games Launcher**: For Epic Games and GOG

### Performance Tweaking
Cybr comes pre-optimized, but you can further tune:
- Install `gamemode` for per-game performance boosts
- Use `MangoHud` for FPS overlay and monitoring
- Configure TDP limits for battery life on handhelds
- Adjust CPU governor for performance vs battery

## Support & Community

- **Website**: [https://getcybr.org](https://getcybr.org)
- **GitHub Issues**: Report bugs, request features, or contribute
- **Documentation**: Check the GitHub wiki for guides and tips

## Troubleshooting

### Display Issues
- Boot with "Safe Graphics" option for compatibility mode
- Use "Failsafe" boot option for maximum compatibility

### Steam Not Launching
- Ensure 32-bit libraries are installed: `sudo apt install steam-installer`
- Check graphics drivers: `glxinfo | grep OpenGL`

### Touch Keyboard Not Appearing
- Manually launch: `qtvirtualkeyboard`
- Configure in System Settings → Input Devices

## Credits

Cybr is built on the shoulders of giants:
- **Debian Project** - Rock-solid base system and package management
- **KDE Plasma Mobile Team** - Touch-optimized desktop environment
- **Liquorix Team** - Gaming-optimized kernel
- **Valve** - Steam platform and Proton compatibility layer
- **Refracta Project** - Lightweight installer
- **Vendicated** - Vencord Discord enhancement
- **All open source contributors** who make projects like this possible

## Our Team

- **Christopher L Fox Jr** - CEO and Head of Development
- **Joseph Daniels Stratton** - Head of HR and Marketing
- **Christopher Ray Fricks** - Programming Department and Finance

## Legal

Cybr is free and open source software licensed under the GPL.

**You are free to:**
- Use Cybr for any purpose
- Study and modify the source code
- Distribute copies
- Distribute modified versions

This project is community-driven and welcomes contributions.

[![Copyrighted.com Registered & Protected](https://static.copyrighted.com/badges/125x75/04.png)](https://app.copyrighted.com/work/GW0cSbajaE2ZDg9X "Copyrighted.com Registered & Protected")

---

**Note**: Cybr is not affiliated with or endorsed by Debian, KDE, Plasma Mobile, Liquorix, Valve, Discord, or any upstream projects. All trademarks belong to their respective owners. Steam and the Steam logo are trademarks of Valve Corporation.

**Made with ❤️ for the handheld gaming community**