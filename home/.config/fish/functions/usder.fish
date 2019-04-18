# Defined in /tmp/fish.49lJKy/usder.fish @ line 2
function usder
	setxkbmap us -option 'compose:menu'; and xmodmap /home/zava/.fddfk 
	echo $status
end
