#!/usr/bin/env bash
while true; do
	battery_percent=$(acpi -b | grep -P -o '[0-9]+(?=%)')
	if [ "$battery_percent" -lt 21 ]; then
		notify-send -i "$HOME/.dotfiles/icons/.config/myIcons/battery_low.png" -t 120000 " BATTERY LOW LEVEL: ${battery_percent}%" -u critical
	fi
	if [ "$battery_percent" -gt 98 ]; then
		notify-send -i "$HOME/.dotfiles/icons/.config/myIcons/battery_full.png" -t 60000 " BATTERY FULL" -u critical
	fi
	sleep 5m
done
