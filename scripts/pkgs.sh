#!/bin/bash

# This script installs packages using yay.

PACKAGES=(
    "hyprpanel"
    "hypridle"
    "hyprshot"
    "hyprpicker"
    "hyprutils"
    "adwaita-icon-theme"
    "rofi"
    "rofi-emoji"
    "rofi-calc"
    "rofi-tools"
    "fish"
    "foot"
    "wev"
    "swww"
    "deluge"
    "vlc"
    "anydesk"
    "postman"
    "mongodb-compass-bin"
    "melonDS"
    "wf-recorder"
    "gnome-calculator"
    "gnome-text-editor"
    "gnome-disk-utility"
)

if command -v yay &>/dev/null; then
    echo ":: yay is installed"
    sleep 1
else
    echo ":: yay installation"

    git clone https://aur.archlinux.org/yay.git /tmp/yay
    cd /tmp/yay
    makepkg -s --noconfirm

    echo ":: yay installation complete"


echo ":: packages installation using yay"

yay -S --needed --noconfirm "${PACKAGES[@]}"

echo ":: packages installed successfully"
