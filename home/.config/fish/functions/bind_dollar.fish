# Defined in /tmp/fish.LRgBrb/bind_dollar.fish @ line 2
function bind_dollar
	switch (commandline -t) 
          case "!" 
		commandline -t "" 
		commandline -f history-token-search-backward 
          case "*" 
		commandline -i '$' 
        end 
end
