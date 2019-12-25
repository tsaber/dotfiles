function rmf
	switch $argv
case "~"
echo "not home you idiot"
return 1
case "/"
echo "not all the things you idiot"
return 1
case *
echo "ok"
rm -rf $argv
end
end
