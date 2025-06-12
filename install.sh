#!/bin/bash

# Check if the script is running on Arch Linux
if ! grep -q "arch" /etc/os-release; then
    echo ":: This script is designed to run on Arch Linux."
    exit 1
fi

# Install gum if not already installed
if ! command -v gum &>/dev/null; then
    echo ":: gum not installed"
    sudo pacman -S gum
fi

ask_continue() {
    if gum confirm "$1"; then
        return 0
    else
        echo ":: Skipping $1."
        return 1
    fi
}

# Script
gum style --height 1 --width 50 --padding '0 12' --border double --border-foreground 57 "Hyprland dotfiles for $(gum style --foreground 212 "Arch")"

ask_continue "Proceed with installing Hyprland Dotfiles?" || exit 0
git clone https://github.com/ASauvage/hyprland_dotfiles /tmp/hyprland_dotfiles
echo ":: repository downloaded"

ask_continue "Proceed with installing packages?" && ./scripts/pkgs.sh
ask_continue "Proceed with installing dotfiles?" && ./scripts/dotfiles.sh
ask_continue "Proceed with installing bin files?" && ./scripts/bin.sh
ask_continue "Proceed with configuring disks?" && ./scripts/disks.sh
ask_continue "Proceed with configuring git?" && ./scripts/git.sh
ask_continue "Proceed with configuring wallpapers?" && ./scripts/wallpapers.sh

echo ":: All done! Please reboot your system"
echo ":: Proceed with rebooting?" && systemctl reboot
