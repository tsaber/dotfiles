# Defined in /tmp/fish.BHdq27/__zavale_le.fish @ line 1
function __zavale_le
	if not set -q tri
        set tri (task ls| head -n 4)
      end
end
