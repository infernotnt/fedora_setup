# The following lines were added by compinstall

zstyle ':completion:*' auto-description 'specify %d'
zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' insert-unambiguous false
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]} m:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-/]=** r:|=**' 'l:|=* r:|=*'
zstyle ':completion:*' menu select=1
zstyle ':completion:*' original true
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl true
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/milos/.zshrc'

# NOTE: you CAN still use many emacs(and other) style commands in vim (either modes), e.g. Ctrl+w, Ctrl+d, Ctrl+l

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

#----------------------------------------------------------------------------------------------------------------------------
# TODO:
#         comp_options+=(globdots) # Include hidden files ( luke smith)
#         da zsh stoji negde lepse, na initrc stoji negde lepse (luke smith, cleaning your home)
#         dodati oba u update i install skriptu

stty -ixon # Disable ctrl-s and ctrl-q

export KEYTIMEOUT=1 # Something for vim mode. Does not matter in practice.

# Ctrl+e to edit currently typed command in your choosen text editor ($EDITOR)
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Autocompletion navigation with vim keys(luke smith):
zmodload zsh/complist # Just necessary for things
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-up-line-or-history
bindkey -M menuselect 'k' vi-forward-char
bindkey -M menuselect 'l' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor for different vi modes
#------------------------------------------------------------
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[2 q';;      # block
        viins|main) echo -ne '\e[6 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[6 q"
}
zle -N zle-line-init
echo -ne '\e[6 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[6 q' ;} # Use beam shape cursor for each new prompt.

#------------------------------------------------------------

alias sudo="sudo "
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
alias term="exec alacritty&" # Opens terminal in current directory

#alias yt="youtube-dl --add-metadata -ic" #download video link
#alias yta="youtube-dl --addmetadata -xic" #download only audio
#alias YT="youtube-viewer"

#luke smith PS1: export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
PS1='-> '

#-----
#LS_COLORS='di=1;35:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90:*.png=35:*.gif=36:*.jpg=35:*.c=92:*.jar=33:*.py=93:*.h=90:*.txt=94:*.doc=104:*.docx=104:*.odt=104:*.csv=102:*.xlsx=102:*.xlsm=102:*.rb=31:*.cpp=92:*.sh=92:*.html=96:*.zip=4;33:*.tar.gz=4;33:*.mp4=105:*.mp3=106'
#export LS_COLORS



# george hotz colors for macOS, does NOT work on linux, might consider converting it to linux
#export LS_COLORS=cxgxfxexbxegedabagacad
#-----
# Just some small conviniences
alias cfi="nvim ~/.config/i3/config"
alias cfv="nvim ~/.vimrc"
alias cfb="nvim ~/.bashrc"
alias cfz="nvim ~/.zshrc"
alias cfr="nvim ~/fedora_setup/README.md"

