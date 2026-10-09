#!/usr/bin/env bash

source "${CONFIG_DIR:-$HOME/.config/sketchybar}/plugins/popup.sh"
# Limit top's process list; the second sample measures the current interval.
USAGE=$(top -l 2 -n 0 -s 1 | awk '/^CPU usage:/ { value = $3 + $5; found = 1 } END { if (found) printf "%.0f", value }')
[ -n "$USAGE" ] || exit 0
sketchybar --set "$NAME" label="$USAGE%" \
  --set "$NAME.details" label="CPU: $USAGE% user + system"
