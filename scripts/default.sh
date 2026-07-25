#!/bin/bash
set -euo pipefail

echo "==> Enabling 32-bit architecture..."
sudo dpkg --add-architecture i386

echo "==> Updating package lists..."
sudo apt update

echo "==> Installing Sway and dependencies..."
DEBIAN_FRONTEND=noninteractive sudo apt install -y \
    /* Core Window Manager & Wayland Tools */ \
    sway swaybg swaylock swayidle xwayland seatd \
    xdg-desktop-portal-wlr xdg-desktop-portal-gtk \
    wl-clipboard autotiling lxpolkit \
    \
    /* Terminal & Launchers */ \
    foot fuzzel i3status dunst \
    \
    /* System Utilities & Audio */ \
    pipewire-audio playerctl light fastfetch fwupd \
    libfuse2t64 libglib2.0-bin cups software-properties-common \
    \
    /* GUI Apps & File Management */ \
    pcmanfm file-roller galculator imv mpv mpd \
    \
    /* Theming & Appearance */ \
    nwg-look papirus-icon-theme arc-theme gtk2-engines-murrine \
    fonts-dejavu fonts-font-awesome fonts-liberation2 fonts-noto fonts-roboto \
    \
    /* Build Tools & Development */ \
    build-essential cargo pkg-config libssl-dev python3-i3ipc curl \
    \
    /* Gaming & Compatibility */ \
    gamemode wine wine32

echo "==> Configuring user permissions for seatd..."
sudo usermod -aG seatd "$USER"
sudo systemctl enable --now seatd

echo "==> Installation complete! Please log out or reboot to apply group changes."
