#!/usr/bin/env bash

## Copyright (C) 2020-2022 Aditya Shakya <adi1090x@gmail.com>
## Everyone is permitted to copy and distribute copies of this file under GNU-GPL3

## launch alacritty with i3wm config

CONFIG="$HOME/.config/i3/alacritty/alacritty.yml"

if [ "$1" == "-f" ]; then
	alacritty --class 'alacritty-float,alacritty-float' --config-file "$CONFIG"
elif [ "$1" == "-s" ]; then
	alacritty --class 'Fullscreen,Fullscreen' --config-file "$CONFIG" -o window.startup_mode=fullscreen window.padding.x=30 window.padding.y=30 window.opacity=0.95 font.size=14
else
	alacritty --config-file "$CONFIG"
fi
