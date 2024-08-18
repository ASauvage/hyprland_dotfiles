#!/bin/bash
killall ags
sleep 1
ags &
sleep 5
notify-send "ags has been restarted."