# Defined in /tmp/fish.Lnetw1/catat.fish @ line 2
function catat
	if test	-e ~/git/cataclysmdda-0.C/./cataclysm
		~/git/cataclysmdda-0.C/./cataclysm-launcher 


        elif test -e ~/Downloads/cataclysmdda-0.C/./cataclysm
		~/Downloads/cataclysmdda-0.C/./cataclysm-launcher
        else
		echo "derp"
	end
end
