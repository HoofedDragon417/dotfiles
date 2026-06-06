#!/bin/bash

layout=$(setxkbmap -query | awk '/layout/{print $2}')
current=$(xset -q | grep LED | awk '{ print $10 }')

if [ "$current" = "00000000" ]; then
    echo "${layout%%,*}"
else
    echo "${layout##*,}"
fi
