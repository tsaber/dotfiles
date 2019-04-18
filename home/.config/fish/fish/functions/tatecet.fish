# Defined in /tmp/fish.xKoHRY/tatecet.fish @ line 2
function tatecet
	if test -e ~/git/cataclysmdda-0.C*.gz; and not test -d ~/git/cataclysmdda-0.C/
		echo "nejejeje"
		cd ~/git; and tar -xzf cataclys*.gz
		sleep 0.9; and cp -r whaleys/* cataclysmdda-0.8C/data/mods
		sleep 1.5; and cp -r config catacylsmdda-0.8C
	end
end
