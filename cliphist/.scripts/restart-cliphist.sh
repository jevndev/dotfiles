#!/usr/bin/env zsh

pkill -f "wl-paste --watch"
wl-paste --watch cliphist store &
disown
