#!/bin/bash

# get memory info
MEMUSAGE=$(free | grep Mem | awk '{printf("%.0f%%", $3/$2 * 100)}')
 
# do the genmon
echo "$MEMUSAGE"
