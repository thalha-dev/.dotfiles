#!/bin/bash

# while true; do
# 	battery_percent=$(acpi -b | grep -P -o '[0-9]+(?=%)')
# 	if [ "$battery_percent" -lt 21 ]; then
# 		notify-send -i "$HOME/.dotfiles/icons/.config/myIcons/battery_low.png" -t 120000 " BATTERY LOW LEVEL: ${battery_percent}%" -u critical
# 	fi
# 	if [ "$battery_percent" -gt 98 ]; then
# 		notify-send -i "$HOME/.dotfiles/icons/.config/myIcons/battery_full.png" -t 60000 " BATTERY FULL" -u critical
# 	fi
# 	sleep 5m
# done

##################################################################################################

while true; do
	battery_percent=$(acpi -b | grep -P -o '[0-9]+(?=%)')
	if [ "$battery_percent" -lt 21 ]; then
		notify-send  -t 120000 " BATTERY LOW LEVEL: ${battery_percent}%" -u critical
	fi
	if [ "$battery_percent" -gt 90 ]; then
		notify-send  -t 60000 " BATTERY FULL" -u critical
	fi
	sleep 3m
done

##################################################################################################

# while true; do
# 	export DISPLAY=:0.0
# 	battery_level=$(acpi -b | grep -P -o '[0-9]+(?=%)')
# 	ac_adapter=$(acpi -a | cut -d' ' -f3 | cut -d- -f1)

# 	if on_ac_power; then
# 		if [ "$battery_level" -ge 95 ]; then
# 			notify-send -u critical "Please, kindly unplug your AC adapter" "Battery level: ${battery_level}%" -i battery-full-charged
# 		elif [ "$battery_level" -le 20 ]; then
# 			notify-send -u critical "Thank you!!!" "You did an excellent job, Keep it up." -i battery-caution-charging
# 			sleep 300
# 		fi

# 	fi

# 	if [ "$ac_adapter" == "off" ]; then
# 		if [ "$battery_level" -le 20 ]; then
# 			notify-send -u critical "Please, kindly plug-in your AC adapter" "Battery level: ${battery_level}%" -i battery-caution
# 		elif [ "$battery_level" == 30 ]; then
# 			notify-send -u critical "Please keep your AC adapter nearby ${battery_level}%" -i battery-caution
# 		elif [ "$battery_level" == 40 ]; then
# 			notify-send -u critical "Its ${battery_level}%" -i face-angel
# 		elif [ "$battery_level" -ge 95 ]; then
# 			notify-send -u critical "Thank you!!!" "You did an excellent job, Keep it up." -i face-angel
# 			sleep 300
# 		fi
# 	fi
# 	sleep 3

# done
