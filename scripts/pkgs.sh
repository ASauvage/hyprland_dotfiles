#!/bin/bash

# This script installs packages using yay.

PACKAGES=(
    "adwaita-icon-theme"
    "anydesk"
    "aylurs-gtk-shell-git"
    "bluez"
    "bluez"-utils
    "dart"-sass
    "deluge"
    "fish"
    "foot"
    "gnome"-calculator
    "gnome"-disk-utility
    "gnome"-text-editor
    "gvfs"
    "hypridle"
    "hyprpanel"
    "hyprpicker"
    "hyprshot"
    "hyprsunset"
    "hyprutils"
    "libgtop"
    "melonDS"
    "mongodb"-compass-bin
    "networkmanager"
    "postman"
    "rofi"
    "rofi"-calc
    "rofi"-emoji
    "rofi"-tools
    "swww"
    "upower"
    "wev"
    "wf"-recorder
    "wireplumber"
    "wl-clipboard"
    "vlc"
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

# print packages
gum pager "THE FOLOWING PACKAGES WILL BE INSTALLED::
 
$(printf '%s\n' "${PACKAGES[@]}")"

echo ":: packages installation using yay"
yay -S --needed --noconfirm "${PACKAGES[@]}"
echo ":: packages installed successfully"
