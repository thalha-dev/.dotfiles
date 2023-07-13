#!/usr/bin/env bash

# battery_percent=$(acpi -b | grep -P -o '[0-9]+(?=%)')
# if [ "$battery_percent" -lt 20 ]; then
# 	notify-send -i "$HOME/.dotfiles/icons/.config/myIcons/battery_low.png" -t 120000 " BATTERY LOW LEVEL: ${battery_percent}%" -u critical
# fi
# if [ "$battery_percent" -gt 19 ]; then
# 	if [ "$battery_percent" -gt 98 ]; then
# 		notify-send -i "$HOME/.dotfiles/icons/.config/myIcons/battery_full.png" -t 60000 " BATTERY LEVEL ${battery_percent}%" -u critical
# 	else
# 		notify-send -i "$HOME/.dotfiles/icons/.config/myIcons/battery_full.png" -t 60000 " BATTERY LEVEL ${battery_percent}%" -u normal
# 	fi
# fi

###########################################################################

battery_percent=$(acpi -b | grep -P -o '[0-9]+(?=%)')
if [ "$battery_percent" -lt 20 ]; then
	notify-send -t 120000 " BATTERY LOW LEVEL: ${battery_percent}%" -u critical
fi
if [ "$battery_percent" -gt 90 ]; then
	notify-send -t 60000 " BATTERY LEVEL ${battery_percent}%" -u critical
else
	notify-send -t 60000 " BATTERY LEVEL ${battery_percent}%" -u normal
fi
