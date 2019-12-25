# Defined in /tmp/fish.lOfCLW/sspokia.fish @ line 2
function sspokia
	sudo arp-scan 192.168.$argv.0/24 | grep -m 1 'ac:57:75:01:c1:0e' 
end
