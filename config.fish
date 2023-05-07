if status is-interactive
    # Commands to run in interactive sessions can go here
    oh-my-posh init fish --config /home/greenskull/.poshthemes/greenskull_user.omp.json | source
    # Run local apps
    set -x PATH /home/greenskull/.local/bin $PATH
    set -x PATH /home/greenskull/bin $PATH
    set -x PATH /usr/local/bin/ $PATH
    # FLUTTER
    set -x PATH /opt/flutter/bin $PATH
    set -x CHROME_EXECUTABLE /usr/bin/brave
end
