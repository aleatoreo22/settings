#!/bin/bash
current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')

if [ "$current_layout" == "us" ]; then
  setxkbmap -layout br
else
  setxkbmap -layout us
fi

