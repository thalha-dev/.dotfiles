#!/usr/bin/env bash


mkdir -p ~/Pictures/lock/

IMGFILE=~/Pictures/lock/temp.png

PICTURE="${IMGFILE}"
SCREENSHOT="scrot $PICTURE"

rm ${IMGFILE}
mv ~/Pictures/lock/temp*.png ${IMGFILE}

BLUR="5x4"

$SCREENSHOT
convert $PICTURE -blur $BLUR $PICTURE
i3lock -i $PICTURE
