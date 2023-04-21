#!/usr/bin/env fish

while true
    set -l battery_level (acpi -b | grep -P -o '[0-9]+(?=%)')
    if test $battery_level -ge 91 
        #notify-send "Battery is charge!" "Level: ${battery_level}%"
        zenity --warning --title "Battery" --text "Battery is charge : $battery_level %"    
    else if test $battery_level -le 21 
        #notify-send "Battery is lower!" "Level: ${battery_level}%"
        zenity --error --title "Battery" --text "Battery is lower : $battery_level %"     
    end

    sleep 240 # seconds
end