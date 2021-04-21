#!/bin/bash
#ova linija ispod obrise stari ./backup da bi se novi lepo kopirao

if [[ $EUID = 0 ]]
	then echo "Please run WITHOUT sudo(or root/superuser access)."
	exit
fi

sudo rm -vr ./backup

mkdir -pv backup/.config
mkdir -pv backup/.scripts
mkdir -pv backup/.fonts

sudo cp -rvp ~/.config/sway backup/.config/sway
sudo cp -rvp ~/.config/nvim backup/.config/nvim
#sudo cp -rvp ~/.config/polybar backup/.config/polybar
sudo cp -rvp ~/.scripts/* backup/.scripts/
sudo cp -vp ~/.fonts/* backup/.fonts

sudo cp -vp ~/.bashrc backup/.bashrc
sudo cp -vp ~/.profile backup/.profile
sudo cp -vp ~/.zshrc backup/.zshrc
sudo cp -vp ~/.inputrc backup/.inputrc

sudo cp -vp ~/Pictures/wallpaper/wallpaper backup/wallpaper
