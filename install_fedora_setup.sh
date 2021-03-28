#!/bin/bash
#If you can't "sudo", and when you try, the terminal outputs that you need to in the sudoers file, try "sudo usermod -aG wheel username". If adding the user to the group does not work immediately, you may have to edit the /etc/sudoers file to uncomment the line with the group name(https://docs.fedoraproject.org/en-US/quick-docs/adding_user_to_sudoers_file/):
# $ sudo visudo
# ...
# %wheel ALL=(ALL) ALL

if [[ $EUID > 0 ]]
then echo "Please run with sudo.(The ONLY way you should is \"sudo ./install_fedora_setup.sh\")"
	exit
fi
USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)

#mala dekoracija: terminal ce pocinjati sa necim tipa "milos@fed:$"
sudo hostnamectl set-hostname fed

sudo dnf -y upgrade

sudo dnf -y remove vi
sudo dnf -y remove vim
sudo dnf -y remove i3
sudo dnf -y copr enable fuhrmann/i3-gaps; 

sudo dnf -y install i3-gaps polybar alacritty compton neovim firefox rofi feh git youtube-dl cava cmatrix neofetch htop playerctl
#opciono
sudo dnf -y install mpv

sudo mkdir -v $USER_HOME/.config
sudo mkdir -v $USER_HOME/.scripts
sudo mkdir -v $USER_HOME/.fonts

sudo cp -rvp backup/.config/i3 $USER_HOME/.config/i3
sudo cp -rvp backup/.config/polybar $USER_HOME/.config/polybar
sudo cp -rvp backup/.scripts/* $USER_HOME/.scripts
sudo cp -rvp backup/.fonts/* $USER_HOME/.fonts/

sudo cp -vp backup/.vimrc $USER_HOME/.vimrc
sudo cp -vp backup/.bashrc $USER_HOME/.bashrc
sudo cp -vp backup/.profile $USER_HOME/.profile

sudo fc-cache -f -v

sudo mkdir -pv $USER_HOME/Pictures/wallpaper
sudo cp backup/wallpaper $USER_HOME/Pictures/wallpaper

#download za vim-plug. vim-plug ti daje da skidas plugin-ove za vim/nvim
#OVDEM MOZDA GRESKA SA USER_HOME UMESTO HOME
sh -c 'curl -fLo "${XDG_DATA_HOME:-$USER_HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#ovo treba da instalira sve plug-inove(preko PlugInstall) koje se nalaze u ~/.vimrc
nvim +'PlugInstall --sync' +qa
#nvim --headless +PlugInstall +qall

#update new i3-gaps settings
sudo i3-msg restart

#!!!!STVARI KOJE USER KOJI INSTALIRA MORA DA URADI: 
#1. polybar internet speed da se namesti:
#			treba promeniti interface u config file-u polybar-a, znaci odes u ~/.config/polybar/config, nadjes modul za internet i promenis interface u: interface sa komandom:"ip link show", ne mora da znaci da je prvi interface u izlazu te komande, ali tu je vrv
#2. 
