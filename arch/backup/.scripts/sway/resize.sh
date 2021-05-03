#!/bin/bash
# This script was made by `goferito` on Github.
# Some cleanup by Luke.

[ -z "$1" ] && echo "No direction provided" && exit 1
distanceStr="2 px or 2 ppt"

#moveChoice() {
#  swaymsg resize "$1" "$2" "$distanceStr" | grep '"success":true' || \
#  swaymsg resize "$3" "$4" "$distanceStr"
#}

moveChoice() {
  swaymsg resize "$1" "$2" 20 px
}
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

#case $1 in
#  up)
#    moveChoice grow up
#    ;;
#  down)
#    moveChoice grow down
#    ;;
#  left)
#    moveChoice grow left
#    ;;
#  right)
#    moveChoice grow right
#    ;;
#esac

#case $1 in
#  up)
#    moveChoice grow up shrink down
#    ;;
#  down)
#    moveChoice grow down shrink up
#    ;;
#  left)
#    moveChoice grow left shrink right
#    ;;
#  right)
#    moveChoice grow right shrink left
#    ;;
#esac


#case $1 in
#  up)
#    moveChoice grow up shrink down
#    ;;
#  down)
#    moveChoice shrink up grow down
#    ;;
#  left)
#    moveChoice shrink right grow left
#    ;;
#  right)
#    moveChoice grow right shrink left
#    ;;
#  cu)
#    moveChoice grow right shrink left
#    ;;
#esac
#

#case $1 in
#  up)
#    moveChoice grow up
#    ;;
#  down)
#    moveChoice grow down
#    ;;
#  left)
#    moveChoice grow left
#    ;;
#  right)
#    moveChoice grow right
#    ;;
#  cu)
#    moveChoice grow right shrink left
#    ;;
#esac
