if status is-interactive
    # Commands to run in interactive sessions can go here
    oh-my-posh init fish --config /home/greenskull/.poshthemes/greenskull_min.omp.json | source
    # Run local apps
    set -x PATH /home/greenskull/.local/bin $PATH
    set -x PATH /home/greenskull/bin $PATH
    set -x PATH /usr/local/bin/ $PATH
    # FLUTTER
    set -x PATH /opt/flutter/bin $PATH
    set -x CHROME_EXECUTABLE /usr/bin/vivaldi
    # TERMINAL ICONS
    #alias ls=logo-ls
    # SCALE APPS
    set -x GDK_SCALE 1.25
    # HINT COLOR IN FISH
    set -g fish_color_autosuggestion "#5aa1db"
end

set fish_greeting
