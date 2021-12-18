#!/bin/bash

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
  for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
    [ -x "$f" ] && . "$f"
    done
  unset f
fi

# Quick Alias (Set on .zshrc or .bashrc)
alias coffee='xset s on dpms'


# Intellij Settings
export _JAVA_AWT_WM_NONREPARENTING=1 
export AWT_TOOLKIT=MToolkit 
wmname LG3D

# Init modules
dunst &
dwmbar &
compton &
nitrogen --restore &
setxkbmap -layout pt;

xrandr --output DisplayPort-1 --rate 144 --mode 3440x1440 --primary
exec dwm
