#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

[[ -f ~/.Xdefaults ]] && xrdb -merge ~/.Xdefaults


userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi
#if [ $TERM = linux ] || [ -e "/etc/systemd/system/graphical.target.wants/xlogin@$(whoami).service" ] ; then
# Here Bspwm is kept as default
dbus-update-activation-environment --systemd \
	DBUS_SESSION_BUS_ADDRESS DISPLAY AUTHORITY
i3
#exec dbus-launch --sh-syntax --exit-with-session i3;;

#case $session in
#	awesome 		  ) exec dbus-launch --sh-syntax --exit-with-session awesome;;
#	jwm 			  ) exec dbus-launch --sh-syntax --exit-with-session jwm;;
#	deepin 			  ) exec dbus-launch --sh-syntax --exit-with-session startdde;;
#	enlightenment 	  ) exec dbus-launch --sh-syntax --exit-with-session enlightenment_start;;
#	gnome 			  ) exec dbus-launch --sh-syntax --exit-with-session gnome-session;;
#	bspwm 			  ) exec dbus-launch --sh-syntax --exit-with-session bspwm;;
#    lxde 	          ) exec dbus-launch --sh-syntax --exit-with-session startlxde;;
#    lxqt         	  ) exec dbus-launch --sh-syntax --exit-with-session lxqt-session;;
#    i3|i3wm           ) exec dbus-launch --sh-syntax --exit-with-session i3;;
