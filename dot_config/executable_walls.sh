#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/.config/walls/"
# Use a temp file to remember the last wallpaper
STATE_FILE="/tmp/current_wall"

# Read the last used wallpaper from the state file
CURRENT_WALL=$(cat "$STATE_FILE" 2>/dev/null)

# Find a random wallpaper excluding the current one
WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

# Apply and save the state
if [ -n "$WALLPAPER" ]; then
    # v0.8.0 uses 'reload' to swap wallpapers efficiently
    echo $WALLPAPER
    hyprctl hyprpaper wallpaper "VGA-1,$WALLPAPER,cover"
    echo "$WALLPAPER" > "$STATE_FILE"
fi

