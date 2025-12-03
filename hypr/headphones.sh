#!/usr/bin/env bash
CARD=$(pactl list cards short | grep bluez_card | cut -f1)

if [ -z "$CARD" ]; then
    notify-send "No Bluetooth audio card found"
    exit 1
fi

PROFILE=$(pactl list cards | grep -A10 "$CARD" | grep "Active Profile" | awk -F": " '{print $2}')

if [[ "$PROFILE" == *"a2dp-sink"* ]]; then
    pactl set-card-profile "$CARD" headset-head-unit
    notify-send "Switched to Headset Mode (mSBC Mic)"
else
    pactl set-card-profile "$CARD" a2dp-sink
    notify-send "Switched to High Quality Mode (AAC)"
fi