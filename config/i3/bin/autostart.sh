#!/usr/bin/env bash

## Copyright (C) 2020-2022 Aditya Shakya <adi1090x@gmail.com>
## Everyone is permitted to copy and distribute copies of this file under GNU-GPL3
## reconfigured by Mahmoud Mohamed (Ozil)  <https://github.com/mmsaeed509>
## Autostart Programs

# set purple as the RGB color for the keyboard #

    facer_rgb.py -m 0 -z 1 -cR 175 -cB 255 -cG 0 -b 100
	facer_rgb.py -m 0 -z 2 -cR 175 -cB 255 -cG 0 -b 100
	facer_rgb.py -m 0 -z 3 -cR 175 -cB 255 -cG 0 -b 100
	facer_rgb.py -m 0 -z 4 -cR 175 -cB 255 -cG 0 -b 100
	
if [[ $(xrandr -q | grep 'HDMI-1-0 connected') ]]; then

		  # use arandr or xrandr to set monitors config
		  # in my case, i use laptop monitor (eDP1) as Primary display 
		  # and the second monitor (HDMI-1-0) as external display (extended to right)
		  # add your config to this directory  ~/.screenlayout/   ||  If it doesn't exist, create one
		  bash ~/.screenlayout/mainLeftExRight.sh
fi

# -------------------- set En & Ar for keyboard --------------------
setxkbmap -layout us,ar # change 'us,ar' for your own uses #
setxkbmap -option 'grp:alt_shift_toggle'
# -------------------- set En & Ar for keyboard --------------------

# Kill already running process
_ps=(picom dunst ksuperkey mpd xfce-polkit xfce4-power-manager)
for _prs in "${_ps[@]}"; do
	if [[ `pidof ${_prs}` ]]; then
		killall -9 ${_prs}
	fi
done

# Fix cursor
xsetroot -cursor_name left_ptr

# Polkit agent
/usr/lib/xfce-polkit/xfce-polkit &

# Enable power management
xfce4-power-manager &

# Enable Super Keys For Menu
ksuperkey -e 'Super_L=Alt_L|F1' &
ksuperkey -e 'Super_R=Alt_L|F1' &

# Restore wallpaper
hsetroot -cover ~/.config/i3/wallpapers/default.png

# Lauch notification daemon
~/.config/i3/bin/i3dunst.sh

# Lauch polybar
~/.config/i3/bin/i3bar.sh

# Lauch compositor
~/.config/i3/bin/i3comp.sh

# enable num lock
numlockx &

# Start mpd
exec mpd &
