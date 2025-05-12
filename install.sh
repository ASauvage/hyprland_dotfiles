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

ask_continue "Proceed with installing Hyprland Dotfiles?" true || exit 0

ask_continue "Proceed with installing packages?" false && ./scripts/pkgs.sh
ask_continue "Proceed with installing dotfiles?" false && ./scripts/dotfiles.sh
ask_continue "Proceed with configuring disks?" false && ./scripts/disks.sh
ask_continue "Proceed with configuring git?" false && ./scripts/git.sh

echo ":: All done! Please reboot your system."
