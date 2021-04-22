#TODO arch_install:
     pre svega, mozda namestiti pacman config da bude lep dok se sve skida, ako moze bez sed, bilo bi super

#TODO rice:
     aur
     ps1
     swaybar, waybar
     rofi, wofi, ona komanda
     auto sound
     bluetooth
     fade (kao compton)


Arch komande se obicno sastoje od prvo jednog velikog slova(e.g., S, R, Q) i mnogo malih slova.



pacman -S, sync(install/update) package

pacman -Syu, synhonize package database and upgrade whole system(recommended)
pacman -Sy, syncrhonize package database(not recommended)
pacman -Su, upgrade whole system(not recommended)

pacman -Syyu, kad ima 2 y, tera ga da update-uje database iako je keshiran update od malo pre
pacman -Sw, skine, ali i ne instalira nego ostavi download file, pa ti sam moras posle instalirati

pacman -Ss, search all packages in title and description

pacman -R, remove package
pacman -Rs, remove package and its unused dependencies
pacman -Rn, remove package and its system config files

pacman -Rsn, best for removing a package

pacman -Q, prints all installed packages
pacman -Qe, prints all explicitly installed packages
pacman -Qq, does not print out the version, only the program name (q radi skoro svuda)

pacman -Qdt, list of orphans

pacman -Qs, search for locally installed packages

U file-u /etc/pacman.conf:

# Misc options
#UseSyslog
Color
TotalDownload
CheckSpace
VerbosePkgLists
ILoveCandy

