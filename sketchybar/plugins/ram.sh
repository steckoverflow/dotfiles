#!/usr/bin/env bash

source "${CONFIG_DIR:-$HOME/.config/sketchybar}/plugins/popup.sh"
USAGE=$(memory_pressure | awk '/System-wide memory free percentage:/ { printf "%.0f", 100 - $5 }')
[ -n "$USAGE" ] || exit 0
sketchybar --set "$NAME" label="$USAGE%" \
  --set "$NAME.details" label="Memory: $USAGE% non-free (memory_pressure)"
