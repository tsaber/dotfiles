# Defined in /tmp/fish.Jghcst/asciisig.fish @ line 2
function asciisig
	cowsay -f sodomized "$argv[1]"
	switch (count $argv)
		case 1
			cowsay -f turkey $argv
		case 2 
			cowsay -f turkey $argv[2]
	end
end
