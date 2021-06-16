#!/bin/bash

# Fontovi mozda ne rade: https://wiki.archlinux.org/index.php/fonts
# Pogledati na tom sajtu chmod 444 i dodavanje u neki direktorijum (manual installation)
if [[ $EUID > 0 ]]
then echo "Please run as root (or just use sudo)."
	exit
fi

echo "WARNING: The ONLY way to run this is as root (or sudo).\n"
echo "Make sure you ran it this way."
sleep 3


# User creation ===
printf "Your username: "
read USERNAME

#USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)
USER_HOME=/home/$USERNAME/

useradd $USERNAME -m -g wheel

passwd $USERNAME
# ===

hostnamectl set-hostname archio

pacman --noconfirm -Syu

pacman --noconfirm -S sudo man-db zsh htop parted neovim emacs

# NOTE: don't install if you have nvidia graphics card
pacman --noconfirm -S mesa

pacman --noconfirm -S sway swaylock swaybg waybar

pacman --noconfirm -S firefox alacritty

pacman --noconfirm -S youtube-dl shellcheck cmatrix playerctl

pacman --noconfirm -S zip unzip git tldr tokei tree neofetch ripgrep fzf 

# For google cloud sync (python3 for bidirectional sync: https://github.com/cjnaz/rclonesync-V2 )
pacman --noconfirm -S rclone python3

pacman --noconfirm -S alsa pavucontrol pulseaudio
#seems unnecessary? pacman --noconfirm -S alsa-utils TODO

pacman --noconfirm -S vlc qbittorrent # For screenshots. Grim is for screenshots. Slurp is for screenshoting a selected part of the screen. (wayland both)
pacman --noconfirm -S grim slurp

# Blue light filter (wayland) (disabled 'cause wl-sunset>gammstep)
#pacman --noconfirm -S gammastep

# MAXIMAL
# Za kompajlovanje, koristi se za AUR (iskljucen radi minimalizma)
pacman --noconfirm -S --needed base-devel

# MAXIMAL
# xorg-xwayland     - Needed for brave-browser. (he can't play videos on native (not sure, maybe fixable)
# xorg-xeyes        - Used for telling what program is running native wayland and which program is running xwayland
pacman --noconfirm -S xorg-xwayland xorg-xeyes


# Ne znam da li ovo ukljucuje server
pacman --noconfirm -S openssh

# wl-clipboard      -  copy pasting
# imv               -  image viewer
pacman --noconfirm -S wl-clipboard imv

# MAXIMAL VRLO MAXIMAL
#TODO, dodati da pita korisnika na pocetku (zajedno sa username i driver i ovo), da li zeli da skine latex, i da uzima tipa 2.5GB ili tako nesto
#pacman --noconfirm -S pandoc texlive-most

# Be able to read and write NTFS
sudo pacman --noconfirm -S ntfs-3g

#======Bluetooth

pacman --noconfirm -S bluez bluez-utils

# TODO, check wheather btusb module is loaded in kernel
systemctl enable --now bluetooth.service

# Vrv postoji nesto minimalnije ali ne znam da li da idem na tako nesto
pacman --noconfirm -S blueman

rfkill unblock bluetooth

#======


# Download za vim-plug. vim-plug ti daje da skidas plugin-ove za vim/nvim
# Mozda bez sudo?
sudo -u $USERNAME curl -fLo "${XDG_DATA_HOME:-$USER_HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Ovo treba da instalira sve plug-inove(preko PlugInstall) koje se nalaze u ~/.vimrc
sudo -u $USERNAME nvim -es -u ${USER_HOME}/.vimrc -i NONE -c "PlugInstall" -c "qa"

#--------------------------------------------------------------------------------------------------------

mkdir -v $USER_HOME/.config
mkdir -v $USER_HOME/.scripts
mkdir -pv $USER_HOME/.local/share/fonts

mkdir -pv $USER_HOME/.cache/temp_my_ms
mkdir -pv $USER_HOME/.cache/temp_my_ms/youtube-dl

cp -rv backup/.config/* $USER_HOME/.config/
cp -rv backup/.ssh $USER_HOME/.ssh
cp -rv backup/.scripts/* $USER_HOME/.scripts
cp -rv backup/.local/share/fonts/* $USER_HOME/.local/share/fonts/

cp -v backup/.zshenv $USER_HOME/.zshenv
cp -v backup/.profile $USER_HOME/.profile
cp -v backup/.inputrc $USER_HOME/.inputrc


mkdir -pv $USER_HOME/Pictures/
cp -r backup/wallpaper/ $USER_HOME/Pictures/wallpaper/
mkdir -pv $USER_HOME/Pictures/screenshots

fc-cache -f -v

# Make sure all the files are owned by the local user and not by the root account
chown -Rv $USERNAME $USER_HOME/
#chown -Rv $USERNAME $USER_HOME/.config
#chown -Rv $USERNAME $USER_HOME/.scripts
#chown -Rv $USERNAME $USER_HOME/.local
#chown -Rv $USERNAME $USER_HOME/.cache

# Changes the default shell from (presumably) bash to zsh, you must relog for this to take effect
chsh -s /bin/zsh $USERNAME 
