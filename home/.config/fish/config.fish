if not [ $TERM = "screen-256color" ]
	tmx 
end 
#eval (python -m virtualfish) 
#vf activate derp
function homeshick
	if test \( (count $argv) = 2 -a "$argv[1]" = "cd" \)
		cd "$HOME/.homesick/repos/$argv[2]"
	else if set -q HOMESHICK_DIR
		eval $HOMESHICK_DIR/bin/homeshick (string escape -- $argv)
	else
		eval $HOME/.homesick/repos/homeshick/bin/homeshick (string escape -- $argv)
	end
end
#bax eval (fasd --init auto)
#source /usr/share/chruby/{chruby,auto}.fish
if status is-login
	nitrogen --restore
end
