#!/usr/bin/env bash

##########################################################################################################
#																										 
#    Copyright © 2022 To Cyb3rTh1eveZ																	 
#																										 
#     ██████╗██╗   ██╗██████╗ ██████╗ ██████╗ ████████╗██╗  ██╗ ██╗███████╗██╗   ██╗███████╗███████╗	 
#    ██╔════╝╚██╗ ██╔╝██╔══██╗╚════██╗██╔══██╗╚══██╔══╝██║  ██║███║██╔════╝██║   ██║██╔════╝╚══███╔╝     
#    ██║      ╚████╔╝ ██████╔╝ █████╔╝██████╔╝   ██║   ███████║╚██║█████╗  ██║   ██║█████╗    ███╔╝      
#    ██║       ╚██╔╝  ██╔══██╗ ╚═══██╗██╔══██╗   ██║   ██╔══██║ ██║██╔══╝  ╚██╗ ██╔╝██╔══╝   ███╔╝       
#    ╚██████╗   ██║   ██████╔╝██████╔╝██║  ██║   ██║   ██║  ██║ ██║███████╗ ╚████╔╝ ███████╗███████╗     
#     ╚═════╝   ╚═╝   ╚═════╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝ ╚═╝╚══════╝  ╚═══╝  ╚══════╝╚══════╝     
#																										 
#																										 
#																										 
#    Copyright (C) Mahmoud Mohamed (Ozil)  <https://github.com/mmsaeed509>								 
#    LICENSE © GNU-GPL3																					 
#																										 
##########################################################################################################


# SETTINGS
music_library="$HOME/Music"

main() {
    find_cover_image        >/dev/null 2>&1
    dunstify -u low --replace=69 -i "$cover_path" "$(mpc current)"
}


find_cover_image() {

    # First we check if the audio file has an embedded album art
    ext="$(mpc --format %file% current | sed 's/^.*\.//')"
    if [ "$ext" = "flac" ]; then
        # since FFMPEG cannot export embedded FLAC art we use metaflac
        metaflac --export-picture-to=/tmp/mpd_cover.jpg \
            "$(mpc --format "$music_library"/%file% current)" &&
            cover_path="/tmp/mpd_cover.jpg" && return
    else
        ffmpeg -y -i "$(mpc --format "$music_library"/%file% | head -n 1)" \
            /tmp/mpd_cover.jpg &&
            cover_path="/tmp/mpd_cover.jpg" && return
    fi

    # If no embedded art was found we look inside the music file's directory
    album="$(mpc --format %album% current)"
    file="$(mpc --format %file% current)"
    album_dir="${file%/*}"
    album_dir="$music_library/$album_dir"
    found_covers="$(find "$album_dir" -type d -exec find {} -maxdepth 1 -type f \
    -iregex ".*/.*\(${album}\|cover\|folder\|artwork\|front\).*[.]\\(jpe?g\|png\|gif\|bmp\)" \; )"
    cover_path="$(echo "$found_covers" | head -n1)"
    if [ -n "$cover_path" ]; then
        return
    fi

    # If we still failed to find a cover image, we use the fallback
    if [ -z "$cover_path" ]; then
        cover_path="$HOME/.ncmpcpp/scripts/music.jpg"
    fi
}


main
