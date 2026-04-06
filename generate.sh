#!/bin/bash
if [[ -z "$1" ]]; then
  echo "Usage: generate.sh font_file_name font_size output_file_name"
  exit 0
fi

size="${2:-16}"
output="${3:-fallback.png}"
# colors sourced from https://raw.githubusercontent.com/I-am-Erk/CDDA-Tilesets/refs/heads/master/gfx/ASCII_Overmap/fallback.png
colors=("#333333" "#FFFFFF" "#969696" "#636363" "#FF0000" "#006E00" "#0000C8" "#0096B4" "#8B3A62" "#5C3317" "#FF9696" "#00FF00" "#6464FF" "#00F0FF" "#FE00FE" "#FFFF00")

for color in "${colors[@]}"; do
  args+=(\( -background black -fill "$color" -font "$1" -pointsize "$size" -gravity SouthEast -chop 1x1 label:"$(cat cp437-unicode.txt)" \))
done

convert "${args[@]}" -append "$output"