# Defined in /tmp/fish.Zlgu8e/DBEB.fish @ line 1
function DBEB
	set DERB $DBUS_SESSION_SOCKET_ADDRESS
        if [ $DERB = "/run/user/1000/user_bus_socket" ]
             bass (dbus-launch)
end
end
