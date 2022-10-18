#!/bin/bash

pic="$HOME/Pictures/lock/$(ls $HOME/Pictures/lock/ | shuf -n 1)"
i3lock -i "${pic}"
