function orphan
	sudo -u root pacman -Rs (pacman -Qdtq)
end
