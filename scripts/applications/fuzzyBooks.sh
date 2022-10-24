#!/bin/bash

book=$(find ~/my-doc-backup/docs/Documents/Books -type f | fzf)
zathura "${book}" >/dev/null 2>&1 &
