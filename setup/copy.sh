#!/bin/bash
echo ":: gtk..."
mv $HOME/.config/gtk-3.0 --backup $HOME/.config/gtk-3.0-bk
mv $HOME/.config/gtk-4.0 --backup $HOME/.config/gtk-4.0-bk
cp -r -f ./setup/gtk-3.0 $HOME/.config/
cp -r -f ./setup/gtk-4.0 $HOME/.config/
echo ":: wl-gammarelay..."
mkdir -p $HOME/.config/systemd/user/
cp ./setup/wl-gammarelay.service $HOME/.config/systemd/user/
systemctl --user daemon-reload
systemctl --user enable --now wl-gammarelay.service
echo ":: Product Sans font"
sudo cp -r ./setup/google-sans /usr/share/fonts
sudo fc-cache -f -v
echo ":: Done!"
