#!/bin/bash
killall ags
sleep 1
hyprctl dispatch exec ags
sleep 5
notify-send "ags has been restarted."