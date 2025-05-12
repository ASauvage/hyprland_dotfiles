#!/bin/bash

# This script installs packages using yay.

PACKAGES=(
    "adwaita-icon-theme"
    "anydesk"
    "aylurs-gtk-shell-git"
    "bluez"
    "bluez-utils"
    "dart-sass"
    "deluge"
    "fish"
    "foot"
    "gnome-calculator"
    "gnome-disk-utility"
    "gnome-text-editor"
    "gvfs"
    "hypridle"
    "hyprpanel"
    "hyprpicker"
    "hyprshot"
    "hyprsunset"
    "hyprutils"
    "less"
    "libgtop"
    "melonDS"
    "mongodb-compass-bin"
    "networkmanager"
    "postman"
    "rofi"
    "rofi-calc"
    "rofi-emoji"
    "rofi-tools"
    "swww"
    "upower"
    "wev"
    "wf-recorder"
    "wireplumber"
    "wl-clipboard"
    "vlc"
)

SEL_PACKAGES=$(gum choose --no-limit --header "Packages to be installed" --height 20 --selected "*" ${PACKAGES[@]})

if command -v yay &>/dev/null; then
    echo ":: yay is already installed"
    sleep 1
else
    echo ":: yay installation"

    git clone https://aur.archlinux.org/yay.git /tmp/yay
    cd /tmp/yay
    makepkg -s --noconfirm

    echo ":: yay installation complete"

echo ":: packages installation using yay"
yay -S --needed --noconfirm "${SEL_PACKAGES[@]}"
echo ":: packages installed successfully"
