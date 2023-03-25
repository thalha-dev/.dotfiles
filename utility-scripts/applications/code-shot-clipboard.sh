#!/bin/bash

datetime=$(date +%A\_%d-%m-%Y%_I:%M\_%p)

mkdir -p ~/Pictures/code-shot/
silicon --from-clipboard -l "$1" -o ~/Pictures/code-shot/"${datetime}".png
