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
