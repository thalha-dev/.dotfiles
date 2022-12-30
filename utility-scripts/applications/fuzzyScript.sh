#!/bin/bash

$(du ~/applications/* | cut -f2 | fzf)
