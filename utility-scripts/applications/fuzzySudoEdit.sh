#!/bin/bash

filePath=$1
editFile=$(find "${filePath}" -type d -name .git -prune -o -type f  -print | fzf)

sudoedit "${editFile}"
