#!/bin/bash

unset brray
brray=()
while read file; do brray+=("$file"); done <<< $(find . -mindepth 1 -type d -iname ".ipynb_checkpoints" -printf "%P\n")

ui=-1; for u2 in "${brray[@]}"; do echo $((ui+=1))\). "$u2"; done
unset ui
unset u

xsel --clipboard <<< $(cat /home/zhaoging/.listDirNames.sh | grep 'do echo' | head -n1)
