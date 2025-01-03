#!/bin/bash
sleep 1

WALLPAPER_DIR="/home/anemonas/.wall-mngr/wallpapers"

while true; do
    hyprpaper &
    sleep 0.1
    RANDOM_WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)
    echo "$RANDOM_WALLPAPER"    
    hyprctl hyprpaper preload "$RANDOM_WALLPAPER"
    hyprctl hyprpaper wallpaper "eDP-1, $RANDOM_WALLPAPER"
    hyprctl hyprpaper wallpaper "HDMI-A-1, $RANDOM_WALLPAPER"
    sleep 600
    killall -q hyprpaper
done
