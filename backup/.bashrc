# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# ---------------------------------------------------------------------
#set -o vi # Turns on vi mode for bash
shopt -s autocd #mozes menjati directory bez cd, npr: asdf = cd asdf
stty -ixon # Disable ctrl-s and ctrl-q
HISTSIZE= HISTFILESIZE= #beskonacna istorija komandi

alias sudo="sudo " #potrebno da bi sudo radio sa drugim aliasima
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
export PS1=" \u\[\e[31m\] \[\e[m\]\[\e[31m\]:\[\e[m\]\[\e[31m\]:\[\e[m\] \[\e[32m\]\w\[\e[m\] \[\e[34m\]»\[\e[m\] "

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
