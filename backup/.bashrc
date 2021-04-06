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

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
shopt -s autocd #mozes menjati directory bez cd, npr: asdf = cd asdf
#stty -ixon # iskljuci ctrl-s i ctrl-q, iskljuceno jer ne radi
HISTSIZE= HISTFILESIZE= #beskonacna istorija komandi

alias sudo="sudo " #potrebno da bi sudo radio sa drugim aliasima
alias d="sudo dnf"
alias D="sudo dnf -y"
alias v="nvim -S ~/.vimrc"
alias nvim="nvim -S ~/.vimrc"
alias mkdir="mkdir -pv"
alias cp="cp -v"
alias mv="mv -v"
alias rm="rm -v"
alias rmdir="rmdir -v"
alias ls="ls -h --color=auto --group-directories-first"
alias grep="grep --color=auto"
alias starwars="telnet towel.blinkenlights.nl"
alias bt="blueman-manager"
alias snd="pavucontrol"
#za paljenje terminala u trenutnom directoriju
alias term="exec alacritty&"
#alias yt="youtube-dl --add-metadata -ic" #download video link
#alias yta="youtube-dl --addmetadata -xic" #download only audio
#alias YT="youtube-viewer"
PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
