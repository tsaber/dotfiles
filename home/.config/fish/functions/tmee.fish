function tmee
	set jhr (tmux ls|grep -vm 1 attached|cut -d: -f1)
if test -z $jhr
tmux -2
else
tmux attach -t $jhr
end
end
