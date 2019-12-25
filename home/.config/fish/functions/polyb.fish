# Defined in /tmp/fish.QLkLA0/polyb.fish @ line 2
function polyb
	killall -q polybar 
# Wait until the processes have been shut down 

while pgrep -u $UID -x polybar >/dev/null
sleep 1
end
  
# Launch bar1 and bar2 
polybar example & polybar e2
end
