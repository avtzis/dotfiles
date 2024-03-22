#!/usr/bin/env bash

# Import Current Theme
source "$HOME"/.config/rofi/clipboard/shared/theme.bash
theme="$type/$style"

# Theme Elements
prompt='Clipboard History'
mesg="idk"
win_width='720px'

cliphist list | \
  rofi -theme-str "window {width: $win_width;}" \
    -dmenu \
    -markup-rows \
    -theme ${theme} | \
  cliphist decode | \
  wl-copy
