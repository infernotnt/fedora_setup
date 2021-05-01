#TODO danas:
     1. bookmark resi, da moze ceo browser da se obrise
     1. bookmark na fedori resi, mozda prenesi?
     1. instaliraj arch opet
#TODO RICE (prio 1):
     * bluetooth
     * spotify
     * discord
     * waybar,
          * luke smith video za temperature, ima jos nesto, ima video na jutubu za zscroll
          * workspace-ovi ima na youtube-u i na unixporn ideje, msm da imam jednu dobru u bookmarks
          * kliktanje na bluetooth module upale blueman
          * spotify module, sa dugmadima za premotavanje pesme i potencijalno pauziranje
     * sort celog sway configa?, da bi mogao posle da dodajem nova sranja

     * iz nekog razloga run_wlsunset.sh ostane upaljen u pozadini stalno? vidi da li treba staviti exit na kraju skirpte, i vidi da li su i sve ostale skripte tako da ostaju u pozadini ukljucene, zasto?, mozda i tamo treba staviti taj exit na kraju
     * iz nekog razloga run_gammastep.sh ostane upaljen u pozadini stalno? vidi da li treba staviti exit na kraju skirpte, i vidi da li su i sve ostale skripte tako da ostaju u pozadini ukljucene, zasto?, mozda i tamo treba staviti taj exit na kraju
     * pipewire je ukljucen u pozadini i trosi resurse, dependency na neki drugi package je, wtfff
     * Korisne skripte (Misc. Scripts): https://github.com/swaywm/sway/wiki/Useful-add-ons-for-sway
     * workspace


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
     * svaviti wlsunset(aur?) ili gammastep u install skriptu i ukloniti onog drugog ako je vec tamo. isto uraditi za config files i scripts files
     * ukloniti nekoriscene skripte u ~/.scripts
     * kad stisten F1 ispise ti sva objasnjenja za shorctute. luke smith ima u larbs nesto ovako. nesto potencijalno mozda za linux generalno one fajlove sa drajva
     * navnodno (proveri) --no-startup-id, ne radi nista u sway-u, tako da se moze obrisati, mada, mozda bi bilo dobro ostaviti za backwards comptability?
     * ukloniti .vim (msm da se koristi za plug-inove)
     * ukloniti .mozilla, ili samo koristiti brave kek
     * screenshot sa selectovanjem i dalje ne radi (bar fajl nije save-ovan)

## rice (prio 2)
     * sway mechanics:
          * na sway-u mi se cini da resize nije konstantne brzine nego se menja sa velicinom prozora
          * all floating shit, dodati i u fedora setup
          * dodati da se floating windowi mogu "snap-ovati" kao na windowsu 10, onako u cetvrtine

     * volume control keybinds (potencijalno slicni kao windows 10, ako ih on uopste ima), i ona macka sto pop-uje
     * DOBRA IDEJA: da napravim kao drugi "mod" gde se korsiti scratchpad za: calculator, neki terminal i application launcher (da bi se sve brze palilo, pogotov application launcher), i tako neke stvari koje nisu toliko optimalne za idle usage ali su generlano korisne. Napravi da se lako, i tipa sa jednom komandom moze izaci iz ovog moda.
     * dodati window border arch linux svetlo plavu opciju, i ostaviti onu fedora opciju
     * aur
     * bluelight, i na waybar da bude gore neka click-able oznaka, mozda neki sway shortcut, mozda da bude uvek upaljeno u pozadini, ne znam stvarno. Ikonica na sway moze da bude npr neko oko ili tako nesto
     * dugme na waybar za sync note-ova na google drive? (ikonica kao strelice koje idu u krug)
     * numix icon theme?. papirus icons navodno dobar, waybar icon theme pogledati komenatar u .config/waybar/config

     * waybar:
          * mozda ove skripte za shutdown kad kliknes na dugme u waybar-u da ne pale "zenity" nego dmenu, luke smith msm da ima video nesto slicno o tome za dmenu
          * waybar: ona dugmadi za: screen lock, suspend, restart, power off: da se sva stave na jedno dugme, koje kad kliknes expand-uje se. ako to upste moze u waybar-u.
          * seperator na right modules izmedju tray-a (ili kako god se zove, ono za recimo discord i gammashift itd...) i ostalih stvari desno od njega (net itd...)
          * staviti vreme da bude negde distinguishable, da mogu jako lagano da samo glance-ujem i da vidim, npr u cosak ili tako nesto. Kako windows radi? (mozda stavi ispod toga jezik pa bude vislje nego drugi moduli)

     * usefull tools for sway(https://github.com/swaywm/sway/wiki/Useful-add-ons-for-sway): login, logout manager
     * quote za rice na dnu fajla
     * wlsusnset, navodno vise lightweight, mozda ne smara kao gammastep, pogledaj (najvrv koristi wlsusnset)
     * bluelight, toggle (shorcut? ili samo dovojlno da se klikne nesto na tray? mozda custom module da napravim ali da izgleda kao da je na tray-u samo da bi mogao da bude clickable??)za bluelight
     * u konzoli kada uzmem proslu komandu <Escape, k> ne moze da se brise na <C-w> vecina komande
     * zsh da ne smara na auto-completion-u, videti da neka smaranja ostanu, npr ona sto retko budu
     * kul fonts

# rice , nepotrebno, samo random ideje:
     * dodati padding na alacritty (window manager bi trebao ovo da radi a ne terminal)
     * pipes.sh kao lockscreen (https://github.com/pipeseroni/pipes.sh)
     * cbonsai na log-inu
     * waybar: kad kliknes na sat, ili datum ili tako nesto, upali se kalendar (malo nepotrebno, mogu samo da koristim google calendar ili tako nesto)
     ## look into it:
          * dircolors
          * base16 themes? (tip koji je spomenuo je hard hard core ricer, mozda je previse ovo)
          * fade (kao compton)
          * brave, plugin malo bolji od vimium: https://www.youtube.com/watch?v=QZO80CZB9Lw (5:00 je kul), vidi jel ovo moze vec sa vimium-om ili koji god plugin da koristim  trenutno
     * alacritty terminal background color kao kod luke_smith/mental_outlaw (zahtevalo bi konacno neko menjanje alacritty configa, a ne zelim bas to da radim jer kao, minimalizam mentalni)
     * dmenu, rofi, wofi
     * OD OVOG TIPA KRSA TOGA UZMI: https://github.com/infernotnt/sway-dotfiles (evo slike tog tipa https://www.reddit.com/r/unixporn/comments/msol11/sway_focus/)
     * vim, okej tip https://github.com/infernotnt/sway-dotfiles
     * neki key binding-i za transparency, npr da ima jedan key koji smanji transparency trenutnog focusiranog prozora ili svih trenutno otvorenih terimnala ili tako nesto




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
     * input language change: alt+shift (like in windows 10) (default: english, serbian latin, serbian cyrilic

#TODO laptop:
     * wifi, signal strength na ikonici i ime mreze
     * baterija
     * brightness

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
