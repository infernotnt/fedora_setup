# fedora_setup
-This was made using Fedora(v33).

-Run it on a completely fresh/new fedora install.

-Run "install_fedora_setup.sh" to install it on your local machine. The ONLY way to run it is "sudo ./install_fedora_setup.sh".

-If you later on change some of the settings on your machine and want those changes to be reflected on the automatic installer, run "update_backup_fedora_setup.sh". This will not change your local setup. It will only change the automatici installer.

-For a nice looking boot loader(a grub2 sekiro theme) do "git clone https://github.com/infernotnt/sekiro_grub_theme.git"

-Compositor tutorial(applies only to X11): https://www.youtube.com/watch?v=3esPpe-fclI

## Some general keyboard settings:

-The caps lock key, and the escape key are swapped. It is much easier to use vim (and other stuff) like this.(TODO: komanda za x i wayland)(on X11, this is done in ~/.config/i3/config    -   setxkbmap -option caps:swapescape)

-Smaller key repeat. (X11, ~/.config/i3/config  -  xset rate 250 25)

## The actual shorcuts

-Mod + W			- web browser (default: brave) (w=web)

-Mod + Enter		- terminal (default: alacritty)

-Mod + Shift + d		- kill currently focused window (vim-like) (d=delete)

-Mod + h/j/k/l		- focus the left/down/up/right window (vim-like)

-Mod + Ctrl + h/j/k/l	- move the focused window to the left/down/up/right (vim-like)

TODO: -Mod + Alt + h/j/k/l	- resize the window to the left/down/up/right window (vim-like)

-Mod + s			- lock the screen. NOT REALLY SECURE, CAN BE BYPASSED. ALSO NO ENCRYPTION USED (s=secure)

## Tips for new users
- If running windows 10, consider autohotkey instead of i3

- To learn vim, you can use "vimtutor". There are also some simple games that teach you.

- To learn basics of git, do "man 7 giteveryday"


### TODO:

- ono sranje za mute od luke smith
- backup brave shit
- mozda moze da se napravi integracija sa google drive tako da se tamo salje samo enkriptovano, ili ima neki drugi servis mozda koji to provajduje, nije bitno za sad, ovo je mali prioritet, prvo napravi automastki da se uploaduje i sve to, ni ne moram uploadovati sve fajlove, tako da i nije problem da se uploaduje ne-enkriptovano
- .ssh full setup u skriptama
- .profile, what the fuck is that, ili ga ukloniti iz .config ili ga dodati u update skriptu ako je koristan
- .initrc, koristi se za da moze da se clear screen radi i u insert modu u zsh shellu
- dodati da se mozda autocompletuje na 2. tabu,a da opcije nudi odma na 1.
- update na google drive shortcute za terminal (ctrl w, ctrl e, itd), u smislu: obrisati one koje nisu potrebne jer se koristi vim mode, ostaviti c-d, c-l, c-a, c-w i mozda jos neke
### ricing_todo.txt

- transarency, compton, fade
- i3 bindings,
- mozda arc, arc dark, drakula ili kao se vec zove
- vsync
- tabbed layout, float ,float pemranje misom n shit
- workspace-ovi
- resize mozda bez alt
- ikone: svi koriste papyrus
- shortcut i3 za:
- neka bolja verzija htop(luke smith vrv)(ctrl + alt + delte, ili ctrl + shift + esc mozda)


NOVO:----------------------------------------
- tabular view workspace-ova
- mozda znak fedore(obojen?) gore desno na polybar ili tako negde
- videti why the f je dnf tolko spor na pocetku(non ricing)
- naci i configure file explorer i ikonice lepe staiviti
- zvuk kada se utakne usb
- ona macka kada se pojacava zvuk
- win+e pali file explorer(mora se promeniti keybind za i3lock)
- compton, ovde mozda ima bas mnogo da se gleda, fazon treba da izgleda lepo (one senke i tako neke stvari, slicno sa windows 10)
- smanjiti fade time na comptonu
- customize the shit out of compton
- spomenuti u readme.md da se ne treba gejmovati sa compositorom, i da moze freesync da se upali??MOZDA
- ovo mozda u backup: staviti onako da se brze klikce dugme kad ga drzis, korisno za vim, pogledati one duge videje na jutubu za vim, jedan od njih nesto spominje za to
- brave staviti da brzi skroll bude, kao na windowsu
- dodati neki shit koji moze da skrinsotuje, da selektujes isto, i nesto za wayland gde bi moglo da radi
- KUL IDEJA, ne znam da li ikad treba ovo uraditi ali eto nek stoji na nekoj listi kul ideja koje mogu da postoje: svaki put u termilalu kada uradis "cd" ili "clear" on automastki uradi "ls" I neko sranje za git mozda(ima na netu ps1 git shit vrv, mozda nesto drugo stvarno nemam pojma)
- ako ostavim window bordere na 2 pixela, ono zeleno sranje sto pokazuje kada sam splitovao window treba da bude samo 1 pixel siroko, iako su generalno borderi 2 pixela
- mozda staviti da se kalkulator pali na Super+C, i da ne bude ono luke smith sranje jer mozda bude upaljen u pozadini tad, proveri
- dodati da ti ispise sve odma posle 1 tab
- vim plugin za i3config, mozes ga ukloniti posle main setup shit
- note taking with markdown, mozda uradi integraziju sa google drive ili google notes, ako to radis stavi ta google spieware sranja u neki container ili tako nesto: https://www.youtube.com/watch?v=zB_3FIGRWRU
- na brave-browseru bookmark folder "vim"
- premestiti polybar skripte u ~/.scripts
- dodati da se moze menjati tastatura, shorcut isti kao na windows 10 (dodati srpsku latinicu i cirilicu kao default i ./install_fedora_setup.sh?)
- mozda kao neki mode, ili da to bude default, u sustini, kada upalis samo jedan window, nece biti lockovan nego ce stojati negde na sredini, mozda je najbolje ovako nesto staviti kao da prepozna koji window si upalio i onda da ga namestI? a ako ne prepozna samo da ga lockuje full screen, a mozda i ne, a mozda nesto od ovoga iskominovano i jos iskombinujes za vise windowa, ne znam stvarno, i jos ni settingse sa floating windowe nisam namestio tkd sta ja mogu da kazem
- dodati opciju da u vim moze da se koristi mis kao inance?
- customizacija onih registra, na primer mozda staviti ako radit Change da ne stavlja u registar? ovo bi bilo previse specificno za moj setup mozda. ne znam.
- dodati u vim kao, seach visual selection, ili taok nesto
- za nvim: navodno "coc" plugin, lynting?(idk dfq is this), plugin: vim-which-key(pomaze za keybindinge), plugin:fzf, slike u konzoli sa Uberzug?(luke smith, dt, video), plugin: nvim-colorizer oboji hex boje u samom tesktu(eye candy), airline ili lightline(mozda nijedan, vise je barebones osecaj)
- za skrinsot program(parag): flameshot?
- cool shit za read: SLS(distro, otack slackware, znaci slackware ipak nije najstariji linux distro?),lindows (distro), damn vulnerable linux(distro), enoch(otac gentoo), torbox/whonix, fuduntu(distro, fedora+ubuntu?), WGS linux pro(distro, fedorin brat blizanac?), linux router project -> LEAF
- zsh, tab completion navigation h/j/k/l da radi i kad je terminal mali?
- man page ricing
