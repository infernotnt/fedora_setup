#! /bin/bash
#If you can't "sudo", and when you try, the terminal outputs that you need to in the sudoers file, try "sudo usermod -aG wheel username". If adding the user to the group does not work immediately, you may have to edit the /etc/sudoers file to uncomment the line with the group name(https://docs.fedoraproject.org/en-US/quick-docs/adding_user_to_sudoers_file/):
# $ sudo visudo
# ...
# %wheel ALL=(ALL) ALL



#mala dekoracija: terminal ce pocinjati sa necim tipa "milos@fed:$"
sudo hostnamectl set-hostname fed

sudo dnf -y update
sudo dnf -y upgrade
sudo dnf -y update

sudo dnf -y remove vi
sudo dnf -y remove vim
sudo dnf -y remove i3; sudo dnf -y copr enable fuhrmann/i3-gaps; 
sudo dnf -y install i3-gaps polybar alacritty compton neovim firefox rofi feh git youtube-dl cava cmatrix neofetch htop playerctl
#opciono
sudo dnf install mpv

sudo mkdir -v ~/.config
sudo mkdir -v ~/.scripts
sudo mkdir -v ~/.fonts

sudo cp -rv backup/.config/i3 ~/.config/i3
sudo cp -rv backup/.config/polybar ~/.config/polybar
sudo cp -rv backup/.scripts/* ~/.scripts
sudo cp -rv backup/.fonts/* ~/.fonts/

sudo cp -v backup/.vimrc ~/.vimrc
sudo cp -v backup/.bashrc ~/.bashrc
sudo cp -v backup/.profile ~/.profile

sudo fc-cache -f -v

sudo mkdir -pv ~/Pictures/wallpaper
sudo cp backup/wallpaper ~/Pictures/wallpaper

#download za vim-plug. vim-plug ti daje da skidas plugin-ove za vim/nvim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#ovo treba da instalira sve plug-inove(preko PlugInstall) koje se nalaze u ~/.vimrc
#nvim +'PlugInstall --sync' +qa
#nvim --headless +PlugInstall +qall
nvim --headless +PlugInstall +qall

#update new i3-gaps settings
sudo i3-msg restart

#!!!!STVARI KOJE USER KOJI INSTALIRA MORA DA URADI: 
#1. polybar internet speed da se namesti:
#			treba promeniti interface u config file-u polybar-a, znaci odes u ~/.config/polybar/config, nadjes modul za internet i promenis interface u: interface sa komandom:"ip link show", ne mora da znaci da je prvi interface u izlazu te komande, ali tu je vrv
#2. 
