#TODO DANAS:
     * iz nekog razloga run_gammastep.sh ostane upaljen u pozadini stalno? vidi da li treba staviti exit na kraju skirpte, i vidi da li su i sve ostale skripte tako da ostaju u pozadini ukljucene, zasto?, mozda i tamo treba staviti taj exit na kraju
     * tastatura, pogledati kakav je shortcut na windows 10, staviti jedan od tih, ili vise
     * tastatura display na waybar kao na windows 10
     * bluelight, toggle (shorcut? ili samo dovojlno da se klikne nesto na tray? mozda custom module da napravim ali da izgleda kao da je na tray-u samo da bi mogao da bude clickable??)za bluelight
     * workspace
     * Korisne skripte (Misc. Scripts): https://github.com/swaywm/sway/wiki/Useful-add-ons-for-sway

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
     * u install skripti, nemoj koristiti sudo, neko neku promenljivu, tipa $AUTH, i onda mogu staviti umesto nje "doas" umesto "sudo".


#TODO RICE (prio 1):
     * brave working with video playback
     * bluetooth
     * spotify
     * waybar,
          * luke smith video za temperature, ima jos nesto, ima video na jutubu za zscroll
          * workspace-ovi ima na youtube-u i na unixporn ideje, msm da imam jednu dobru u bookmarks
          * kliktanje na bluetooth module upale blueman
          * spotify module, sa dugmadima za premotavanje pesme i potencijalno pauziranje
     * sort celog sway configa?, da bi mogao posle da dodajem nova sranja


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
     * waybar: ona dugmadi za: screen lock, suspend, restart, power off: da se sva stave na jedno dugme, koje kad kliknes expand-uje se. ako to upste moze u waybar-u.
     * waybar: kad kliknes na sat, ili datum ili tako nesto, upali se kalendar
     * navnodno (proveri) --no-startup-id, ne radi nista u sway-u, tako da se moze obrisati, mada, mozda bi bilo dobro ostaviti za backwards comptability?
     * dircolors
     * base16 themes? (tip koji je spomenuo je hard hard core ricer, mozda je previse ovo)
     * quote za rice na dnu fajla
     * dmenu, rofi, wofi
     * fade (kao compton)
     * waybar: seperator na right modules izmedju tray-a (ili kako god se zove, ono za recimo discord i gammashift itd...) i ostalih stvari desno od njega (net itd...)


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

#TODO laptop: wifi, baterija, brightness?

#waybar random ideje:
     * termometar za temperaturu da bude napunjen do kraja ili skroz prazan


#TODO USER - PRE-INSTALL
     * pre svega, mozda namestiti pacman config da bude lep dok se sve skida, ako moze bez sed, bilo bi super
     * username? depends on the installer i guess, maby just make it so the user has to run with an alredy made non root account (but still in sudoers file)?
     * set your grahics card drivers

#TODO USER - POST-INSTALL:
     * change ~/.config/git/config
     * visudo, add yourself to wheel and make it so password isn't required(TODO: this is perhaps possible to automate)
     * your location for gammastep (.config/gammastep)
     * keyboard layout (english and serbian by default)

#===========================================================================================


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

#Quote za rice:
In my opinion, what matter the most to make your desktop experience look elegant is to make colors consistent across apps.

Start at base16, it is a way to standardize coloring across apps. Choose a color scheme (you can create your own but I would start by one of the defaults). This can be some gruesome work, as some apps are not so friendly to customization.

As other users said Waybar is important. Choose what information you need to be displayed and try to apply the color you choose. You can see some reference for Waybar on github or on r/unixporn.

For Sway itself, the only coloring is in the title bar and window border. Look for "client.<class>" on Sway man page for how to change the coloring of that.

Then there is the Browser and the Terminal which are generally the most important apps. I guess it is safe to say that most of us try to use a browser with no UI. Qutebrowser is popular, I use Firefox+Trydactyl. Again try applying the colors of your color scheme using base16.

For terminal there are plenty of options but I usually go for either Alacritty or Kitty. Applying the colors is fairly easy, use can again use base16 or copy one of the many dotfiles you will find online.
