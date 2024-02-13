#!/bin/bash

entries=" Shutdown\n Lock\n Reboot\n"

selected=$(echo -e $entries|wofi --width 250 --height 240 --dmenu --cache-file /dev/null | awk '{print tolower($2)}')

case $selected in
  shutdown)
    shutdown now;;
  lock)
    swaylock;;
  reboot)
    reboot now;;
esac