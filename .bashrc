#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(oh-my-posh init bash --config /home/greenskull/.poshthemes/greenskull_user.omp.json)"

export PATH="/home/greenskull/.local/bin:$PATH"
