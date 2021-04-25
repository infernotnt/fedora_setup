#TODO arch_install:
     pre svega, mozda namestiti pacman config da bude lep dok se sve skida, ako moze bez sed, bilo bi super

#TODO USER - AFTER INSTALL:
     * change ~/.config/git/config

#TODO backup:
     * proveriti u virtual machine da li sve radi pre nego sto obrisem trenutni arch sistem
     * videti da pre nego sto pacman -S sway, prvo skinem mesa drivere ili one druge, treba videti koji se nude od ta 2
     * mozda staviti da se bluetooth module pali tek kada upalim sway? https://wiki.archlinux.org/index.php/Sway#Manage_Sway-specific_daemons_with_systemd


#TODO RICE (prio 1):
     * swaybar, waybar,
          * zscroll,
          * luke smith video za temperature, ima jos nesto, ima video na jutubu za zscroll
          * workspace-ovi ima na youtube-u i na unixporn ideje, msm da imam jednu dobru u bookmarks

     * brave working with video playback
     * rofi, wofi
     * bluetooth
     * fade (kao compton)

## rice (prio 2)
     * all floating shit, dodati i u fedora setup
     * na sway-u mi se cini da resize nije konstantne brzine nego se menja sa velicinom prozora
     * aur
     * dodati padding na alacritty
     * zsh da ne smara na auto-completion-u, videti da neka smaranja ostanu, npr ona sto retko budu


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

pacman -Si, information for a package

pacman -Qi, information for a locally installed package
U file-u /etc/pacman.conf:

# Misc options
#UseSyslog
Color
TotalDownload
CheckSpace
VerbosePkgLists
ILoveCandy
