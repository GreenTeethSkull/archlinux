if status is-interactive
    # Commands to run in interactive sessions can go here
    oh-my-posh init fish --config /home/greenskull/.poshthemes/greenskull_user.omp.json | source
    set PATH /home/greenskull/.local/bin $PATH
end
