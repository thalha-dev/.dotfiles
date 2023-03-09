#!/bin/bash

editFile=$(find ~/.dotfiles/ -type d -name .git -prune -o -type f  -print | fzf)

case $1 in
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

