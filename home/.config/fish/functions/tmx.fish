# Defined in /tmp/fish.inXCRI/tmx.fish @ line 2
function tmx
	tmux -2 attach -t (tmux ls | grep -vm 1 attached | cut -d':' -f1 ); or tmux -2
end
