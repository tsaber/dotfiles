# Defined in /tmp/fish.HeF4Rr/fish_prompt.fish @ line 2
function fish_prompt --description 'Write out the prompt'
	set -l color_cwd
    set -l suffix
    switch "$USER"
        case root toor
            if set -q fish_color_cwd_root
                set color_cwd $fish_color_cwd_root
            else
                set color_cwd $fish_color_cwd
            end
            set suffix '#'
        case '*'
            set color_cwd $fish_color_cwd
            set suffix '}->'
    end
set -l du (df / | tail -n1 | sed "s/ */ /g" | cut -d' ' -f 5 | cut -d'%' -f1)
    echo -n -s $du ' ' (set_color $color_cwd) (prompt_pwd) (set_color normal) "$suffix "
end
