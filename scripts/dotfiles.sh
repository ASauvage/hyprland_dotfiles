#!/bin/bash

# This script installs the dotfiles.

if [ -d "$HOME/.config" ]; then
    echo ":: Backed up existing .config directory to .config.bak"
    cp -r "$HOME/.config" "$HOME/.config.bak"
fi

mv -rf ./dotfiles/* "$HOME"/.config/
echo ":: New config installed"
