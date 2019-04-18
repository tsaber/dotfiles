tmx

#set -gx PATH $fish_user_paths



eval (python -m virtualfish)



if status --is-interactive
	bass eval (dbus-launch)
end


#if not set -q SSH_AGENT_PID
	#bass eval (ssh-agent -a $t/ssh-agent.socket)
	#end



function homeshick
	if test \( (count $argv) = 2 -a "$argv[1]" = "cd" \)
		cd "$HOME/.homesick/repos/$argv[2]"
	else if set -q HOMESHICK_DIR
		eval $HOMESHICK_DIR/bin/homeshick (string escape -- $argv)
	else
		eval $HOME/.homesick/repos/homeshick/bin/homeshick (string escape -- $argv)
	end
end

if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end
