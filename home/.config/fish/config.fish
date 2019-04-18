	if status --is-login 
		if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
		       startx
		       
		       
		end 
	end

	if not [ $TERM = "screen-256color" ]
		tmx 
		usder
	end 


set -gx GPG_AGENT_INFO $XDG_RUNTIME_DIR/gnupg/S.gpg-agent

eval (python -m virtualfish) 

vf activate derp

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
    xinput set-prop 19 299 0   
end
#cowsay -f satanic (date +%d%a%b%y\|%R\.)
#bax eval (fasd --init auto)
#source /usr/share/chruby/{chruby,auto}.fish

set -gx BROWSER firefox-nightly
base16-dracula
