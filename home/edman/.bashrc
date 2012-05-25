#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '


#################################################
### My modifications

# path modifications for android tools
export PATH=$PATH:/opt/android-sdk/tools:/opt/android-sdk/platform-tools

# dysplay random phrase when logging in
command fortune
#command fortune -a | fmt -80 -s | cowsay -$(shuf -n 1 -e b d g p s t w y) -f $(shuf -n 1 -e $(cowsay -l | tail -n +2)) -n


