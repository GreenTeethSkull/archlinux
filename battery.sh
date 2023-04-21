#!/bin/bash
while true
do
    battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`
    if [ $battery_level -ge 91 ]; then
       #notify-send "Battery is charge!" "Level: ${battery_level}%"
       zenity --warning --title "Battery" --text "Battery is charge : ${battery_level} %"    
    elif [ $battery_level -le 21 ]; then
       #notify-send "Battery is lower!" "Level: ${battery_level}%"
       zenity --error --title "Battery" --text "Battery is lower : ${battery_level} %"     
    fi

    sleep 240 # seconds
done