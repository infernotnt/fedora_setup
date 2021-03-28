#!/bin/bash
#ova linija ispod obrise stari ./backup da bi se novi lepo kopirao

if [[ $EUID = 0 ]]
	then echo "Please run WITHOUT sudo(or root/superuser access)."
	exit
fi

sudo rm -r ./backup

sudo mkdir -pv backup/.config
sudo mkdir -pv backup/.scripts
sudo mkdir -pv backup/.fonts

sudo cp -rvp ~/.config/i3 backup/.config/i3 
sudo cp -rvp ~/.config/polybar backup/.config/polybar 
sudo cp -rvp ~/.scripts/* backup/.scripts/
sudo cp -vp ~/.fonts/* backup/.fonts 

sudo cp -vp ~/.vimrc backup/.vimrc 
sudo cp -vp ~/.bashrc backup/.bashrc
sudo cp -vp ~/.profile backup/.profile

sudo cp -vp ~/Pictures/wallpaper/wallpaper backup/wallpaper
