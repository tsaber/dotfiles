# Defined in /tmp/fish.MY52Md/stof.fish @ line 1
function stof
	st -f "$argv[1]:style=$argv[2]:antialias=true:hinting=true:hintstyle=slight:rgba=rgb"
end
