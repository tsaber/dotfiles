# Defined in /tmp/fish.PGqzPM/sspokia.fish @ line 2
function sspokia
	sudo arp-scan 192.168.$argv.0:255.255.255.0 2>1 >> /tmp/lebneg
sleep 9; and set -Ux pogepi (ca
t /tmp/lebneg| grep -m 1 'ac:57:75:01:c
1:0e' | cut -d"a" -f1); and echo $pogepi
end
