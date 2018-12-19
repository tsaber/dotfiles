tmx
eval (python -m virtualfish)

if not test -e ~/.tmux/plugins/tpm
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
end


#se16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end


source ~/.config/fish/tmux.fish
source /home/zava/.homesick/repos/homeshick/homeshick.fish



if status --is-login
  bass eval (dbus-launch)
end





