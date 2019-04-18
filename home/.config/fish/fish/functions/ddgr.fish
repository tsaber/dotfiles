# Defined in /tmp/fish.VSR1oI/ddgr.fish @ line 2
function ddgr --argument BROW
	switch $BROW
		case f
			set -l BROWSER firefox
		case c 
			set -l BROWSER chromium
		case q 
			set -l BROWSER qutebrowser
	

        end

	set param "--unsafe"
        command ddgr $param $argv
end
