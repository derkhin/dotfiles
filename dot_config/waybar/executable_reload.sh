#!/bin/bash

CONFIG="$HOME/.config/waybar/config"
STYLE="$HOME/.config/waybar/style.css"

while inotifywait -e close_write "$CONFIG" "$STYLE"; do
  pkill waybar
  waybar &
done
