if status is-interactive
    # Commands to run in interactive sessions can go here
    oh-my-posh init fish --config /home/greenskull/.poshthemes/greenskull_min.omp.json | source
    # Run local apps
    set -x PATH /home/greenskull/.local/bin $PATH
    set -x PATH /home/greenskull/bin $PATH
    set -x PATH /usr/local/bin/ $PATH
    # FLUTTER
    set -x PATH /home/greenskull/.cache/flutter_sdk $PATH
    set -x CHROME_EXECUTABLE /usr/bin/vivaldi
    # TERMINAL ICONS
    #alias ls=logo-ls
    # SCALE APPS
    set -x GDK_SCALE 1.25
    # GTK THEME
    set -x GDK_THEME Whitesur-Dark-green
    # HINT COLOR IN FISH
    set -g fish_color_autosuggestion "#5aa1db"
    # EXPO ANDROID
    set -x ANDROID_HOME /home/greenskull/Android/Sdk
    # ANDROID EMULATOR
    set -x ANDROID_SDK_ROOT /home/greenskull/Android/Sdk   
end

set fish_greeting

