#!/usr/bin/env bash

dir="$HOME/.config/rofi/launchers"
theme='black'

## Run
rofi \
    -show drun \
    -theme ${dir}/${theme}.rasi
