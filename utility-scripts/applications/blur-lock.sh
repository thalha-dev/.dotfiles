#!/usr/bin/env bash

PICTURE=~/Pictures/lock/i3lock-temp-img.png
SCREENSHOT="scrot $PICTURE"

BLUR="5x4"

$SCREENSHOT
convert $PICTURE -blur $BLUR $PICTURE
i3lock -i $PICTURE
rm $PICTURE
