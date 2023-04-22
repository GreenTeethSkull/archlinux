#!/bin/bash
export DISPLAY=":1"
while true
do
    battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`
    is_charging=`acpi -b | grep -P -o '[a-zA-Z]+(?=,)'`
    if ([ $battery_level -ge 91 ] && [[ $is_charging == 'Charging' ]]); then
        #notify-send "Battery is charge!" "Level: ${battery_level}%"
        zenity --warning --title "Battery" --text "Battery is charge : ${battery_level} %"    
    elif ([ $battery_level -le 21 ] && [[ $is_charging == 'Discharging' ]]); then
        #notify-send "Battery is lower!" "Level: ${battery_level}%"
        zenity --error --title "Battery" --text "Battery is lower : ${battery_level} %"     
    fi

    sleep 240 # seconds
done