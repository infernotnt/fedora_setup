#!/bin/bash

#--interactive, --dry-run

#TODO, user home (without sudo?), nesto malo napisati o dokumentaciji? mada ovo moze samo u F1 file

# TODO: check this statement, what is -z?
[ -z "$1" ] && echo "ERROR: Not enough information specified (see ~/.scripts/rclone/rclone.sh)" && exit 1

if [ $1 == "dl" || $1 == "download" ]
    then
        rclone --verbose sync --progress ~/gdrive jedan:/sync
    else

if [ $1 == "ul" || $1 == "upload" ]
    then
        rclone --verbose sync --progress ~/gdrive jedan:/sync
    else
case $1 in
  up)
    moveChoice grow height
    ;;
  down)
    moveChoice shrink height
    ;;
  left)
    moveChoice grow width
    ;;
  right)
    moveChoice shrink width
    ;;
esac
