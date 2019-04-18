function sprut
	command $argv | curl -F 'sprunge=<-' http://sprunge.us
end
