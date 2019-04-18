# Defined in /tmp/fish.AgvlrS/pmi.fish @ line 2
function pmi
	pamixer --list-sinks|grep alsa_output.pci|cut -d\" -f1
end
