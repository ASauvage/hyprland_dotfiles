#!/bin/bash

#  This script sets up the wallpaper for Hyprland using swww.

echo ":: Setting up wallpaper for Hyprland using swww"
echo ":: Copying wallpapers to ~/Pictures/wallpapers"

cp -v ../wallpapers/* ~/Pictures/wallpapers/
cp ../wallpapers/$(gum choose --header "Select a wallpaper" --height 20 $(ls ./wallpapers)) ~/Pictures/wallpaper.jpg

echo ":: Successfully set wallpaper"