#!/bin/bash

book=$(find ~/my-doc/books -type f | fzf)
zathura "${book}" >/dev/null 2>&1 &
