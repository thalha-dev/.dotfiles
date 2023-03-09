#!/bin/bash

filePath=$1
editFile=$(find "${filePath}" -type d -name .git -prune -o -type f  -print | fzf)

case $2 in
vim)
    vim "${editFile}"
	;;
code)
    if [ -x "$(command -v code)" ]; then
      code "${editFile}"
    else 
      nano "${editFile}"
    fi
	;;
*)
    if [ -x "$(command -v lvim)" ]; then
      lvim "${editFile}"
    else 
      vi "${editFile}"
    fi
	;;
esac
