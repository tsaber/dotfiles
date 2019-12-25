#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if test -e ~/.profile.d/; then
    for profile in ~/.profile.d/*.sh; do
        test -r "$profile" && . "$profile"
    done
    unset profile
fi
