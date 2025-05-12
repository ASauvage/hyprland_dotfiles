#!/bin/bash

# This scritpt config git

if [ ! -f ~/.ssh/id_ed25519 ]; then
    ssh-keygen -t ed25519 -C ""
    gum pager < ~/.ssh/id_ed25519.pub
else
    echo ":: SSH key already exists"
fi

git config --global user.name "$(gum input --placeholder "Enter your git username")"
git config --global user.email "$(gum input --placeholder "Enter your git email")"

echo ":: Git configuration complete"
