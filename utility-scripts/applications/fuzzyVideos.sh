#!/bin/bash

vid=$(find ~/Videos -type f | fzf)
mpv "$vid" -quiet >/dev/null 2>&1 &
