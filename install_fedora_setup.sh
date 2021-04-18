#!/bin/bash

if [[ $EUID > 0 ]]
then echo "Please run with sudo.(The ONLY way you should is \"sudo ./install_fedora_setup.sh\")"
	exit
fi

echo "WARNING: The ONLY way to run this is with sudo, \"sudo ./fedora_setup.sh\"."
echo "Make sure you ran it this way."
sleep 3

USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)

#make sure all the files are owned by the local user and not by the root account
sudo chown -Rv $SUDO_USER *

#mala dekoracija: terminal ce pocinjati sa necim tipa "milos@fed:$"
sudo hostnamectl set-hostname fed

sudo dnf -y upgrade

sudo dnf -y remove vi
sudo dnf -y remove vim
sudo dnf -y remove i3
sudo dnf -y copr enable fuhrmann/i3-gaps;

sudo dnf -y install zsh neovim alacritty i3-gaps i3lock rofi polybar compton feh git youtube-dl  neofetch htop playerctl
# Optional stuff-------------------------

sudo dnf -y install mpv vlc
sudo dnf -y install qbittorrent cava cmatrix
# Used for checking the syntax and suggests edits in .sh scripts
sudo dnf -y install ShellCheck

# ---------------------------------------


# Brave browser----------------------------------------------------------------
sudo dnf -y install dnf-plugins-core

sudo dnf -y config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/

sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc

sudo dnf -y install brave-browser

#------------------------------------

sudo mkdir -v $USER_HOME/.config
sudo mkdir -v $USER_HOME/.scripts
sudo mkdir -v $USER_HOME/.fonts

# Give correct ownership to the folders
sudo chown -Rv $SUDO_USER $USER_HOME/.config
sudo chown -Rv $SUDO_USER $USER_HOME/.scripts
sudo chown -Rv $SUDO_USER $USER_HOME/.fonts



sudo cp -rvp backup/.config/i3 $USER_HOME/.config/i3
sudo cp -rvp backup/.config/polybar $USER_HOME/.config/polybar
sudo cp -rvp backup/.scripts/* $USER_HOME/.scripts
sudo cp -rvp backup/.fonts/* $USER_HOME/.fonts/

sudo cp -vp backup/.vimrc $USER_HOME/.vimrc
sudo cp -vp backup/.bashrc $USER_HOME/.bashrc
sudo cp -vp backup/.profile $USER_HOME/.profile
sudo cp -vp backup/.zshrc $USER_HOME/.zshrc
sudo cp -vp backup/.inputrc $USER_HOME/.inputrc

sudo fc-cache -f -v

sudo mkdir -pv $USER_HOME/Pictures/wallpaper
sudo cp backup/wallpaper $USER_HOME/Pictures/wallpaper


#download za vim-plug. vim-plug ti daje da skidas plugin-ove za vim/nvim
#mozda bez sudo?
sudo -u $SUDO_USER curl -fLo "${XDG_DATA_HOME:-$USER_HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#ovo treba da instalira sve plug-inove(preko PlugInstall) koje se nalaze u ~/.vimrc
sudo -u $SUDO_USER nvim -es -u ${USER_HOME}/.vimrc -i NONE -c "PlugInstall" -c "qa"

#update new i3-gaps settings
sudo i3-msg restart

#clean some temporary files
sudo dnf clean all

chsh -s /bin/zsh $SUDO_USER # Changes the default shell from presumably bash to zsh

#!!!!STVARI KOJE USER KOJI INSTALIRA MORA DA URADI:
#1. polybar internet speed da se namesti:
#			treba promeniti interface u config file-u polybar-a, znaci odes u ~/.config/polybar/config, nadjes modul za internet i promenis interface u: interface sa komandom:"ip link show", ne mora da znaci da je prvi interface u izlazu te komande, ali tu je vrv

#2.

#3. optional: but consider making it so you dont ever have to type the password when doing "sudo X", you can do that by: "sudo visudo", and adding "$USER ALL=(ALL) NOPASSWD: ALL", where $USER is your username to the end of the file.

#4. optional: github ssh

#5. optional: .config/git/config email and username set to your own

#6. optional: the grub2(bootloader) theme, read the README.md
