#!/usr/bin/env bash

## Copyright (C) 2020-2022 Aditya Shakya <adi1090x@gmail.com>
## Everyone is permitted to copy and distribute copies of this file under GNU-GPL3

## Script to take screenshots with maim

time=`date +%Y-%m-%d-%H-%M-%S`
geometry=`xrandr | head -n1 | cut -d',' -f2 | tr -d '[:blank:],current'`
dir="`xdg-user-dir PICTURES`/Screenshots"
file="Screenshot_${time}_${geometry}.png"

# notify and view screenshot
notify_view () {
	dunstify -u low --replace=699 -i /usr/share/archcraft/icons/dunst/picture.png "Copied to clipboard."
	viewnior ${dir}/"$file"
	if [[ -e "$dir/$file" ]]; then
		dunstify -u low --replace=699 -i /usr/share/archcraft/icons/dunst/picture.png "Screenshot Saved."
	else
		dunstify -u low --replace=699 -i /usr/share/archcraft/icons/dunst/picture.png "Screenshot Deleted."
	fi
}

# countdown
countdown () {
	for sec in `seq $1 -1 1`; do
		dunstify -t 1000 --replace=699 -i /usr/share/archcraft/icons/dunst/timer.png "Taking shot in : $sec"
		sleep 1
	done
}

# take shots
shotnow () {
	cd ${dir} && maim -u -f png | tee "$file" | xclip -selection clipboard -t image/png
	notify_view
}

shot5 () {
	countdown '5'
	sleep 1 && cd ${dir} && maim -u -f png | tee "$file" | xclip -selection clipboard -t image/png
	notify_view
}

shot10 () {
	countdown '10'
	sleep 1 && cd ${dir} && maim -u -f png | tee "$file" | xclip -selection clipboard -t image/png
	notify_view
}

shotwin () {
	cd ${dir} && maim -u -f png -i `xdotool getactivewindow` | tee "$file" | xclip -selection clipboard -t image/png
	notify_view
}

shotarea () {
	cd ${dir} && maim -u -f png -s -b 2 -c 0.35,0.55,0.85,0.25 -l | tee "$file" | xclip -selection clipboard -t image/png
	notify_view
}

if [[ ! -d "$dir" ]]; then
	mkdir -p "$dir"
fi

if [[ "$1" == "--now" ]]; then
	shotnow
elif [[ "$1" == "--in5" ]]; then
	shot5
elif [[ "$1" == "--in10" ]]; then
	shot10
elif [[ "$1" == "--win" ]]; then
	shotwin
elif [[ "$1" == "--area" ]]; then
	shotarea
else
	echo -e "Available Options : --now --in5 --in10 --win --area"
fi

exit 0
