#!/bin/bash
#ova linija ispod obrise stari ./backup da bi se novi lepo kopirao

if [[ $EUID = 0 ]]
	then echo "Please run WITHOUT sudo(or root/superuser access)."
	exit
fi

sudo rm -vr ./backup

mkdir -pv backup/.config
mkdir -pv backup/.scripts
mkdir -pv backup/.local/share/fonts
mkdir -pv backup/wallpaper

sudo cp -rvp ~/.config/sway backup/.config/sway
sudo cp -rvp ~/.config/waybar backup/.config/waybar
sudo cp -rvp ~/.config/gammastep backup/.config/gammastep

sudo cp -rvp ~/.config/zsh backup/.config/zsh
sudo cp -rvp ~/.config/nvim backup/.config/nvim
sudo cp -rvp ~/.config/git backup/.config/git
sudo cp -rvp ~/.config/emacs backup/.config/emacs

sudo cp -rvp ~/.scripts/* backup/.scripts/
sudo cp -vp ~/.local/share/fonts/* backup/.local/share/fonts

sudo cp -vp ~/.zshenv backup/.zshenv
#sudo cp -vp ~/.bashrc backup/.bashrc
#sudo cp -vp ~/.profile backup/.profile

sudo cp -vp ~/.inputrc backup/.inputrc

sudo cp -vp ~/Pictures/wallpaper/wallpaper backup/wallpaper
