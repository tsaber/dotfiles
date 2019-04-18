# Defined in /tmp/fish.G7GTj9/__dbes.fish @ line 2
function __dbes
	if test $DBUS_SESSION_BUS_ADDRESS = "unix:abstract*"
	    set -Ue DBUS_SESSION_BUS_ADDRESS
            set -gx DBUS_SESSION_BUS_ADDRESS $DBUS_SESSION_BUS_ADDRESS
        end
end
