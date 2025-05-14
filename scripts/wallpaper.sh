#!/bin/bash

#  This script sets up the wallpaper for Hyprland using swww.

cp ../wallpapers/* ~/Pictures/wallpapers/
cp ../wallpapers/$(gum choose --header "Select a wallpaper" --height 20 $(ls ./wallpapers)) ~/Pictures/wallpaper.jpg
