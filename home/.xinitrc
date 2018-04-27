#!/bin/sh
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi
#!/usr/bin/env bash

#mons --primary HDMI-2 -e left

# Faster key repeat and delay
# Stolen from http://unix.stackexchange.com/a/216238/40449
xset r rate 250 60

i3


