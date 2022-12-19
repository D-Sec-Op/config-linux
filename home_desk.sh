#! /bin/bash

xrandr --setprovideroutputsource 1 0
xrandr --setprovideroutputsource 2 0
xrandr --setprovideroutputsource 3 0
xrandr --setprovideroutputsource 4 0
xrandr --setprovideroutputsource 1 0
xrandr --output HDMI-1-0 --auto --right-of eDP-1
xrandr --output DP-1-1 --auto --right-of HDMI-1-0
