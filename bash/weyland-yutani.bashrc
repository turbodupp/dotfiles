# ... History config and such here


# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi
# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac
# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes
if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi
if [ "$color_prompt" = yes ]; then
    #Original PS1
    #PS1='${debian_chroot:+($debian_chroot)}\[\033[00;37m\]\u@\033[01;37m\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    # Turn the prompt symbol red if the user is root
    if [ $(id -u) -eq 0 ];
    then # you are root, make the prompt red
        #PS1="\$(date +%d.%m.%Y)[\e[01;31mR\e[00m:\e[01;34m$(pwd)\e[00m]\e[01;31m#\e[00m "
        PS1="\[\e[01;31m\]ROOT>\[\e[00m\] "    
    else
        #PS1="[\e[01;34m\u @ \h\e[00m]----[\e[01;34m$(pwd)\e[00m]\n$ "
        PS1="\[\e[01;32m\]>\[\e[00m\] "
    fi
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt
# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# ... ls config, aliases, and such here

#Don't print the big banner if we're root
if [ $(id -u) -eq 0 ];
    then # you are root, print the warning
        echo -e "\e[01;31mRoot (Mode R) privelages granted."
        echo -e "Weyland-Yutani Corp. reminds you that with great power comes great responsibility. \e[00m"
    else
        ~/weyland-yutani.sh #MODIFY THIS to wherever you put my gist at https://gist.github.com/SilverWingedSeraph/adeb3f9eff67ae07b877
fi

