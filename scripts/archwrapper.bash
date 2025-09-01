#!/bin/bash
set -e

# --- Variables ---
BRAND="Cybr"
LOGO_URL="https://a.fsdn.com/allura/p/wolfos/icon?b7a88cffbca17a928b384f1cbe7a291928e947ba7cc263cdaf433bf7124cf26e?&w=180"
BOOTLOADER_DIR="config/bootloaders/isolinux"

# --- Ensure dependencies ---
echo "[*] Checking required tools..."
REQUIRED_PKGS=("curl" "imagemagick")

for pkg in "${REQUIRED_PKGS[@]}"; do
    if ! command -v $pkg >/dev/null 2>&1; then
        echo "[*] Installing missing package: $pkg"
        sudo apt-get update -y
        sudo apt-get install -y $pkg
    else
        echo "[+] $pkg is already installed"
    fi
done

# --- Prepare bootloader override dir ---
echo "[*] Preparing $BOOTLOADER_DIR ..."
mkdir -p "$BOOTLOADER_DIR"

# --- Download and resize logo into splash.png (640x480) ---
echo "[*] Fetching logo from SourceForge ..."
curl -L "$LOGO_URL" -o "$BOOTLOADER_DIR/logo.png"

echo "[*] Resizing logo into splash.png ..."
convert "$BOOTLOADER_DIR/logo.png" -resize 640x480\! "$BOOTLOADER_DIR/splash.png"

# --- Write isolinux.cfg ---
echo "[*] Writing isolinux.cfg ..."
cat > "$BOOTLOADER_DIR/isolinux.cfg" <<EOF
UI vesamenu.c32
PROMPT 0
TIMEOUT 50
ONTIMEOUT live

MENU TITLE Welcome to $BRAND Live
MENU BACKGROUND splash.png

LABEL live
  MENU LABEL ^Start $BRAND Live
  KERNEL /live/vmlinuz
  APPEND initrd=/live/initrd.img boot=live quiet splash

LABEL live-failsafe
  MENU LABEL ^Failsafe Mode
  KERNEL /live/vmlinuz
  APPEND initrd=/live/initrd.img boot=live noapic noapm nodma nomce nolapic nomodeset nosmp vga=normal

LABEL memtest
  MENU LABEL Memory Test
  KERNEL /live/memtest
EOF

echo "[+] Syslinux successfully rebranded to $BRAND"