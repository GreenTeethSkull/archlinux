#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(oh-my-posh init bash --config /home/greenskull/.poshthemes/greenskull_tux_min.omp.json)"

# Run local apps
export PATH="/home/greenskull/.local/bin:$PATH"
export PATH="/home/greenskull/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
# FLUTTER
export PATH="/opt/flutter/bin:$PATH"
export CHROME_EXECUTABLE="/usr/bin/brave"
# TERMINAL ICONS
alias ls=logo-ls