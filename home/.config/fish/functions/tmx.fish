# Defined in /tmp/fish.BldLdO/tmx.fish @ line 2
function tmx
	if not set -q TMUX
		tmux -2 attach -t (tmux ls | grep -vm 1 attached | cut -d':' -f1 ); or tmux -2 new
        end
end
