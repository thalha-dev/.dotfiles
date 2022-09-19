#!/usr/bin/env bash

killall -q polybar

# Launch bar1 and bar2
polybar --config=~/.config/polybar/config.ini main 2>&1 | tee -a /tmp/polybar1.log & disown
