#!/bin/bash

# Kill any running Waybar processes
pkill waybar

# Optional: wait for processes to fully terminate
sleep 0.5

# Relaunch Waybar
waybar &
