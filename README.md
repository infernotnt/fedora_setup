# fedora_setup
- This was made using Fedora(v33).

- WORKS ONLY ON X11. IF YOU HAVE WAYLAND IT DOES NOT WORK.

- Run it on a completely fresh/new fedora install.

- Run "install_fedora_setup.sh" to install it on your local machine. The ONLY way to run it is "sudo ./install_fedora_setup.sh".

- If you later on change some of the settings on your machine and want those changes to be reflected on the automatic installer, run "update_backup_fedora_setup.sh". This will not change your local setup. It will only change the automatici installer.

- For a nice looking boot loader(a grub2 sekiro theme) do "git clone https://github.com/infernotnt/sekiro_grub_theme.git"

- Compositor tutorial(applies only to X11): https://www.youtube.com/watch?v=3esPpe-fclI

- If you want to game, you will need to configure compton. Compton is being run from ~/.config/i3. Usefull video: # NOTE: compton might impact GAMING performance. Usefull video: https://www.youtube.com/watch?v=3esPpe-fclIe

## User todo
- Polybar network interface

- Changer sudoers file so you never have to type in password when doing "sudo".

## Some general keyboard settings:

- The caps lock key, and the escape key are swapped. It is much easier to use vim (and other stuff) like this.(TODO: komanda za x i wayland)(on X11, this is done in ~/.config/i3/config    -   setxkbmap -option caps:swapescape)

- Smaller key repeat. (X11, ~/.config/i3/config  -  xset rate 250 25)

## The actual shorcuts

- Mod + W			- web browser (default: brave) (w=web)

- Mod + Enter		- terminal (default: alacritty)

- Mod + Shift + d		- kill currently focused window (vim-like) (d=delete)

- Mod + h/j/k/l		- focus the left/down/up/right window (vim-like)

- Mod + Ctrl + h/j/k/l	- move the focused window to the left/down/up/right (vim-like)

- Mod + Alt + h/j/k/l	- resize the window to the left/down/up/right window (vim-like)

- Mod + s			- lock the screen. NOT REALLY SECURE, CAN BE BYPASSED. ALSO NO ENCRYPTION USED (s=secure)

## Tips for new users

- If running windows 10, consider using "autohotkey" instead of sway/i3.

- To learn vim, you can use "vimtutor". There are also some simple games that teach you.

- To learn basics of git, do "man 7 giteveryday"


### Backup todo:

- ovo mora: chown na svaki file, npr .bashrc i .zshrc radi samo ako se oba usera zovu milos najvrv, mozes proveriti

- ^e kao edit komande u nvim ne radi
- backup brave shit
- mozda moze da se napravi integracija sa google drive tako da se tamo salje samo enkriptovano, ili ima neki drugi servis mozda koji to provajduje, nije bitno za sad, ovo je mali prioritet, prvo napravi automastki da se uploaduje i sve to, ni ne moram uploadovati sve fajlove, tako da i nije problem da se uploaduje ne-enkriptovano
- .ssh full setup u skriptama
- update na google drive shortcute za terminal (ctrl w, ctrl e, itd), u smislu: obrisati one koje nisu potrebne jer se koristi vim mode, ostaviti c-d, c-l, c-a, c-w i mozda jos neke

### ricing_todo.txt

#first priority(functonal):
- i3 bindings,
- tabbed layout, float ,float pemranje misom n shit
- tabular view workspace-ova
- workspace-ovi
- calculator, i shortcut za njega
- Vim markdown latex note taking: https://www.youtube.com/watch?v=zB_3FIGRWRU
- dodati da se moze menjati tastatura, shorcut isti kao na windows 10 (dodati srpsku latinicu i cirilicu kao default i ./install_fedora_setup.sh?)
- dodati da se mozda autocompletuje na 2. tabu,a da opcije nudi odma na 1.
- proveriti da li je system san francisco instaliran

#Second priority

- brave staviti da brzi skroll bude, kao na windowsu

- neka bolja verzija htop(luke smith vrv)(ctrl + alt + delte, ili ctrl + shift + esc mozda)

- file browser

- ikone: svi koriste papyrus

- na brave-browseru bookmark folder "vim"

- premestiti polybar skripte u ~/.scripts

- zsh, tab completion navigation h/j/k/l da radi i kad je terminal mali?

- ono sranje za mute od luke smith

- vim TODO stoji u .vimrc

- naci i configure file explorer i ikonice lepe staiviti

- za skrinsot program(parag): flameshot?

## Potencijalne ideje:

- navodno rofi moze da se koristi kao application switcher? sta ovo znaci?

- mozda znak fedore(obojen?) gore desno na polybar ili tako negde

- videti why the f je dnf tolko spor na pocetku(non ricing)

- zvuk kada se utakne usb

- ona macka kada se pojacava zvuk

- kad god uradis "cd" ili "clear" u terminalu, ispise "ls", "pwd" i mozda neke git stvari

- mozda kao neki mode, ili da to bude default, u sustini, kada upalis samo jedan window, nece biti lockovan nego ce stojati negde na sredini, mozda je najbolje ovako nesto staviti kao da prepozna koji window si upalio i onda da ga namestI? a ako ne prepozna samo da ga lockuje full screen, a mozda i ne, a mozda nesto od ovoga iskominovano i jos iskombinujes za vise windowa, ne znam stvarno, i jos ni settingse sa floating windowe nisam namestio tkd sta ja mogu da kazem

- cool shit za read: SLS(distro, otack slackware, znaci slackware ipak nije najstariji linux distro?),lindows (distro), damn vulnerable linux(distro), enoch(otac gentoo), torbox/whonix, fuduntu(distro, fedora+ubuntu?), WGS linux pro(distro, fedorin brat blizanac?), linux router project -> LEAF

### Kul programi:

- pazi, moving between directories in cli
- hyperfine, tool for benchmarking
- exa, prettier ls (exa -T, exa -lT, exa -IT, exa --icons,...)
- SUPER: tokei, for counting lines of code
- vim u rust-u(samo 11k redova): https://github.com/jmacdonald/amp
- timeshift, valjda nesto za backup
