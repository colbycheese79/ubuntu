#!/bin/bash
sudo dpkg --add-architecture i386 && sudo apt update &&
sudo apt install sway swaybg cargo swaylock swayidle curl \
    python3-i3ipc pkg-config seatd dunst light fastfetch playerctl \
    i3status libssl-dev pipewire-audio nwg-look fwupd libfuse2t64 \
    wl-clipboard autotiling gtk2-engines-murrine mpv mpd foot gh fonts-ubuntu \
    papirus-icon-theme arc-theme fuzzel fonts-dejavu fonts-font-awesome papers \
    fonts-liberation2 fonts-noto fonts-roboto lxpolkit libglib2.0-bin xwayland \
    file-roller pcmanfm cups galculator build-essential gamemode imv simple-scan \
    xdg-desktop-portal-gtk xdg-desktop-portal-wlr wine software-properties-common -y
