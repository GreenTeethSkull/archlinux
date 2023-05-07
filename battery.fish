#!/usr/bin/env fish
set -x DISPLAY ":1"
while true
    set -l battery_level (acpi -b | grep -P -o '[0-9]+(?=%)')
    set -l is_charging (acpi -b | grep -P -o '[a-zA-z]+(?=,)')
    if test $battery_level -ge 93 -a $is_charging = 'Charging'
        #notify-send "Battery is charge!" "Level: $battery_level%"
        zenity --warning --title "Battery" --text "Battery is charge : $battery_level %"    
    else if test $battery_level -le 21 -a $is_charging = 'Discharging'
        #notify-send "Battery is lower!" "Level: $battery_level%"
        zenity --error --title "Battery" --text "Battery is lower : $battery_level %"     
    end

    sleep 240 # seconds
end