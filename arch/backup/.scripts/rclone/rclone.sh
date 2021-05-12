#!/bin/bash

[ -z "$1" ] && echo "ERROR: Not enough information specified (see ~/.scripts/rclone/rclone.sh)" && exit 1

if [ $1 == "dl" ] || [ $1 == "download" ]
then
    rclone --verbose sync --progress jedan:/sync ~/sync
elif [ $1 == "ul" ] || [ $1 == "upload" ]
then
    rclone --verbose sync --progress ~/sync jedan:/sync
else
    printf "ERROR: Argument not recognized (see ~/scripts/rclone/rclone.sh)"
fi

exit 1
