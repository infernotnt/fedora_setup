#!/bin/bash

if [[ $EUID > 0 ]]
then echo "Please run with sudo.(The ONLY way you should is \"sudo ./install_fedora_setup.sh\")"
	exit
fi

echo "WARNING: The ONLY way to run this is with sudo, \"sudo ./fedora_setup.sh\"."
echo "Make sure you ran it this way."
sleep 3

#TODO, videti da li qbittorrent radi
#TODO, update skripta moze da bude ista na oba.
#TODO, ssh u update skriptu
#TODO, home directory cleanup
#TODO, mooozda kao 3 skripte za install, jedna radi arch specific, druga radi fedora specific, i treca radi generalno

#mozda nije potrebno skinuti alsa i alsa-utlis kad se vec skida pulseaudio

USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)

sudo hostnamectl set-hostname archio

pacman --noconfirm -S sudo man-db zsh htop neofetch

pacman --noconfirm -S sway swaylock swaybg

pacman --noconfirm -S firefox alacritty

pacman --noconfirm -S git youtube-dl shellcheck cava cmatrix

pacman --noconfirm -S alsa alsa-utils pavucontrol pulseaudio

pacman --noconfirm -S vlc qbittorrent tldr

# wl-clipboard, copy pasting
# imv, image viewer
pacman --noconfirm -S wl-clipboard imv

#audio pogle na archwiki


#download za vim-plug. vim-plug ti daje da skidas plugin-ove za vim/nvim
#mozda bez sudo?
sudo -u $SUDO_USER curl -fLo "${XDG_DATA_HOME:-$USER_HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#ovo treba da instalira sve plug-inove(preko PlugInstall) koje se nalaze u ~/.vimrc
sudo -u $SUDO_USER nvim -es -u ${USER_HOME}/.vimrc -i NONE -c "PlugInstall" -c "qa"
#--------------------------------------------------------------------------------------------------------

#make sure all the files are owned by the local user and not by the root account
sudo chown -Rv $SUDO_USER *

sudo mkdir -v $USER_HOME/.config
sudo mkdir -v $USER_HOME/.scripts
sudo mkdir -v $USER_HOME/.fonts

# Give correct ownership to the folders
sudo chown -Rv $SUDO_USER $USER_HOME/.config
sudo chown -Rv $SUDO_USER $USER_HOME/.scripts
sudo chown -Rv $SUDO_USER $USER_HOME/.fonts



#SWAY
#sudo cp -rvp backup/.config/sway $USER_HOME/.config/sway

sudo cp -rvp backup/.config/* $USER_HOME/.config/

#sudo cp -rvp backup/.config/polybar $USER_HOME/.config/polybar
sudo cp -rvp backup/.scripts/* $USER_HOME/.scripts
sudo cp -rvp backup/.fonts/* $USER_HOME/.fonts/

sudo cp -vp backup/.bashrc $USER_HOME/.bashrc
sudo cp -vp backup/.profile $USER_HOME/.profile
sudo cp -vp backup/.zshrc $USER_HOME/.zshrc
sudo cp -vp backup/.inputrc $USER_HOME/.inputrc

sudo fc-cache -f -v

#SWAY TODO: wallpaper
sudo mkdir -pv $USER_HOME/Pictures/wallpaper
sudo cp backup/wallpaper $USER_HOME/Pictures/wallpaper/wallpaper


#download za vim-plug. vim-plug ti daje da skidas plugin-ove za vim/nvim
#mozda bez sudo?
sudo -u $SUDO_USER curl -fLo "${XDG_DATA_HOME:-$USER_HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#ovo treba da instalira sve plug-inove(preko PlugInstall) koje se nalaze u ~/.vimrc
sudo -u $SUDO_USER nvim -es -u ${USER_HOME}/.vimrc -i NONE -c "PlugInstall" -c "qa"

chsh -s /bin/zsh $SUDO_USER # Changes the default shell from presumably bash to zsh

#!!!!STVARI KOJE USER KOJI INSTALIRA MORA DA URADI:
#1. polybar internet speed da se namesti:
#			treba promeniti interface u config file-u polybar-a, znaci odes u ~/.config/polybar/config, nadjes modul za internet i promenis interface u: interface sa komandom:"ip link show", ne mora da znaci da je prvi interface u izlazu te komande, ali tu je vrv

#2.

#3. optional: but consider making it so you dont ever have to type the password when doing "sudo X", you can do that by: "sudo visudo", and adding "$USER ALL=(ALL) NOPASSWD: ALL", where $USER is your username to the end of the file.

#4. optional: github ssh

#5. optional: .config/git/config email and username set to your own

#6. optional: the grub2(bootloader) theme, read the README.md
