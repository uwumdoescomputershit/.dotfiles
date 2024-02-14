#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

neofetch

dayTime=$(bash /home/uwum/.config/scripts/daytime.sh)
name=Elliot #Put in your name here

cowsay Good $dayTime $name



bash ~/.config/scripts/torpireminder.sh



eval "$(starship init bash)"
