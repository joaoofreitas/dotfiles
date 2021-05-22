#!/bin/bash

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
  for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
    [ -x "$f" ] && . "$f"
    done
  unset f
fi

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
exec dwm
