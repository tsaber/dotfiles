if not set -q PATH 
	set -gx PATH $fish_user_paths
end
eval (python -m virtualfish)




if test -z "$DBUS_SESSION_BUS_ADDRESS"
        bass (dbus-launch --sh-syntax)
end

if not set -q TMUX
	tmx
end


function homeshick
	if test \( (count $argv) = 2 -a "$argv[1]" = "cd" \)
		cd "$HOME/.homesick/repos/$argv[2]"
	else if set -q HOMESHICK_DIR
		eval $HOMESHICK_DIR/bin/homeshick (string escape -- $argv)
	else
		eval $HOME/.homesick/repos/homeshick/bin/homeshick (string escape -- $argv)
	end
end

if status is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end


task ls (random 1 (task ls | tail -n 1| cut -d't' -f1)) 2> /dev/null
cowsay good moorning
