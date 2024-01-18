#!/bin/bash
if [[ $USER = "root" ]]; then
echo "Are you sure"
read semee
if [[ $semee = "yes" ]]; then
pacman -S git alacritty imlib2 libx11 libxft libxinerama freetype2 fontconfig picom --noconfirm
mkdir -p $HOME/.config/suckless
echo "Installing to $HOME/.config/"
git clone https://github.com/Z0achary/dwm.git ~/.config/suckless/dwm
git clone https://git.suckless.org/st ~/.config/suckless/st
git clone https://git.suckless.org/dmenu ~/.config/suckless/dmenu
git clone https://github.com/brookiestein/slstatus ~/.config/suckless/slstatus
echo "Compiling"
cd ~/.config/suckless/dwm
sudo make install clean
cd ../st
sudo make install clean
cd ../dmenu
sudo make install clean
cd ../slstatus
sudo make install clean
fi
else
echo "Need to run as root"
fi
