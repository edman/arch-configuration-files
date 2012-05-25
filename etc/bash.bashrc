#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '
PS2='> '
PS3='> '
PS4='+ '

case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/~}"'
                                                        
    ;;
  screen)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/~}"'
    ;;
esac

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion


# ls configuration
alias ls="ls --color=auto --human-readable"
alias ll="ls -l"
alias l="ls -l --all"
alias lt="l -t"
alias lx="l -X"

# set cp to always be verbose
alias cp="cp --verbose"

# wlan interface
alias wlan0up="ip link set wlan0 up"
alias wlan0down="ip link set wlan0 down"

# wolfienet connection
alias connect-wolfienet-open="ip link set wlan0 up && killall dhcpcd && iwconfig wlan0 essid WolfieNet-Open key off && dhcpcd wlan0"
alias connect-wolfienet-guest="ip link set wlan0 up && killall dhcpcd && iwconfig wlan0 essid WolfieNet-Guest key off && dhcpcd wlan0"


