#TODO DANAS:
     * traj ili tako nesto valjda,
     * disk nemoj ubacivat

#TODO arch_install:
     pre svega, mozda namestiti pacman config da bude lep dok se sve skida, ako moze bez sed, bilo bi super

#TODO USER - BEFORE INSTALL
     * set your grahics card drivers

#TODO USER - AFTER INSTALL:
     * change ~/.config/git/config
     * visudo, add yourself to wheel and make it so password isn't required(TODO: this is perhaps possible to automate)

#guide
##waybar:
     * kliktanje na program u taskbaru: levi klik - focus; middle click - iskljuci
     * kad naciljas na procesor module pise koliko koji core trosi
     * kliktanje na cpu/memory module pali htop
     * audio module:
          * kliktanje na audio module pali pavucontrol
          * mouse scroll na pulseaudio module utisava/pojacava
          * desni klik - mute mikrofon
          * TODO: srednji klik - mute zvuk

#TODO backup:
     * ukloniti sve x11/i3 specific stvari iz sway configa. ima vrv mnogo vise stvari nego sto mislis koje treba da se uklone. msm da bi najbolji nacin bio da pogledam default sway config, pogledam moj, i izbacim sve iz mog sto ne znam tacno sta radi
     * dafuq is .config/zsh/.zcompdump?, vrv ne treba da bude u backupu
     * proveriti u virtual machine da li sve radi pre nego sto obrisem trenutni arch sistem
     * videti da pre nego sto pacman -S sway, prvo skinem mesa drivere ili one druge, treba videti koji se nude od ta 2
     * mozda staviti da se bluetooth module pali tek kada upalim sway? https://wiki.archlinux.org/index.php/Sway#Manage_Sway-specific_daemons_with_systemd
     * vim :PlugInstall i dalje nije automatski izgleda, ako budes automatizovao pazi posto se skripta nece raditi kao user account nego kao admin account
     * da pita za username, i onda je full instalacija sa sudo account-a, i da pita za driver koji se koristi, nvidia ili mesa
     * brave/firefox, njihovi settings i bookmarks potencijalno, ako budem njih dodavao, neka bude van github repositoryija, nego gitignore
     * awesome font mozda moze samo da se skine direktno iz repositorija (pacman -S ttf-font-awesome), mozda moze i na fedori
     * caps lock i escape swap vec u samom tty-u, ne oslanjaj se na sway


#TODO RICE (prio 1):
     * win+w doesn't open web browser
     * swaybar, waybar,
          * zscroll,
          * luke smith video za temperature, ima jos nesto, ima video na jutubu za zscroll
          * workspace-ovi ima na youtube-u i na unixporn ideje, msm da imam jednu dobru u bookmarks
          * mikrofon mute da pokaze, i mozda da se klikne
          * kliktanje na audio module pali "pavucontrol" ili nesto tako
          * kliktanje na bluetooth module upale blueman

     * brave working with video playback
     * rofi, wofi
     * bluetooth
     * fade (kao compton)

## rice (prio 2)
     * dodati window border arch linux svetlo plavu opciju, i ostaviti onu fedora opciju
     * all floating shit, dodati i u fedora setup
     * na sway-u mi se cini da resize nije konstantne brzine nego se menja sa velicinom prozora
     * aur
     * dodati padding na alacritty
     * zsh da ne smara na auto-completion-u, videti da neka smaranja ostanu, npr ona sto retko budu
     * u konzoli kada uzmem proslu komandu <Escape, k> ne moze da se brise na <C-w> vecina komande
     * kul fonts
     * neki key binding-i za transparency, npr da ima jedan key koji smanji transparency trenutnog focusiranog prozora ili svih trenutno otvorenih terimnala ili tako nesto
     * staviti da se i compajluje markdown na F6 kao i c++ kod, i da se c++ kod koji se kompajluje zove po tom fajlu, npr asdf.cpp -> asdf
     * dodati da se floating windowi mogu "snap-ovati" kao na windowsu 10, onako u cetvrtine
     * bluelight, i na swaybar da bude gore neka click-able oznaka, mozda neki sway shortcut, mozda da bude uvek upaljeno u pozadini, ne znam stvarno. Ikonica na sway moze da bude npr neko oko ili tako nesto
     * pipes.sh kao wallpaper? (https://github.com/pipeseroni/pipes.sh)
     * cbonsai
     * dugme na waybar za sync note-ova na google drive? (ikonica kao strelice koje idu u krug)
     * lock screen na Super+S da sakrije ekran a da idle lock screen ne sakrije, samo blur, ako uopste bude idle lock screen (https://github.com/indicozy/sway-dotfiles), login manager shit      * login
     * papirus icons navodno dobar
     * kao jednu cetvrtinu navodno
     * alacritty terminal background color kao kod luke_smith/mental_outlaw
     * OD OVOG TIPA KRSA TOGA UZMI: https://github.com/infernotnt/sway-dotfiles (evo slike tog tipa https://www.reddit.com/r/unixporn/comments/msol11/sway_focus/)
     * da mi se application launcher upali na svim monitorima i da bude sinhonizovan. ovo je vrv vrlo tesko, pogledaj da li uopste na windows 10 ovo radi
     * kad stisten F1 ispise ti sva objasnjenja za shorctute. nesto potencijalno mozda za linux generalno one fajlove sa drajva
     * DOBRA IDEJA: da napravim kao drugi "mod" gde se korsiti scratchpad za: calculator, neki terminal i application launcher (da bi se sve brze palilo, pogotov application launcher), i tako neke stvari koje nisu toliko optimalne za idle usage ali su generlano korisne. Napravi da se lako, i tipa sa jednom komandom moze izaci iz ovog moda.
     * mozda ove skripte za shutdown kad kliknes na dugme u waybar-u da ne pale "zenity" nego dmenu, luke smith msm da ima video nesto slicno o tome za dmenu
     * numix icon theme?

#kul programi:
     vmrs - virtual richard stallman, kaze ti koji programi na tvom kompu nisu full-y free. msm da kaze i koji nemaju gpl license ili tako neke


#TODO nauciti (ne ovim redom):
     regx, (luke smith msm)
     wild card
     pgrep, pkill
     awk (izaberes koji argument zelis)
     xargs ("xargs -r <idk?>" je kul)
     sed (onaj tip iz medical schoola sto pravi vim tutoriale ima jedan dobar za ovo msm)


Downloaded compressed packages are still kept on the system at /var/cache/pacman/pkg/

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
