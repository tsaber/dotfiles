if not [ $TERM = "screen-256color" ]
	tmx 
	usder
end 
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
if status is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end
#cowsay -f satanic (date +%d%a%b%y\|%R\.)
#bax eval (fasd --init auto)
#source /usr/share/chruby/{chruby,auto}.fish
if status is-login
	nitrogen --restore
end
base16-atelier-sulphurpool
sudo ryzen-stabilizator --disable-c6 >> /dev/null
