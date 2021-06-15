#!/bin/bash

## This script is used for puting the just saved screenshot to the system clipboard
#
#
## Wait for the sytem to save the screenshot (to the hdd/sdd) first
#sleep 1
#
## Takes the most recent sceenshot, determined by name, so it's important to not have any non-system generated screenshot files in ~/Pictures/screenshots or it could mess up this scripts
#screenshotFileName=$(head -1 <(sort --reverse <(ls ~/Pictures/screenshots)))
#
#pathToScreenshot="$HOME/Pictures/screenshots/$screenshotFileName"
#
## Puts the picture in the actual system clipboard
#wl-copy <$pathToScreenshot



# This script is used for putting the image in the current system (copy/paste) clipboard into a screenshot image file

sleep 1

screenshotFileName="screenshot-$(date +%Y-%m-%d-%H-%M-%S)"

pathToScreenshot="$HOME/Pictures/screenshots/$screenshotFileName"

wl-paste --type image/png >$pathToScreenshot

exit 0
