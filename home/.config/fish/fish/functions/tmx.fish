# Defined in /tmp/fish.HNecwO/tmx.fish @ line 2
function tmx
	set -l param (tmux ls | grep -vm 1 attached | cut -d: -f1)
	tmux -2 at -t $param ^ /dev/null;or tmux -2 ^ /dev/null
end
