#!/bin/bash -e

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && startx > /dev/null 2>&1