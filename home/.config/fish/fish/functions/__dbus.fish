# Defined in /tmp/fish.95vxDp/__dbus.fish @ line 1
function __dbus
	bass eval (dbus-launch)
	sleep 0.5; and dunst
end
