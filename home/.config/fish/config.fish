if status is-login 
	if test -z "$DISPLAY" -a $XDG_VTNR = 1 
	        cdm 	
	end 
end
if not [ $TERM = "tmux-256color" ]
	tmx 
end 

set -Ux fish_user_paths /usr/bin /home/zava/bin /home/zava/.fzf/bin /home/zava/.fzf/ /usr/bin/{vendor,site,core}-perl $JAVA_HOME/bin /usr/lib64/node_modules/ /home/zava/node_modules /opt/android-sdk/platform-tools /opt/android-sdk/build-tools/28.0.3



set -gx GPG_AGENT_INFO $XDG_RUNTIME_DIR/gnupg/S.gpg-agent
set -gx SSH_AUTH_SOCK $XDG_RUNTIME_DIR/gnupg/S.gpg-agent.ssh

eval (python -m virtualfish) 

if test -z "$DBUS_SESSION_BUS_ADDRESS"
	set -ge DBUS_SESSION_BUS_ADDRESS
        set -Ux DBUS_SESSION_BUS_ADDRESS unix:path=/run/user/1000/dbus/user_dbus_socket
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

cowsay -f kitty -e ee lol
#eval (fasd --init auto)
#source /usr/share/chruby/{chruby,auto}.fish
base16 brogrammer
