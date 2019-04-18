# Defined in /tmp/fish.T0f2pS/i3c.fish @ line 2
function i3c
	nvim /home/zava/.config/i3/config.base
	i3-msg exec "j4-make-config -r"
end
