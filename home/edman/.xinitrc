#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice

#######################################################
## My modifications start here

# set the cursor icon to something other than that x
xsetroot -cursor_name left_ptr &

# reduce screen brightness to 20%
xbacklight -set 20


# execute the window manager
exec xmonad

