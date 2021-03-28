#ova linija ispod obrise stari ./backup da bi se novi lepo kopirao
sudo rm -r ./backup

sudo mkdir -pv backup/.config
sudo mkdir -pv backup/.scripts
sudo mkdir -pv backup/.fonts

sudo cp -rv ~/.config/i3 backup/.config/i3 
sudo cp -rv ~/.config/polybar backup/.config/polybar 
sudo cp -rv ~/.scripts/* backup/.scripts/
sudo cp -v ~/.fonts/* backup/.fonts 

sudo cp -v ~/.vimrc backup/.vimrc 
sudo cp -v ~/.bashrc backup/.bashrc
sudo cp -v ~/.profile backup/.profile

sudo cp -v ~/Pictures/wallpaper/wallpaper backup/wallpaper
