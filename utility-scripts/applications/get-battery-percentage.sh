#!/bin/bash

percentage=$(acpi -b | grep -P -o '[0-9]+(?=%)')

ChargingStatus=$(acpi | awk -F ',' '{print $1}' | awk -F ':' '{print $2}' | sed "s/[[:blank:]$SPACES]//g")

if [[ "$ChargingStatus" == "Discharging" ]]; then
    echo "${percentage}"
else
    echo "▒▒ ${percentage}"
fi
