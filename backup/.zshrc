# For the newuser thing, type in terminal:
#         autoload -Uz zsh-newuser-install
#         zsh-newuser-install -f

# Lines configured by zsh-newuser-install
# TODO:
#         ponovo proci kroz newuser thing
#         pogledati sta koja komanda radi
#         staviti beskonacan history
#         staviti history file gde treba da bude
#         Ps1
#         Vim normal mode i instert mode prompt da ne trepti, iz nekog razloga luke smithu ne trepti i mental outlaw-u ne trepti

autoload -U colors && colors

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=10000000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

# Luke smith:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
comp_options+=(globdots) # Include hidden files

# idk, luke smith nesto za vim valjd
export KEYTIMEOUT=1

# Ctrl+e to edit command in nvim
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line


# Autocompletion navigation with vim keys(luke smith):
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-up-line-or-history
bindkey -M menuselect 'k' vi-forward-char
bindkey -M menuselect 'l' vi-down-line-or-history
bindkey -v '^?' backward-delete-char



## Change cursor shape for different vi modes.
#function zle-keymap-select {
#  if [[ ${KEYMAP} == vicmd ]] ||
#     [[ $1 = 'block' ]]; then
#    echo -ne '\e[1 q'
#  elif [[ ${KEYMAP} == main ]] ||
#       [[ ${KEYMAP} == viins ]] ||
#       [[ ${KEYMAP} = '' ]] ||
#       [[ $1 = 'beam' ]]; then
#    echo -ne '\e[5 q'
#  fi
#}
#zle -N zle-keymap-select
#zle-line-init() {
#    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
#    echo -ne "\e[5 q"
#}
#zle -N zle-line-init
#echo -ne '\e[5 q' # Use beam shape cursor on startup.
#preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.


# Iz .bashrc--------
alias sudo="sudo " # Da li je ovo potrebno, pogledaj kod luke smith-a
alias d="sudo dnf"
alias D="sudo dnf -y"
alias v="nvim -S ~/.vimrc"
alias nvim="nvim -S ~/.vimrc"
alias mkdir="mkdir -pv"
alias mkd="mkdir -pv"
alias cp="cp -vi"
alias mv="mv -vi"
alias rm="rm -v"
alias rmdir="rmdir -v"
alias ls="ls -h --color=auto --group-directories-first"
alias grep="grep --color=auto"
alias diff="diff --color=auto"
alias starwars="telnet towel.blinkenlights.nl"
alias bt="blueman-manager"
alias snd="pavucontrol"
#za paljenje terminala u trenutnom directoriju
alias term="exec alacritty&"
#alias yt="youtube-dl --add-metadata -ic" #download video link
#alias yta="youtube-dl --addmetadata -xic" #download only audio
#alias YT="youtube-viewer"

#luke smith PS1: export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
#PS1='-> '
export PS1=" Miloos->  "

#-----
#LS_COLORS='di=1;35:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90:*.png=35:*.gif=36:*.jpg=35:*.c=92:*.jar=33:*.py=93:*.h=90:*.txt=94:*.doc=104:*.docx=104:*.odt=104:*.csv=102:*.xlsx=102:*.xlsm=102:*.rb=31:*.cpp=92:*.sh=92:*.html=96:*.zip=4;33:*.tar.gz=4;33:*.mp4=105:*.mp3=106'
#export LS_COLORS



# george hotz colors for macOS, does NOT work on linux, might consider converting it to linux
#export LS_COLORS=cxgxfxexbxegedabagacad

export EDITOR='nvim'
#-----
# Just some small conviniences
alias cfi="nvim ~/.config/i3/config"
alias cfv="nvim ~/.vimrc"
alias cfb="nvim ~/.bashrc"
