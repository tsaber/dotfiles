function pacman1
	expac -H M "%011m\t%-20n\t%10d" (comm -23 <(pacman -Qqen | sort) <(pacman -Qqg base base-devel | sort)) | sort -n
end
