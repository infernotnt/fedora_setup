#!/bin/bash

# If you application launcher is not called "alacritty --title application_launcher...." then you will need to modify this file.

TERMINAL="alacritty"

# Starts an "application launcher", that is actually just clever use of fzf

output1=$(ps -ef | grep 'alacritty --title application_launcher.*' | grep -v 'grep alacritty --title application_launcher.*') # List of processes that are assumed to be the apllication launcher

number=$(printf "$output1" | wc -w)

if [ "${number}" -gt 1 ]
     then
          printf "$output1" | awk '{print $2}' | xargs -r kill
     else
          $TERMINAL --title application_launcher -e bash -c 'compgen -c | grep -v fzf | sort -u | fzf --layout=reverse | xargs -r swaymsg -t command exec'
fi
