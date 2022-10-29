#!/bin/bash

printDir="$1"
toPrint=$(find "${printDir}" -type d -name .git -prune -o -type f  -print | fzf)

case $2 in
cat)
    cat "${toPrint}"
	;;
less)
    less "${toPrint}"
	;;
*)
    if [ -x "$(command -v batcat)" ]; then
      batcat "${toPrint}"
    else 
      cat "${toPrint}"
    fi
	;;
esac

