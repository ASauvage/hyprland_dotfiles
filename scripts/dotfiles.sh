#!/bin/bash

# This script installs the dotfiles.

if [ -d "$HOME/.config" ]; then
    echo ":: .config directory already exists"
    if gum confirm "Back up existing config?"; then
        echo ":: Backed up existing .config directory to .config.bak"
        cp -r "$HOME/.config" "$HOME/.config.bak"
    else
        echo ":: Skipping Back up existing config?."
    fi
fi

mv -rf ./dotfiles/* "$HOME"/
echo ":: New config installed"
