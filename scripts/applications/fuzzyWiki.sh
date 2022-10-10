#!/bin/bash

toPrint=$(find ~/Wiki/myWiki/ -type d -name .git -prune -o -type f  -print | fzf)

case $1 in
cat)
    cat ${toPrint}
	;;
less)
    less ${toPrint}
	;;
*)
    if [ -x "$(command -v batcat)" ]; then
      batcat ${toPrint}
    else 
      cat ${toPrint}
    fi
	;;
esac

