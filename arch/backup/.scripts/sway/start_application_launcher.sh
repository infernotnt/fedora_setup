#!/bin/bash

TERMINAL="alacritty"

# Starts an "application launcher", that is actually just clever use of fzf

output1=$(ps -ef | grep 'application_launcher' | grep -vc -e 'grep application_launcher' -e 'start_application_launcher.sh')

echo "EVO GA ${output1}"
if [ "${output1}" == "1" ]
     then
          ps -ef | grep 'application_launcher' | grep -v -e 'grep application_launcher' -e 'start_application_launcher.sh' | awk '{print $2}' | xargs -r kill
     else
          $TERMINAL --title application_launcher -e bash -c 'compgen -c | grep -v fzf | sort -u | fzf --layout=reverse | xargs -r swaymsg -t command exec'
fi
