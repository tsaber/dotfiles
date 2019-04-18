# Defined in /tmp/fish.Wjpfj8/dberp.fish @ line 2
function dberp
	if test $DBUS_SESSION_BUS_ADDRESS = "/run/user/1000/dbus/user_bus_socket" 
            echo $DBUS_SESSION_BUS_ADDRESS 
end
end
